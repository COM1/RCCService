using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
 
namespace soapframework
{
    public class SOAP
    {
        private static string post(string content, string action, string service)
        {
            var header = new Dictionary<string, string>(){
                {"Accept", "text/xml"},
                {"Cache-Control", "no-cache"},
                {"Pragma", "no-cache" },
                {"SOAPAction", action }
            };
 
            content = @"<?xml version=""1.0"" encoding=""UTF - 8""?>
<SOAP-ENV:Envelope xmlns:SOAP-ENV=""http://schemas.xmlsoap.org/soap/envelope/"" xmlns:SOAP-ENC=""http://schemas.xmlsoap.org/soap/encoding/"" xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" xmlns:xsd=""http://www.w3.org/2001/XMLSchema"" xmlns:ns2=""http://roblox.com/RCCServiceSoap"" xmlns:ns1=""http://roblox.com/"" xmlns:ns3=""http://roblox.com/RCCServiceSoap12"">
    <SOAP-ENV:Body>" + content + @" </SOAP-ENV:Body>
</SOAP-ENV:Envelope>";
 
            string URI = service;
 
            using (WebClient wc = new WebClient())
            {
                foreach (KeyValuePair<string, string> entry in header)
                {
                    wc.Headers.Add(entry.Key, entry.Value);
                }
 
 
                try
                {
                    string HtmlResult = wc.UploadString("http://" + URI, content);
 
                    return HtmlResult;
                }
                catch(Exception ex)
                {
                    return ex.ToString();
                }
            }
        }
 
        public static void ExecuteScript(string service, string scriptName, string baseScript, string JobId, string args)
        {
            string contents = @"        <ns1:Execute>
            <ns1:jobID>" + JobId + @"</ns1:jobID>
            <ns1:script>
                <ns1:name>" + scriptName + @"</ns1:name>
                <ns1:script>" + baseScript + @"</ns1:script>
                <ns1:arguments>" + argumentParser(args) + @"
                </ns1:arguments>
            </ns1:script>
        </ns1:Execute>";
 
            post(contents, "Execute", service);
        }
 
        private static string argumentParser(string args)
        {
            return "Not Implemented";
        }
    }
}

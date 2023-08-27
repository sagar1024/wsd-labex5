import xmlschema
xml_file = "products.xml"
xsd_file = "product_schema.xsd"

validator = xmlschema.XMLSchema(xsd_file)
if validator.is_valid(xml_file):
    print("XML file is valid against the XSD schema.")
else:
    print("XML file is not valid against the XSD schema.")
    print(validator.validate(xml_file))
   
import lxml.etree as ET

# Applying XSLT transformation
xslt = ET.parse("transform.xsl")
transform = ET.XSLT(xslt)
transformed_html = transform(ET.parse("products.xml"))

# Saving transformed HTML to a file
with open("output.html", "wb") as f:
    f.write(ET.tostring(transformed_html, encoding="utf-8"))


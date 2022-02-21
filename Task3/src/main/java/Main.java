import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;

public class Main {
    static String dir = System.getProperty("user.dir") + "/Task3/src/main/resources/";

    public static void main(String[] args) {
        System.out.println(dir);
        Source xmlInput =
                new StreamSource(new File(dir + "input.xml"));
        Source xsl =
                new StreamSource(new File(dir + "transformer.xsl"));
        Result xmlOutput =
                new StreamResult(new File(dir + "output.html"));

        try {
            Transformer transformer =
                    TransformerFactory.newInstance().
                            newTransformer(xsl);
            transformer.transform(xmlInput, xmlOutput);
        } catch (TransformerException e) {
            System.out.println("Tranform has failure");
        }
    }
}

package yads;

import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class c96 implements yl6 {
    public final zl6 a;
    public final jq3 b;
    public final b96 c;
    public final x06 d;

    public c96() {
        zl6 zl6Var = new zl6();
        jq3 jq3Var = new jq3();
        b96 b96Var = new b96();
        x06 x06Var = new x06();
        this.a = zl6Var;
        this.b = jq3Var;
        this.c = b96Var;
        this.d = x06Var;
    }

    @Override // yads.yl6
    public final Object a(XmlPullParser xmlPullParser, yo yoVar) throws XmlPullParserException, IOException {
        this.a.getClass();
        xmlPullParser.require(2, null, "Verification");
        this.a.getClass();
        String attributeValue = xmlPullParser.getAttributeValue(null, "vendor");
        HashMap map = new HashMap();
        iq3 iq3Var = null;
        String strA = null;
        while (true) {
            this.a.getClass();
            if (xmlPullParser.next() == 3) {
                break;
            }
            this.a.getClass();
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if ("JavaScriptResource".equals(name)) {
                    zl6 zl6Var = this.b.a;
                    xmlPullParser.require(2, null, "JavaScriptResource");
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "apiFramework");
                    String attributeValue3 = xmlPullParser.getAttributeValue(null, "browserOptional");
                    Boolean boolValueOf = attributeValue3 != null ? Boolean.valueOf(Boolean.parseBoolean(attributeValue3)) : null;
                    String strA2 = zl6.a(xmlPullParser);
                    iq3Var = (attributeValue2 == null || attributeValue2.length() == 0 || boolValueOf == null || strA2.length() <= 0) ? null : new iq3(attributeValue2, strA2, boolValueOf.booleanValue());
                } else if ("VerificationParameters".equals(name)) {
                    zl6 zl6Var2 = this.c.a;
                    xmlPullParser.require(2, null, "VerificationParameters");
                    strA = zl6.a(xmlPullParser);
                    if (strA.length() == 0) {
                        strA = null;
                    }
                } else if ("TrackingEvents".equals(name)) {
                    map = this.d.a(xmlPullParser);
                } else {
                    this.a.getClass();
                    zl6.b(xmlPullParser);
                }
            }
        }
        if (attributeValue == null || attributeValue.length() == 0) {
            return null;
        }
        return new y86(attributeValue, iq3Var, strA, map);
    }
}

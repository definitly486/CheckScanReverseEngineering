package yads;

import android.content.Context;
import android.util.Xml;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class w86 {
    public final zl6 a;
    public final u76 b;

    public w86(Context context, q84 q84Var) {
        zl6 zl6Var = new zl6();
        u76 u76Var = new u76(context, q84Var);
        this.a = zl6Var;
        this.b = u76Var;
    }

    public final q76 a(String str, yo yoVar) throws XmlPullParserException, IOException {
        t96 t96VarA;
        int i;
        XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
        xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", false);
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.nextTag();
        this.a.getClass();
        xmlPullParserNewPullParser.require(2, null, "VAST");
        u76 u76Var = this.b;
        u76Var.a.getClass();
        String attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "version");
        ArrayList arrayList = new ArrayList();
        while (true) {
            u76Var.a.getClass();
            int i2 = 3;
            if (xmlPullParserNewPullParser.next() == 3) {
                break;
            }
            u76Var.a.getClass();
            if (xmlPullParserNewPullParser.getEventType() == 2) {
                if ("Ad".equals(xmlPullParserNewPullParser.getName())) {
                    va6 va6Var = u76Var.b;
                    zl6 zl6Var = va6Var.e.a;
                    xmlPullParserNewPullParser.require(2, null, "Ad");
                    String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(null, TtmlNode.ATTR_ID);
                    if (attributeValue2 == null || attributeValue2.length() == 0) {
                        attributeValue2 = null;
                    }
                    zl6 zl6Var2 = va6Var.d.a;
                    xmlPullParserNewPullParser.require(2, null, "Ad");
                    Integer numB = tc6.b(xmlPullParserNewPullParser.getAttributeValue(null, "sequence"));
                    if (numB != null && numB.intValue() < 0) {
                        numB = null;
                    }
                    va6Var.a.getClass();
                    xmlPullParserNewPullParser.require(2, null, "Ad");
                    while (true) {
                        t96VarA = null;
                        while (true) {
                            va6Var.a.getClass();
                            if (xmlPullParserNewPullParser.next() == i2) {
                                break;
                            }
                            va6Var.a.getClass();
                            if (xmlPullParserNewPullParser.getEventType() == 2) {
                                String name = xmlPullParserNewPullParser.getName();
                                if ("InLine".equals(name)) {
                                    s96 s96Var = new s96(va6Var.f, false);
                                    s96Var.k = attributeValue2;
                                    s96Var.j = numB;
                                    ef3 ef3Var = va6Var.b;
                                    zl6 zl6Var3 = ef3Var.b;
                                    xmlPullParserNewPullParser.require(2, null, "InLine");
                                    while (xmlPullParserNewPullParser.next() != i2) {
                                        if (xmlPullParserNewPullParser.getEventType() == 2) {
                                            ef3Var.a.a(xmlPullParserNewPullParser, s96Var, yoVar);
                                        }
                                    }
                                    t96VarA = s96Var.a();
                                    if (t96VarA.b.isEmpty()) {
                                    }
                                } else if ("Wrapper".equals(name)) {
                                    s96 s96Var2 = new s96(va6Var.f, true);
                                    s96Var2.k = attributeValue2;
                                    s96Var2.j = numB;
                                    ul6 ul6Var = va6Var.c;
                                    ul6Var.a.getClass();
                                    xmlPullParserNewPullParser.require(2, null, "Wrapper");
                                    ul6Var.c.getClass();
                                    s96Var2.c = new rl6(sl6.a(xmlPullParserNewPullParser, "allowMultipleAds", false), sl6.a(xmlPullParserNewPullParser, "followAdditionalWrappers", true));
                                    while (true) {
                                        ul6Var.a.getClass();
                                        i = 3;
                                        if (xmlPullParserNewPullParser.next() == 3) {
                                            break;
                                        }
                                        ul6Var.a.getClass();
                                        if (xmlPullParserNewPullParser.getEventType() == 2) {
                                            if ("VASTAdTagURI".equals(xmlPullParserNewPullParser.getName())) {
                                                ul6Var.a.getClass();
                                                s96Var2.h = zl6.a(xmlPullParserNewPullParser);
                                            } else {
                                                ul6Var.b.a(xmlPullParserNewPullParser, s96Var2, yoVar);
                                            }
                                        }
                                    }
                                    t96VarA = s96Var2.a();
                                } else {
                                    i = i2;
                                    va6Var.a.getClass();
                                    zl6.b(xmlPullParserNewPullParser);
                                }
                            } else {
                                i = i2;
                            }
                            i2 = i;
                        }
                    }
                    if (t96VarA != null) {
                        arrayList.add(t96VarA);
                    }
                } else {
                    u76Var.a.getClass();
                    zl6.b(xmlPullParserNewPullParser);
                }
            }
        }
        if (attributeValue == null || attributeValue.length() == 0) {
            return null;
        }
        return new q76(attributeValue, arrayList);
    }
}

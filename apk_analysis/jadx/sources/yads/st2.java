package yads;

import defpackage.qa8;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class st2 implements yl6 {
    @Override // yads.yl6
    public final Object a(XmlPullParser xmlPullParser, yo yoVar) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "FalseClick");
        String attributeValue = xmlPullParser.getAttributeValue(null, "interval");
        Long lQ = attributeValue != null ? qa8.q(attributeValue) : null;
        String strA = zl6.a(xmlPullParser);
        if (strA.length() <= 0 || lQ == null) {
            return null;
        }
        return new mt2(strA, lQ.longValue());
    }
}

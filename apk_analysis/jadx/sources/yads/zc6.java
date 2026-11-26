package yads;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class zc6 implements yl6 {
    public final yc6 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String str = null;
        xmlPullParser.require(2, null, "VideoClicks");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if ("ClickThrough".equals(name)) {
                    String strA = zl6.a(xmlPullParser);
                    if (strA.length() > 0) {
                        str = strA;
                    }
                } else if ("ClickTracking".equals(name)) {
                    String strA2 = zl6.a(xmlPullParser);
                    if (strA2.length() > 0) {
                        arrayList.add(strA2);
                    }
                } else {
                    zl6.b(xmlPullParser);
                }
            }
        }
        return new yc6(str, arrayList);
    }

    @Override // yads.yl6
    public final /* bridge */ /* synthetic */ Object a(XmlPullParser xmlPullParser, yo yoVar) {
        return a(xmlPullParser);
    }
}

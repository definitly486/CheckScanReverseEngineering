package yads;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class kh6 implements yl6 {
    public final jh6 a(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "ViewableImpression");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Viewable".equals(xmlPullParser.getName())) {
                    arrayList.add(zl6.a(xmlPullParser));
                } else {
                    zl6.b(xmlPullParser);
                }
            }
        }
        return new jh6(arrayList);
    }

    @Override // yads.yl6
    public final /* bridge */ /* synthetic */ Object a(XmlPullParser xmlPullParser, yo yoVar) {
        return a(xmlPullParser);
    }
}

package yads;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class r90 implements yl6 {
    public final st2 a;

    public r90(st2 st2Var) {
        this.a = st2Var;
    }

    @Override // yads.yl6
    public final Object a(XmlPullParser xmlPullParser, yo yoVar) throws XmlPullParserException, IOException {
        Object objA = null;
        xmlPullParser.require(2, null, "CreativeExtension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                objA = this.a.a(xmlPullParser, yoVar);
            }
        }
        return objA;
    }
}

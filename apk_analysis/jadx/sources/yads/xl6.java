package yads;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class xl6 implements yl6 {
    public final yl6 a;
    public final String b;
    public final String c;

    public xl6(yl6 yl6Var, String str, String str2) {
        this.a = yl6Var;
        this.b = str;
        this.c = str2;
    }

    @Override // yads.yl6
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ArrayList a(XmlPullParser xmlPullParser, yo yoVar) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        xmlPullParser.require(2, null, this.b);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (defpackage.aa4.e(this.c, xmlPullParser.getName())) {
                    Object objA = this.a.a(xmlPullParser, yoVar);
                    if (objA != null) {
                        arrayList.add(objA);
                    }
                } else {
                    zl6.b(xmlPullParser);
                }
            }
        }
        return arrayList;
    }
}

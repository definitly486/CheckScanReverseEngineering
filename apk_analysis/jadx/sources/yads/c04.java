package yads;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class c04 implements yl6 {
    public final zl6 a;
    public final on3 b;
    public final b04 c;

    public c04() {
        zl6 zl6Var = new zl6();
        on3 on3Var = new on3();
        b04 b04Var = new b04();
        this.a = zl6Var;
        this.b = on3Var;
        this.c = b04Var;
    }

    @Override // yads.yl6
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ArrayList a(XmlPullParser xmlPullParser, yo yoVar) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        this.a.getClass();
        xmlPullParser.require(2, null, "MediaFiles");
        while (true) {
            this.a.getClass();
            if (xmlPullParser.next() == 3) {
                return arrayList;
            }
            this.a.getClass();
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (defpackage.aa4.e(name, "MediaFile")) {
                    arrayList.add(this.c.a(xmlPullParser));
                } else if (defpackage.aa4.e(name, "InteractiveCreativeFile")) {
                    nn3 nn3VarA = this.b.a(xmlPullParser);
                    if (nn3VarA != null) {
                        arrayList.add(nn3VarA);
                    }
                } else {
                    this.a.getClass();
                    zl6.b(xmlPullParser);
                }
            }
        }
    }
}

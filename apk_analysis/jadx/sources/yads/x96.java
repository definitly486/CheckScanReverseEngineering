package yads;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public final class x96 {
    public final zl6 a;
    public final xl6 b;
    public final xl6 c;
    public final kh6 d;
    public final ca6 e;

    public x96(Context context, q84 q84Var) {
        zl6 zl6Var = new zl6();
        xl6 xl6Var = new xl6(new x90(context, q84Var), "Creatives", "Creative");
        xl6 xl6Var2 = new xl6(new c96(), "AdVerifications", "Verification");
        kh6 kh6Var = new kh6();
        ca6 ca6Var = new ca6();
        this.a = zl6Var;
        this.b = xl6Var;
        this.c = xl6Var2;
        this.d = kh6Var;
        this.e = ca6Var;
    }

    public final void a(XmlPullParser xmlPullParser, s96 s96Var, yo yoVar) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if ("Impression".equals(name)) {
            this.a.getClass();
            String strA = zl6.a(xmlPullParser);
            LinkedHashMap linkedHashMap = s96Var.n;
            Object arrayList = linkedHashMap.get("impression");
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put("impression", arrayList);
            }
            ((List) arrayList).add(strA);
            return;
        }
        if ("ViewableImpression".equals(name)) {
            s96Var.i = this.d.a(xmlPullParser);
            return;
        }
        if ("Error".equals(name)) {
            this.a.getClass();
            String strA2 = zl6.a(xmlPullParser);
            LinkedHashMap linkedHashMap2 = s96Var.n;
            Object arrayList2 = linkedHashMap2.get("error");
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap2.put("error", arrayList2);
            }
            ((List) arrayList2).add(strA2);
            return;
        }
        if ("Survey".equals(name)) {
            this.a.getClass();
            s96Var.g = zl6.a(xmlPullParser);
            return;
        }
        if ("Description".equals(name)) {
            this.a.getClass();
            s96Var.f = zl6.a(xmlPullParser);
            return;
        }
        if ("AdTitle".equals(name)) {
            this.a.getClass();
            s96Var.e = zl6.a(xmlPullParser);
            return;
        }
        if ("AdSystem".equals(name)) {
            this.a.getClass();
            s96Var.d = zl6.a(xmlPullParser);
            return;
        }
        if ("Creatives".equals(name)) {
            s96Var.l.addAll(this.b.a(xmlPullParser, yoVar));
            return;
        }
        if ("AdVerifications".equals(name)) {
            s96Var.m.addAll(this.c.a(xmlPullParser, yoVar));
            return;
        }
        if (!"Extensions".equals(name)) {
            this.a.getClass();
            zl6.b(xmlPullParser);
            return;
        }
        ca6 ca6Var = this.e;
        ca6Var.a.getClass();
        xmlPullParser.require(2, null, "Extensions");
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        while (true) {
            ca6Var.a.getClass();
            if (xmlPullParser.next() == 3) {
                s96Var.o = new ba6(defpackage.qn1.t0(arrayList4), defpackage.qn1.t0(arrayList3));
                return;
            }
            ca6Var.a.getClass();
            if (xmlPullParser.getEventType() == 2) {
                if ("Extension".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                    if (ca6.e.contains(attributeValue)) {
                        qs2 qs2VarA = ca6Var.b.a(xmlPullParser);
                        if (qs2VarA != null) {
                            arrayList4.add(qs2VarA);
                        }
                    } else if (defpackage.aa4.e(ca6.d, attributeValue)) {
                        arrayList3.addAll(ca6Var.c.a(xmlPullParser, yoVar));
                    } else {
                        ca6Var.a.getClass();
                        zl6.b(xmlPullParser);
                    }
                } else {
                    ca6Var.a.getClass();
                    zl6.b(xmlPullParser);
                }
            }
        }
    }
}

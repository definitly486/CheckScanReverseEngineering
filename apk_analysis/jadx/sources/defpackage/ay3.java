package defpackage;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import org.jsoup.nodes.f;
import org.jsoup.nodes.h;

/* JADX INFO: loaded from: classes5.dex */
public final class ay3 implements i02<b57, String> {
    public static final fh8 a = nm4.b(a.f);

    public static final class a extends gh4 implements ll3<zx3> {
        public static final a f = new a(0);

        @Override // defpackage.ll3
        public final zx3 invoke() {
            return new zx3();
        }
    }

    @Override // defpackage.i02
    public final String convert(b57 b57Var) throws IOException {
        b57 b57Var2 = b57Var;
        b57Var2.getClass();
        String strV = b57Var2.v();
        by3 by3Var = new by3();
        StringReader stringReader = new StringReader(strV);
        w36 w36Var = new w36(by3Var);
        f fVar = new f();
        by3Var.d = fVar;
        fVar.l = w36Var;
        by3Var.a = w36Var;
        by3Var.h = w36Var.c;
        ea1 ea1Var = new ea1(stringReader);
        by3Var.b = ea1Var;
        ea1Var.k = null;
        by3Var.c = new jx8(by3Var);
        by3Var.e = new ArrayList<>(32);
        by3Var.i = w36Var.e();
        gx8.g gVar = new gx8.g(by3Var);
        by3Var.j = gVar;
        by3Var.g = gVar;
        by3Var.f = "";
        by3Var.l = cy3.Initial;
        by3Var.m = null;
        by3Var.n = false;
        by3Var.o = null;
        by3Var.p = null;
        by3Var.q = new ArrayList<>();
        by3Var.r = new ArrayList<>();
        by3Var.s = new ArrayList();
        by3Var.t = new gx8.f(by3Var);
        by3Var.u = true;
        by3Var.v = false;
        while (true) {
            if (by3Var.g.a == gx8.i.EOF) {
                ArrayList<h> arrayList = by3Var.e;
                if (arrayList == null) {
                    break;
                }
                if (arrayList.isEmpty()) {
                    by3Var.e = null;
                } else {
                    by3Var.d();
                }
            } else {
                jx8 jx8Var = by3Var.c;
                gx8.b bVar = jx8Var.k;
                while (!jx8Var.e) {
                    jx8Var.c.f(jx8Var, jx8Var.a);
                }
                boolean zC = bVar.d.c();
                gx8 gx8Var = bVar;
                if (!zC) {
                    jx8Var.e = false;
                    gx8Var = jx8Var.d;
                }
                by3Var.g = gx8Var;
                by3Var.e(gx8Var);
                gx8Var.f();
            }
        }
        ea1 ea1Var2 = by3Var.b;
        if (ea1Var2 != null) {
            ea1Var2.close();
            by3Var.b = null;
            by3Var.c = null;
            by3Var.e = null;
        }
        String strX = by3Var.d.J().x();
        strX.getClass();
        return strX;
    }
}

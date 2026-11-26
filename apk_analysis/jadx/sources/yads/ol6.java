package yads;

import android.content.Context;
import android.net.Uri;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ol6 {
    public final e4 a;
    public final bf5 b;
    public final j86 c;
    public final ac6 d;
    public final t5 e;
    public final Context f;
    public int g;

    public ol6(Context context, e4 e4Var, t5 t5Var, bf5 bf5Var, j86 j86Var, ac6 ac6Var) {
        this.a = e4Var;
        this.b = bf5Var;
        this.c = j86Var;
        this.d = ac6Var;
        this.e = t5Var;
        this.f = context.getApplicationContext();
    }

    public final void a(Context context, List list, mc6 mc6Var, Object obj) {
        int i = this.g + 1;
        this.g = i;
        if (i > 5) {
            mc6Var.a();
            return;
        }
        ql6 ql6Var = new ql6(this.f, this.a, this.e, this.b, this.c, this.d);
        if (list.isEmpty()) {
            mc6Var.onSuccess(ql6Var.c);
            return;
        }
        ql6Var.d = mc6Var;
        ql6Var.a.a(s5.WRAPPERS_LOADING, list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            t96 t96Var = (t96) it.next();
            ql6Var.e++;
            ll6 ll6Var = ql6Var.b;
            pl6 pl6Var = new pl6(ql6Var, list);
            ll6Var.getClass();
            ml6 ml6Var = new ml6(context, t96Var, pl6Var);
            pa6 pa6Var = ll6Var.e;
            bf5 bf5Var = ll6Var.b;
            e4 e4Var = ll6Var.a;
            j86 j86Var = ll6Var.c;
            ac6 ac6Var = ll6Var.d;
            pa6Var.getClass();
            r86 r86Var = new r86();
            String strA = t96Var.i;
            if (strA == null) {
                strA = "";
            }
            Uri uri = Uri.parse(strA);
            if (defpackage.qn1.M((List) ha6.a.getValue(), uri.getHost())) {
                strA = r86Var.a(context, uri, e4Var, j86Var);
            }
            vl6 vl6Var = new vl6(ac6Var);
            qi6 qi6Var = new qi6(ml6Var);
            Context context2 = ((do6) bf5Var).a;
            v86 v86Var = new v86(context, e4Var, mw.a(context2, context2), strA, qi6Var, t96Var, vl6Var);
            v86Var.q = obj;
            pa6Var.a.a(v86Var);
        }
    }
}

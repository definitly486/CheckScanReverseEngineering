package yads;

import android.content.Context;
import defpackage.ta8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wu3 {
    public final zf a;
    public final uf5 b;
    public final a74 c;
    public final v50 d;
    public final hd0 e;
    public final uv3 f;

    public wu3(zf zfVar, uf5 uf5Var, a74 a74Var, v50 v50Var, hd0 hd0Var, uv3 uv3Var) {
        this.a = zfVar;
        this.b = uf5Var;
        this.c = a74Var;
        this.d = v50Var;
        this.e = hd0Var;
        this.f = uv3Var;
    }

    public final vf0 a() {
        ng0 ng0Var;
        String strD;
        String strC;
        wf0 wf0Var;
        we0 we0VarA = this.a.a();
        uf5 uf5Var = this.b;
        q94 q94Var = uf5Var.b;
        Context context = uf5Var.a;
        q94Var.getClass();
        p94 p94VarA = q94.a(context);
        boolean z = false;
        if (defpackage.aa4.e(p94VarA, n94.a)) {
            ng0Var = new ng0(defpackage.kx2.b, true);
        } else {
            if (!(p94VarA instanceof o94)) {
                defpackage.me0.e();
                return null;
            }
            List list = ((o94) p94VarA).a;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((vm3) it.next()).getMessage());
            }
            ng0Var = new ng0(arrayList, false);
        }
        a74 a74Var = this.c;
        a74Var.getClass();
        ArrayList arrayListA = a74Var.a.a(u54.a());
        v50 v50Var = this.d;
        boolean zB = v50Var.a.b();
        Boolean boolC = v50Var.a.c();
        Boolean boolE = v50Var.a.e();
        String strB = v50Var.b.b();
        if ((strB != null && !ta8.M(strB)) || (((strD = v50Var.b.d()) != null && !ta8.M(strD)) || ((strC = v50Var.b.c()) != null && !ta8.M(strC)))) {
            z = true;
        }
        df0 df0Var = new df0(zB, boolC, boolE, z);
        of0 of0Var = new of0(this.e.a.d());
        uv3 uv3Var = this.f;
        uv3Var.getClass();
        synchronized (uv3.c) {
            wf0Var = u94.a.a() ? new wf0(uv3Var.a.b(), uv3Var.b.b()) : null;
        }
        return new vf0(we0VarA, ng0Var, arrayListA, df0Var, of0Var, wf0Var);
    }
}

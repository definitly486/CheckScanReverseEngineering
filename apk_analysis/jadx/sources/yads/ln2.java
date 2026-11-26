package yads;

import android.content.Context;
import defpackage.r57;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ln2 {
    public final e4 a;
    public final oa b;
    public final fz4 c;
    public final defpackage.xb4 d;

    public ln2(e4 e4Var, bf5 bf5Var, dt dtVar) {
        oa oaVar = new oa(dtVar);
        fz4 fz4Var = new fz4(new l34(e4Var, bf5Var, null), new n00(e4Var, bf5Var));
        defpackage.xb4 xb4Var = zq3.a;
        this.a = e4Var;
        this.b = oaVar;
        this.c = fz4Var;
        this.d = xb4Var;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0075  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Context context, defpackage.f02 f02Var) throws Throwable {
        kn2 kn2Var;
        i74 i74Var;
        List list;
        Object next;
        if (f02Var instanceof kn2) {
            kn2Var = (kn2) f02Var;
            int i = kn2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                kn2Var.d = i - Integer.MIN_VALUE;
            } else {
                kn2Var = new kn2(this, f02Var);
            }
        } else {
            kn2Var = new kn2(this, f02Var);
        }
        Object objD = kn2Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = kn2Var.d;
        if (i2 == 0) {
            r57.b(objD);
            String str = this.a.c.a;
            o74 o74Var = this.b.a.c;
            if (o74Var == null || (list = o74Var.c) == null) {
                i74Var = null;
            } else {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!defpackage.aa4.e(((h74) next).b, str));
                h74 h74Var = (h74) next;
                if (h74Var == null) {
                    i74Var = null;
                } else {
                    i74Var = new i74(h74Var.b, h74Var.c, o74Var.b);
                }
            }
            if (i74Var == null || str == null) {
                return null;
            }
            e4 e4Var = this.a;
            n70 n70Var = e4Var.a;
            sl5 sl5Var = e4Var.d.a;
            List list2 = i74Var.b;
            long j = i74Var.c;
            fz4 fz4Var = this.c;
            kn2Var.d = 1;
            fz4Var.getClass();
            defpackage.oi2 oi2Var = defpackage.qo2.a;
            objD = defpackage.av0.d(defpackage.uy4.a.k0(), new bz4(j, context, list2, null, n70Var, fz4Var, sl5Var), kn2Var);
            if (objD == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objD);
        }
        defpackage.xb4 xb4Var = this.d;
        xb4Var.getClass();
        return xb4Var.b(ly4.Companion.serializer(), (ly4) objD);
    }
}

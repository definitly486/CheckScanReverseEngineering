package yads;

import defpackage.j59;
import defpackage.nl3;
import defpackage.r07;
import yads.j36;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j36 {
    public final bo2 a;

    public j36(bo2 bo2Var) {
        this.a = bo2Var;
    }

    public abstract String a(Object obj);

    public final tp0 a(final tt ttVar, final String str, i36 i36Var) {
        final vq0 vq0Var = ttVar.a;
        db1 db1Var = vq0Var.Q;
        if (db1Var == null) {
            return tp0.a;
        }
        final r07 r07Var = new r07();
        qb1 qb1Var = vq0Var.O;
        z66 z66VarB = w56.b(ttVar.b);
        if (z66VarB == null) {
            return tp0.a;
        }
        i36Var.a(new nl3() { // from class: kz9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return j36.a(r07Var, vq0Var, str, this, ttVar, obj);
            }
        });
        return z66VarB.a(str, this.a.a(db1Var, qb1Var), true, new defpackage.yy2(1, r07Var, i36Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(r07 r07Var, vq0 vq0Var, String str, j36 j36Var, tt ttVar, Object obj) {
        if (defpackage.aa4.e(r07Var.b, obj)) {
            return j59.a;
        }
        r07Var.b = obj;
        l76.a(vq0Var, str, j36Var.a(obj), ttVar.b);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 a(r07 r07Var, i36 i36Var, u66 u66Var) {
        Object objB = u66Var.b();
        T t = objB;
        if (objB == null) {
            t = 0;
        }
        if (defpackage.aa4.e(r07Var.b, t)) {
            return j59.a;
        }
        r07Var.b = t;
        i36Var.a(t);
        return j59.a;
    }
}

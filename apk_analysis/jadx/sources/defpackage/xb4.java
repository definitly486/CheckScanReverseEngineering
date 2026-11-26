package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class xb4 {
    public static final a d = new a(new fc4(false, true, "    ", false, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, true, yk1.POLYMORPHIC, true), nq7.a);
    public final fc4 a;
    public final jq7 b;
    public final wl2 c = new wl2();

    public static final class a extends xb4 {
    }

    public xb4(fc4 fc4Var, jq7 jq7Var) {
        this.a = fc4Var;
        this.b = jq7Var;
    }

    public final <T> T a(xl2<? extends T> xl2Var, String str) {
        xl2Var.getClass();
        str.getClass();
        w98 w98VarB = yp2.b(this, str);
        T t = (T) new n98(this, ml9.OBJ, w98VarB, xl2Var.getDescriptor(), null).decodeSerializableValue(xl2Var);
        if (w98VarB.e() == 10) {
            return t;
        }
        w98.l(w98VarB, "Expected EOF after parsing, but had " + w98VarB.f.charAt(w98VarB.b - 1) + " instead", 0, null, 6);
        throw null;
    }

    public final <T> String b(xp7<? super T> xp7Var, T t) {
        char[] cArr;
        xp7Var.getClass();
        yd4 yd4Var = new yd4();
        v91 v91Var = v91.c;
        synchronized (v91Var) {
            fr frVar = v91Var.a;
            cArr = null;
            char[] cArr2 = (char[]) (frVar.isEmpty() ? null : frVar.removeLast());
            if (cArr2 != null) {
                v91Var.b -= cArr2.length;
                cArr = cArr2;
            }
        }
        if (cArr == null) {
            cArr = new char[128];
        }
        yd4Var.a = cArr;
        try {
            ml9 ml9Var = ml9.OBJ;
            wc4[] wc4VarArr = new wc4[ml9.a().size()];
            ml9Var.getClass();
            new o98(new au1(yd4Var), this, ml9Var, wc4VarArr).encodeSerializableValue(xp7Var, t);
            return yd4Var.toString();
        } finally {
            yd4Var.b();
        }
    }
}

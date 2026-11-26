package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes5.dex */
public final class r76 {

    @bq7("confirmType")
    private final cw1 a;

    @bq7("objType")
    private final qc9 b;

    @bq7(TypedValues.AttributesType.S_TARGET)
    private final String c;

    public r76(cw1 cw1Var, qc9 qc9Var, String str) {
        cw1Var.getClass();
        qc9Var.getClass();
        str.getClass();
        this.a = cw1Var;
        this.b = qc9Var;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r76)) {
            return false;
        }
        r76 r76Var = (r76) obj;
        return this.a == r76Var.a && this.b == r76Var.b && aa4.e(this.c, r76Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        cw1 cw1Var = this.a;
        qc9 qc9Var = this.b;
        String str = this.c;
        StringBuilder sb = new StringBuilder("PhoneRequest(confirmType=");
        sb.append(cw1Var);
        sb.append(", objType=");
        sb.append(qc9Var);
        sb.append(", target=");
        return me0.d(sb, str, ")");
    }
}

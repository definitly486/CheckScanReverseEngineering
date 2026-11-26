package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class fe8 {

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final ge8 a;

    @bq7("value")
    private final String b;

    public fe8(ge8 ge8Var, String str) {
        this.a = ge8Var;
        this.b = str;
    }

    public final ge8 a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fe8)) {
            return false;
        }
        fe8 fe8Var = (fe8) obj;
        return this.a == fe8Var.a && aa4.e(this.b, fe8Var.b);
    }

    public final int hashCode() {
        ge8 ge8Var = this.a;
        int iHashCode = (ge8Var == null ? 0 : ge8Var.hashCode()) * 31;
        String str = this.b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "SupportFaqBlockResponse(type=" + this.a + ", value=" + this.b + ")";
    }
}

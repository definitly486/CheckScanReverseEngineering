package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class e54 {

    @bq7("value")
    private final String a;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final c42 b;

    public e54(String str, c42 c42Var) {
        str.getClass();
        this.a = str;
        this.b = c42Var;
    }

    public final c42 a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e54)) {
            return false;
        }
        e54 e54Var = (e54) obj;
        return aa4.e(this.a, e54Var.a) && this.b == e54Var.b;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        c42 c42Var = this.b;
        return iHashCode + (c42Var == null ? 0 : c42Var.hashCode());
    }

    public final String toString() {
        return "InfoResponse(value=" + this.a + ", type=" + this.b + ")";
    }
}

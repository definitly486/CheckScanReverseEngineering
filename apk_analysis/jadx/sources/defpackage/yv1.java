package defpackage;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class yv1 {

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final an1 a;

    @bq7(TypedValues.AttributesType.S_TARGET)
    private final String b;

    @bq7("codeLength")
    private final int c;

    public yv1(an1 an1Var, String str, int i) {
        an1Var.getClass();
        str.getClass();
        this.a = an1Var;
        this.b = str;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yv1)) {
            return false;
        }
        yv1 yv1Var = (yv1) obj;
        return this.a == yv1Var.a && aa4.e(this.b, yv1Var.b) && this.c == yv1Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        an1 an1Var = this.a;
        String str = this.b;
        int i = this.c;
        StringBuilder sb = new StringBuilder("ConfirmDetailsResponse(type=");
        sb.append(an1Var);
        sb.append(", target=");
        sb.append(str);
        sb.append(", codeLength=");
        return l2.e(sb, ")", i);
    }
}

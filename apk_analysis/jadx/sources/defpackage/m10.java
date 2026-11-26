package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class m10 {

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final l10 a;

    public m10(l10 l10Var) {
        l10Var.getClass();
        this.a = l10Var;
    }

    public final l10 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof m10) && this.a == ((m10) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "BalanceBlockTypeResponse(type=" + this.a + ")";
    }
}

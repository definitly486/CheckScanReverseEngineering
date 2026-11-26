package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class df0 {
    public static final cf0 Companion = new cf0();
    public final boolean a;
    public final Boolean b;
    public final Boolean c;
    public final boolean d;

    public df0(int i, boolean z, Boolean bool, Boolean bool2, boolean z2) {
        if (15 != (i & 15)) {
            defpackage.r96.f(bf0.b, i, 15);
            throw null;
        }
        this.a = z;
        this.b = bool;
        this.c = bool2;
        this.d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof df0)) {
            return false;
        }
        df0 df0Var = (df0) obj;
        return this.a == df0Var.a && defpackage.aa4.e(this.b, df0Var.b) && defpackage.aa4.e(this.c, df0Var.c) && this.d == df0Var.d;
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        Boolean bool = this.b;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.c;
        return Boolean.hashCode(this.d) + ((iHashCode2 + (bool2 != null ? bool2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "DebugPanelConsentsData(hasLocationConsent=" + this.a + ", ageRestrictedUser=" + this.b + ", hasUserConsent=" + this.c + ", hasCmpValue=" + this.d + ")";
    }

    public df0(boolean z, Boolean bool, Boolean bool2, boolean z2) {
        this.a = z;
        this.b = bool;
        this.c = bool2;
        this.d = z2;
    }
}

package defpackage;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ic0 {

    @bq7("logoUrl")
    private final String a;

    @bq7(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)
    private final a b;

    @bq7("url")
    private final String c;

    @bq7("aspectRatio")
    private final double d;

    public enum a {
        COMMON
    }

    public ic0(String str, a aVar, String str2, double d) {
        str.getClass();
        aVar.getClass();
        this.a = str;
        this.b = aVar;
        this.c = str2;
        this.d = d;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ic0)) {
            return false;
        }
        ic0 ic0Var = (ic0) obj;
        return aa4.e(this.a, ic0Var.a) && this.b == ic0Var.b && aa4.e(this.c, ic0Var.c) && Double.compare(this.d, ic0Var.d) == 0;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        String str = this.c;
        return Double.hashCode(this.d) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "BannerResponse(logoUrl=" + this.a + ", type=" + this.b + ", url=" + this.c + ", aspectRatio=" + this.d + ")";
    }
}

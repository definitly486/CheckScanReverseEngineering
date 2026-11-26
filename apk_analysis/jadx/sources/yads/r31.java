package yads;

import android.net.Uri;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class r31 extends d41 {
    public final double a;
    public final f11 b;
    public final h11 c;
    public final Uri d;
    public final boolean e;
    public final vi1 f;
    public final ArrayList g;
    public final boolean h;

    public r31(double d, f11 f11Var, h11 h11Var, Uri uri, boolean z, vi1 vi1Var, ArrayList arrayList, boolean z2) {
        this.a = d;
        this.b = f11Var;
        this.c = h11Var;
        this.d = uri;
        this.e = z;
        this.f = vi1Var;
        this.g = arrayList;
        this.h = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r31)) {
            return false;
        }
        r31 r31Var = (r31) obj;
        return Double.compare(this.a, r31Var.a) == 0 && this.b == r31Var.b && this.c == r31Var.c && defpackage.aa4.e(this.d, r31Var.d) && this.e == r31Var.e && this.f == r31Var.f && defpackage.aa4.e(this.g, r31Var.g) && this.h == r31Var.h;
    }

    public final int hashCode() {
        int iHashCode = (this.f.hashCode() + m7.a((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (Double.hashCode(this.a) * 31)) * 31)) * 31)) * 31, 31, this.e)) * 31;
        ArrayList arrayList = this.g;
        return Boolean.hashCode(this.h) + ((iHashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31);
    }

    public final String toString() {
        return "Image(alpha=" + this.a + ", contentAlignmentHorizontal=" + this.b + ", contentAlignmentVertical=" + this.c + ", imageUrl=" + this.d + ", preloadRequired=" + this.e + ", scale=" + this.f + ", filters=" + this.g + ", isVectorCompatible=" + this.h + ")";
    }
}

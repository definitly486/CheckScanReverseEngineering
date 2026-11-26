package yads;

import com.monetization.ads.nativeads.ExtendedNativeAdView;

/* JADX INFO: loaded from: classes6.dex */
public final class mr3 {
    public final int a;
    public final on0 b;
    public final pn0 c;

    public mr3(int i, on0 on0Var, pn0 pn0Var) {
        this.a = i;
        this.b = on0Var;
        this.c = pn0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mr3)) {
            return false;
        }
        mr3 mr3Var = (mr3) obj;
        return this.a == mr3Var.a && ExtendedNativeAdView.class.equals(ExtendedNativeAdView.class) && defpackage.aa4.e(this.b, mr3Var.b) && defpackage.aa4.e(this.c, mr3Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + ((ExtendedNativeAdView.class.hashCode() + (Integer.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LayoutDesign(layoutId=" + this.a + ", layoutViewClass=" + ExtendedNativeAdView.class + ", designComponentBinder=" + this.b + ", designConstraint=" + this.c + ")";
    }
}

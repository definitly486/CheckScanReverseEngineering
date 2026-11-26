package defpackage;

import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class wm8 implements pz3 {
    public final String a;
    public final String b;
    public final ImageView.ScaleType c;

    public wm8(String str, String str2) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        str.getClass();
        scaleType.getClass();
        this.a = str;
        this.b = str2;
        this.c = scaleType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wm8)) {
            return false;
        }
        wm8 wm8Var = (wm8) obj;
        return aa4.e(this.a, wm8Var.a) && aa4.e(this.b, wm8Var.b) && this.c == wm8Var.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return this.c.hashCode() + ej0.b(44, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("TaskDetailsBadgeViewModel(badgeUrl=", this.a, ", deeplink=", this.b, ", badgeHeight=44, scaleType=");
        sbD.append(this.c);
        sbD.append(")");
        return sbD.toString();
    }
}

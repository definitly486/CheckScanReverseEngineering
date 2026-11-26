package defpackage;

import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class wk6 implements pz3 {
    public final xp6 a;
    public final ImageView.ScaleType b;

    public wk6(xp6 xp6Var) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        xp6Var.getClass();
        scaleType.getClass();
        this.a = xp6Var;
        this.b = scaleType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wk6)) {
            return false;
        }
        wk6 wk6Var = (wk6) obj;
        return aa4.e(this.a, wk6Var.a) && this.b == wk6Var.b;
    }

    @Override // defpackage.pz3
    public final Object f() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append(this.b);
        return sb.toString();
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return bj.c("reward ", this.a.a);
    }

    public final String toString() {
        return "ProfileBadgeViewModel(promocodeBadge=" + this.a + ", scaleType=" + this.b + ")";
    }
}

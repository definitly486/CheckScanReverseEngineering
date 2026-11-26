package defpackage;

import android.widget.ImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class rl8 implements pz3 {
    public final String a;
    public final int b;
    public final ImageView.ScaleType c;

    public rl8(String str, int i, ImageView.ScaleType scaleType) {
        str.getClass();
        scaleType.getClass();
        this.a = str;
        this.b = i;
        this.c = scaleType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rl8)) {
            return false;
        }
        rl8 rl8Var = (rl8) obj;
        return aa4.e(this.a, rl8Var.a) && this.b == rl8Var.b && this.c == rl8Var.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbA = mz0.a(this.b, "TaskBadgeViewModel(badgeUrl=", this.a, ", badgeHeight=", ", scaleType=");
        sbA.append(this.c);
        sbA.append(")");
        return sbA.toString();
    }
}

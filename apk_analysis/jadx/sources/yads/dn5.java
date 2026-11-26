package yads;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes6.dex */
public final class dn5 {
    public final float a;
    public final float b;
    public final Typeface c;
    public final float d;
    public final float e;
    public final int f;

    public dn5(float f, float f2, Typeface typeface, float f3, float f4, int i) {
        this.a = f;
        this.b = f2;
        this.c = typeface;
        this.d = f3;
        this.e = f4;
        this.f = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dn5)) {
            return false;
        }
        dn5 dn5Var = (dn5) obj;
        return Float.compare(this.a, dn5Var.a) == 0 && Float.compare(this.b, dn5Var.b) == 0 && defpackage.aa4.e(this.c, dn5Var.c) && Float.compare(this.d, dn5Var.d) == 0 && Float.compare(this.e, dn5Var.e) == 0 && this.f == dn5Var.f;
    }

    public final int hashCode() {
        return i96.a(this.f, rp0.a(rp0.a((this.c.hashCode() + rp0.a(Float.hashCode(this.a) * 31, this.b, 31)) * 31, this.d, 31), this.e, 31), 31);
    }

    public final String toString() {
        return "SliderTextStyle(fontSize=" + this.a + ", spacing=" + this.b + ", fontWeight=" + this.c + ", offsetX=" + this.d + ", offsetY=" + this.e + ", textColor=" + this.f + ", fontVariations=null)";
    }
}

package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class ro1 extends ViewGroup.MarginLayoutParams {
    public static final /* synthetic */ defpackage.ze4[] i = {mo.a(ro1.class, "columnSpan", "getColumnSpan()I", 0), mo.a(ro1.class, "rowSpan", "getRowSpan()I", 0)};
    public int a;
    public boolean b;
    public float c;
    public float d;
    public final tx4 e;
    public final tx4 f;
    public int g;
    public int h;

    public ro1(ro1 ro1Var) {
        super((ViewGroup.MarginLayoutParams) ro1Var);
        this.a = 8388659;
        this.e = new tx4();
        this.f = new tx4();
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
        this.a = ro1Var.a;
        this.b = ro1Var.b;
        this.c = ro1Var.c;
        this.d = ro1Var.d;
        a(ro1Var.a());
        c(ro1Var.c());
        this.g = ro1Var.g;
        this.h = ro1Var.h;
    }

    public final void a(int i2) {
        tx4 tx4Var = this.e;
        defpackage.ze4 ze4Var = i[0];
        Integer numValueOf = Integer.valueOf(i2);
        tx4Var.getClass();
        if (numValueOf.doubleValue() <= 0.0d) {
            numValueOf = 1;
        }
        tx4Var.a = numValueOf;
    }

    public final int b() {
        return this.a;
    }

    public final void c(int i2) {
        tx4 tx4Var = this.f;
        defpackage.ze4 ze4Var = i[1];
        Integer numValueOf = Integer.valueOf(i2);
        tx4Var.getClass();
        if (numValueOf.doubleValue() <= 0.0d) {
            numValueOf = 1;
        }
        tx4Var.a = numValueOf;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ro1.class != obj.getClass()) {
            return false;
        }
        ro1 ro1Var = (ro1) obj;
        return ((ViewGroup.MarginLayoutParams) this).width == ((ViewGroup.MarginLayoutParams) ro1Var).width && ((ViewGroup.MarginLayoutParams) this).height == ((ViewGroup.MarginLayoutParams) ro1Var).height && ((ViewGroup.MarginLayoutParams) this).leftMargin == ((ViewGroup.MarginLayoutParams) ro1Var).leftMargin && ((ViewGroup.MarginLayoutParams) this).rightMargin == ((ViewGroup.MarginLayoutParams) ro1Var).rightMargin && ((ViewGroup.MarginLayoutParams) this).topMargin == ((ViewGroup.MarginLayoutParams) ro1Var).topMargin && ((ViewGroup.MarginLayoutParams) this).bottomMargin == ((ViewGroup.MarginLayoutParams) ro1Var).bottomMargin && this.a == ro1Var.a && this.b == ro1Var.b && a() == ro1Var.a() && c() == ro1Var.c() && this.c == ro1Var.c && this.d == ro1Var.d && this.g == ro1Var.g && this.h == ro1Var.h;
    }

    public final int hashCode() {
        int iFloatToIntBits = (Float.floatToIntBits(this.d) + ((Float.floatToIntBits(this.c) + ((c() + ((a() + (((((super.hashCode() * 31) + this.a) * 31) + (this.b ? 1 : 0)) * 31)) * 31)) * 31)) * 31)) * 31;
        int i2 = this.g;
        if (i2 == Integer.MAX_VALUE) {
            i2 = 0;
        }
        int i3 = (iFloatToIntBits + i2) * 31;
        int i4 = this.h;
        return i3 + (i4 != Integer.MAX_VALUE ? i4 : 0);
    }

    public final void b(int i2) {
        this.a = i2;
    }

    public final int c() {
        tx4 tx4Var = this.f;
        defpackage.ze4 ze4Var = i[1];
        return tx4Var.a.intValue();
    }

    public final int a() {
        tx4 tx4Var = this.e;
        defpackage.ze4 ze4Var = i[0];
        return tx4Var.a.intValue();
    }

    public ro1(int i2, int i3) {
        super(i2, i3);
        this.a = 8388659;
        this.e = new tx4();
        this.f = new tx4();
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
    }

    public ro1(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.a = 8388659;
        this.e = new tx4();
        this.f = new tx4();
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
    }

    public ro1(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.a = 8388659;
        this.e = new tx4();
        this.f = new tx4();
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
    }

    public ro1(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 8388659;
        this.e = new tx4();
        this.f = new tx4();
        this.g = Integer.MAX_VALUE;
        this.h = Integer.MAX_VALUE;
    }
}

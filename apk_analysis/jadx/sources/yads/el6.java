package yads;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class el6 {
    public final et1 a;
    public final float b;
    public final ys1 c;
    public final ts1 d;
    public final wr1 e;
    public int f;

    public el6(et1 et1Var, float f, ys1 ys1Var, ts1 ts1Var, wr1 wr1Var) {
        this.a = et1Var;
        this.b = f;
        this.c = ys1Var;
        this.d = ts1Var;
        this.e = wr1Var;
        this.f = 1;
        this.f = a();
        RecyclerView recyclerViewH = et1Var.h();
        if (recyclerViewH != null) {
            recyclerViewH.setItemViewCacheSize((this.f * 2) + 3);
        }
        et1Var.a.setOffscreenPageLimit(this.f);
        et1Var.setChangePageCallbackForOffScreenPages$mobileads_externalRelease(new dl6(this));
    }

    public final int a() {
        Float fC = this.c.c(this.a.a.getCurrentItem());
        if (fC == null) {
            return 1;
        }
        float fFloatValue = fC.floatValue();
        int currentItem = this.a.a.getCurrentItem() - 1;
        int i = 0;
        int i2 = 0;
        while (fFloatValue > 0.0f && currentItem > 0) {
            i2++;
            Float fA = a(currentItem);
            if (fA == null) {
                break;
            }
            fFloatValue -= fA.floatValue();
            currentItem--;
        }
        if (fFloatValue > this.d.g && currentItem == 0) {
            i2++;
            Float fA2 = a(currentItem);
            fFloatValue -= fA2 != null ? fA2.floatValue() : 0.0f;
        }
        Float fB = this.c.b(this.a.a.getCurrentItem());
        if (fB == null) {
            if (i2 < 1) {
                return 1;
            }
            return i2;
        }
        float fFloatValue2 = fB.floatValue();
        if (fFloatValue > this.d.g) {
            fFloatValue2 += fFloatValue;
        }
        int currentItem2 = this.a.a.getCurrentItem() + 1;
        while (fFloatValue2 > 0.0f && currentItem2 < this.e.o.size() - 1) {
            i++;
            Float fA3 = a(currentItem2);
            if (fA3 == null) {
                break;
            }
            fFloatValue2 -= fA3.floatValue();
            currentItem2++;
        }
        if (fFloatValue2 > this.d.h && currentItem2 == this.e.o.size() - 1) {
            i++;
            Float fA4 = a(currentItem2);
            fFloatValue2 -= fA4 != null ? fA4.floatValue() : 0.0f;
        }
        while (fFloatValue2 > 0.0f && currentItem >= 0) {
            i2++;
            Float fA5 = a(currentItem);
            if (fA5 == null) {
                break;
            }
            fFloatValue2 -= fA5.floatValue();
            currentItem--;
        }
        int iMax = Math.max(i2, i);
        if (iMax < 1) {
            return 1;
        }
        return iMax;
    }

    public final Float a(int i) {
        Float fA = this.c.a(i);
        if (fA != null) {
            return Float.valueOf(fA.floatValue() + this.b);
        }
        return null;
    }
}

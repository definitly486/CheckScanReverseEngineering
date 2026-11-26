package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class l25 implements wx3 {
    public final float a;
    public final vx3 b;
    public final uj c;

    public l25(float f) {
        vx3 vx3Var = new vx3();
        uj ujVar = new uj(f);
        this.a = f;
        this.b = vx3Var;
        this.c = ujVar;
    }

    @Override // yads.wx3
    public final vx3 a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824 && (mode2 == Integer.MIN_VALUE || mode2 == 0)) {
            int iRound = Math.round(size / this.c.a);
            if (mode2 == Integer.MIN_VALUE) {
                iRound = (int) Math.min(size2, iRound);
            }
            i2 = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
        } else if (mode2 == 1073741824 && (mode == Integer.MIN_VALUE || mode == 0)) {
            int iRound2 = Math.round(size2 * this.c.a);
            if (mode == Integer.MIN_VALUE) {
                iRound2 = (int) Math.min(size, iRound2);
            }
            i = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
        } else if (mode2 == Integer.MIN_VALUE && mode == Integer.MIN_VALUE && size2 != 0 && size != 0) {
            float f = size;
            float f2 = size2;
            float f3 = f / f2;
            float f4 = this.a;
            uj ujVar = this.c;
            if (f3 > f4) {
                i = View.MeasureSpec.makeMeasureSpec(Math.round(f2 * ujVar.a), 1073741824);
                i2 = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
            } else {
                int iRound3 = Math.round(f / ujVar.a);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                i2 = View.MeasureSpec.makeMeasureSpec(iRound3, 1073741824);
                i = iMakeMeasureSpec;
            }
        }
        vx3 vx3Var = this.b;
        vx3Var.a = i;
        vx3Var.b = i2;
        return vx3Var;
    }
}

package yads;

import android.graphics.Canvas;
import android.text.Layout;

/* JADX INFO: loaded from: classes6.dex */
public final class yc4 extends ab2 {
    public final zo1 a;
    public final fs2 b;

    public yc4(zo1 zo1Var, fs2 fs2Var) {
        this.a = zo1Var;
        this.b = fs2Var;
    }

    @Override // yads.ab2
    public final void a(Canvas canvas, Layout layout, int i, int i2, int i3, int i4, o92 o92Var, h92 h92Var) {
        int paragraphDirection = layout.getParagraphDirection(i);
        int lineLeft = (int) (paragraphDirection == -1 ? layout.getLineLeft(i) : layout.getLineRight(i));
        int iA = ab2.a(layout, i);
        int lineTop = layout.getLineTop(i);
        if (i == 0) {
            lineTop -= layout.getTopPadding();
        }
        rn rnVar = new rn(this.a.getResources().getDisplayMetrics(), o92Var, h92Var, canvas, this.b);
        float f = i3;
        float f2 = lineTop;
        float f3 = lineLeft;
        float f4 = iA;
        float[] fArr = new float[8];
        float[] fArr2 = rnVar.g;
        if (fArr2 != null) {
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = fArr2[6];
            fArr[7] = fArr2[7];
        }
        rnVar.a(fArr, f, f2, f3, f4);
        for (int i5 = i + 1; i5 < i2; i5++) {
            int lineTop2 = layout.getLineTop(i5);
            if (i5 == 0) {
                lineTop2 -= layout.getTopPadding();
            }
            rnVar.a(new float[8], (int) layout.getLineLeft(i5), lineTop2, (int) layout.getLineRight(i5), ab2.a(layout, i5));
        }
        int lineRight = (int) (paragraphDirection == -1 ? layout.getLineRight(i) : layout.getLineLeft(i));
        int iA2 = ab2.a(layout, i2);
        int lineTop3 = layout.getLineTop(i2);
        if (i2 == 0) {
            lineTop3 -= layout.getTopPadding();
        }
        float f5 = lineRight;
        float f6 = lineTop3;
        float f7 = i4;
        float f8 = iA2;
        float[] fArr3 = new float[8];
        float[] fArr4 = rnVar.g;
        if (fArr4 != null) {
            fArr3[0] = 0.0f;
            fArr3[1] = 0.0f;
            fArr3[2] = fArr4[2];
            fArr3[3] = fArr4[3];
            fArr3[4] = fArr4[4];
            fArr3[5] = fArr4[5];
            fArr3[6] = 0.0f;
            fArr3[7] = 0.0f;
        }
        rnVar.a(fArr3, f5, f6, f7, f8);
    }
}

package androidx.compose.ui.graphics;

import defpackage.aq5;
import defpackage.jh2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorMatrixColorFilter extends ColorFilter {
    public static final int $stable = 0;
    private float[] colorMatrix;

    private ColorMatrixColorFilter(float[] fArr) {
        this(fArr, AndroidColorFilter_androidKt.m6092actualColorMatrixColorFilterjHGOpc(fArr), null);
    }

    /* JADX INFO: renamed from: copyColorMatrix-gBh15pI$default, reason: not valid java name */
    public static /* synthetic */ float[] m6308copyColorMatrixgBh15pI$default(ColorMatrixColorFilter colorMatrixColorFilter, float[] fArr, int i, Object obj) {
        if ((i & 1) != 0) {
            fArr = ColorMatrix.m6289constructorimpl$default(null, 1, null);
        }
        return colorMatrixColorFilter.m6310copyColorMatrixgBh15pI(fArr);
    }

    /* JADX INFO: renamed from: obtainColorMatrix-p10-uLo, reason: not valid java name */
    private final float[] m6309obtainColorMatrixp10uLo() {
        float[] fArr = this.colorMatrix;
        if (fArr != null) {
            return fArr;
        }
        float[] fArrActualColorMatrixFromFilter = AndroidColorFilter_androidKt.actualColorMatrixFromFilter(getNativeColorFilter$ui_graphics());
        this.colorMatrix = fArrActualColorMatrixFromFilter;
        return fArrActualColorMatrixFromFilter;
    }

    /* JADX INFO: renamed from: copyColorMatrix-gBh15pI, reason: not valid java name */
    public final float[] m6310copyColorMatrixgBh15pI(float[] fArr) {
        aq5.o(0, m6309obtainColorMatrixp10uLo(), fArr, 14);
        return fArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ColorMatrixColorFilter) && Arrays.equals(m6309obtainColorMatrixp10uLo(), ((ColorMatrixColorFilter) obj).m6309obtainColorMatrixp10uLo());
    }

    public int hashCode() {
        float[] fArr = this.colorMatrix;
        if (fArr != null) {
            return ColorMatrix.m6295hashCodeimpl(fArr);
        }
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColorMatrixColorFilter(colorMatrix=");
        float[] fArr = this.colorMatrix;
        sb.append((Object) (fArr == null ? "null" : ColorMatrix.m6306toStringimpl(fArr)));
        sb.append(')');
        return sb.toString();
    }

    public /* synthetic */ ColorMatrixColorFilter(float[] fArr, android.graphics.ColorFilter colorFilter, jh2 jh2Var) {
        this(fArr, colorFilter);
    }

    private ColorMatrixColorFilter(float[] fArr, android.graphics.ColorFilter colorFilter) {
        super(colorFilter);
        this.colorMatrix = fArr;
    }

    public /* synthetic */ ColorMatrixColorFilter(float[] fArr, jh2 jh2Var) {
        this(fArr);
    }
}

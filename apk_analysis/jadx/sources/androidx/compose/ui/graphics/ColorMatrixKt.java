package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorMatrixKt {
    /* JADX INFO: renamed from: dot-Me4OoYI, reason: not valid java name */
    private static final float m6312dotMe4OoYI(float[] fArr, int i, float[] fArr2, int i2) {
        int i3 = i * 5;
        return (fArr[i3 + 3] * fArr2[15 + i2]) + (fArr[i3 + 2] * fArr2[10 + i2]) + (fArr[i3 + 1] * fArr2[5 + i2]) + (fArr[i3] * fArr2[i2]);
    }
}

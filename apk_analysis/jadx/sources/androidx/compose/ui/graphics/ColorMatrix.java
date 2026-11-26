package androidx.compose.ui.graphics;

import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorMatrix {
    private final float[] values;

    private /* synthetic */ ColorMatrix(float[] fArr) {
        this.values = fArr;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ColorMatrix m6287boximpl(float[] fArr) {
        return new ColorMatrix(fArr);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static float[] m6288constructorimpl(float[] fArr) {
        return fArr;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ float[] m6289constructorimpl$default(float[] fArr, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        }
        return m6288constructorimpl(fArr);
    }

    /* JADX INFO: renamed from: convertRgbToYuv-impl, reason: not valid java name */
    public static final void m6290convertRgbToYuvimpl(float[] fArr) {
        if (fArr.length < 20) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        fArr[0] = 0.299f;
        fArr[1] = 0.587f;
        fArr[2] = 0.114f;
        fArr[5] = -0.16874f;
        fArr[6] = -0.33126f;
        fArr[7] = 0.5f;
        fArr[10] = 0.5f;
        fArr[11] = -0.41869f;
        fArr[12] = -0.08131f;
    }

    /* JADX INFO: renamed from: convertYuvToRgb-impl, reason: not valid java name */
    public static final void m6291convertYuvToRgbimpl(float[] fArr) {
        if (fArr.length < 20) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        fArr[2] = 1.402f;
        fArr[5] = 1.0f;
        fArr[6] = -0.34414f;
        fArr[7] = -0.71414f;
        fArr[10] = 1.0f;
        fArr[11] = 1.772f;
        fArr[12] = 0.0f;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6292equalsimpl(float[] fArr, Object obj) {
        return (obj instanceof ColorMatrix) && aa4.e(fArr, ((ColorMatrix) obj).m6307unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6293equalsimpl0(float[] fArr, float[] fArr2) {
        return aa4.e(fArr, fArr2);
    }

    /* JADX INFO: renamed from: get-impl, reason: not valid java name */
    public static final float m6294getimpl(float[] fArr, int i, int i2) {
        return fArr[(i * 5) + i2];
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6295hashCodeimpl(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    /* JADX INFO: renamed from: reset-impl, reason: not valid java name */
    public static final void m6296resetimpl(float[] fArr) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
    }

    /* JADX INFO: renamed from: rotateInternal-impl, reason: not valid java name */
    private static final void m6297rotateInternalimpl(float[] fArr, float f, bm3<? super Float, ? super Float, j59> bm3Var) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        float f2 = f * 0.0027777778f;
        float f3 = 0.25f + f2;
        float fFloor = f3 - ((float) Math.floor(f3 + 0.5f));
        float fAbs = Math.abs(fFloor) * 2.0f;
        float f4 = 1.0f - fAbs;
        float fFloor2 = f2 - ((float) Math.floor(0.5f + f2));
        float fAbs2 = Math.abs(fFloor2) * 2.0f;
        float f5 = 1.0f - fAbs2;
        bm3Var.invoke(Float.valueOf(((fFloor * 8.0f) * f4) / (1.25f - (fAbs * f4))), Float.valueOf(((fFloor2 * 8.0f) * f5) / (1.25f - (fAbs2 * f5))));
    }

    /* JADX INFO: renamed from: set-impl, reason: not valid java name */
    public static final void m6298setimpl(float[] fArr, int i, int i2, float f) {
        fArr[(i * 5) + i2] = f;
    }

    /* JADX INFO: renamed from: set-jHG-Opc, reason: not valid java name */
    public static final void m6299setjHGOpc(float[] fArr, float[] fArr2) {
        if (fArr.length >= 20 && fArr2.length >= 20) {
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = fArr2[2];
            fArr[3] = fArr2[3];
            fArr[4] = fArr2[4];
            fArr[5] = fArr2[5];
            fArr[6] = fArr2[6];
            fArr[7] = fArr2[7];
            fArr[8] = fArr2[8];
            fArr[9] = fArr2[9];
            fArr[10] = fArr2[10];
            fArr[11] = fArr2[11];
            fArr[12] = fArr2[12];
            fArr[13] = fArr2[13];
            fArr[14] = fArr2[14];
            fArr[15] = fArr2[15];
            fArr[16] = fArr2[16];
            fArr[17] = fArr2[17];
            fArr[18] = fArr2[18];
            fArr[19] = fArr2[19];
        }
    }

    /* JADX INFO: renamed from: setToRotateBlue-impl, reason: not valid java name */
    public static final void m6300setToRotateBlueimpl(float[] fArr, float f) {
        if (fArr.length < 20) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        float f2 = f * 0.0027777778f;
        float f3 = 0.25f + f2;
        float fFloor = f3 - ((float) Math.floor(f3 + 0.5f));
        float fAbs = Math.abs(fFloor) * 2.0f;
        float f4 = 1.0f - fAbs;
        float f5 = ((fFloor * 8.0f) * f4) / (1.25f - (fAbs * f4));
        float fFloor2 = f2 - ((float) Math.floor(0.5f + f2));
        float fAbs2 = Math.abs(fFloor2) * 2.0f;
        float f6 = 1.0f - fAbs2;
        float f7 = ((fFloor2 * 8.0f) * f6) / (1.25f - (fAbs2 * f6));
        fArr[0] = f5;
        fArr[1] = f7;
        fArr[5] = -f7;
        fArr[6] = f5;
    }

    /* JADX INFO: renamed from: setToRotateGreen-impl, reason: not valid java name */
    public static final void m6301setToRotateGreenimpl(float[] fArr, float f) {
        if (fArr.length < 20) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        float f2 = f * 0.0027777778f;
        float f3 = 0.25f + f2;
        float fFloor = f3 - ((float) Math.floor(f3 + 0.5f));
        float fAbs = Math.abs(fFloor) * 2.0f;
        float f4 = 1.0f - fAbs;
        float f5 = ((fFloor * 8.0f) * f4) / (1.25f - (fAbs * f4));
        float fFloor2 = f2 - ((float) Math.floor(0.5f + f2));
        float fAbs2 = Math.abs(fFloor2) * 2.0f;
        float f6 = 1.0f - fAbs2;
        float f7 = ((fFloor2 * 8.0f) * f6) / (1.25f - (fAbs2 * f6));
        fArr[0] = f5;
        fArr[2] = -f7;
        fArr[10] = f7;
        fArr[12] = f5;
    }

    /* JADX INFO: renamed from: setToRotateRed-impl, reason: not valid java name */
    public static final void m6302setToRotateRedimpl(float[] fArr, float f) {
        if (fArr.length < 20) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        float f2 = f * 0.0027777778f;
        float f3 = 0.25f + f2;
        float fFloor = f3 - ((float) Math.floor(f3 + 0.5f));
        float fAbs = Math.abs(fFloor) * 2.0f;
        float f4 = 1.0f - fAbs;
        float f5 = ((fFloor * 8.0f) * f4) / (1.25f - (fAbs * f4));
        float fFloor2 = f2 - ((float) Math.floor(0.5f + f2));
        float fAbs2 = Math.abs(fFloor2) * 2.0f;
        float f6 = 1.0f - fAbs2;
        float f7 = ((fFloor2 * 8.0f) * f6) / (1.25f - (fAbs2 * f6));
        fArr[6] = f5;
        fArr[7] = f7;
        fArr[11] = -f7;
        fArr[12] = f5;
    }

    /* JADX INFO: renamed from: setToSaturation-impl, reason: not valid java name */
    public static final void m6303setToSaturationimpl(float[] fArr, float f) {
        if (fArr.length < 20) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        float f2 = 1.0f - f;
        float f3 = 0.213f * f2;
        float f4 = 0.715f * f2;
        float f5 = f2 * 0.072f;
        fArr[0] = f3 + f;
        fArr[1] = f4;
        fArr[2] = f5;
        fArr[5] = f3;
        fArr[6] = f4 + f;
        fArr[7] = f5;
        fArr[10] = f3;
        fArr[11] = f4;
        fArr[12] = f5 + f;
    }

    /* JADX INFO: renamed from: setToScale-impl, reason: not valid java name */
    public static final void m6304setToScaleimpl(float[] fArr, float f, float f2, float f3, float f4) {
        if (fArr.length < 20) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 0.0f;
        fArr[6] = 1.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 0.0f;
        fArr[11] = 0.0f;
        fArr[12] = 1.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 0.0f;
        fArr[16] = 0.0f;
        fArr[17] = 0.0f;
        fArr[18] = 1.0f;
        fArr[19] = 0.0f;
        fArr[0] = f;
        fArr[6] = f2;
        fArr[12] = f3;
        fArr[18] = f4;
    }

    /* JADX INFO: renamed from: timesAssign-jHG-Opc, reason: not valid java name */
    public static final void m6305timesAssignjHGOpc(float[] fArr, float[] fArr2) {
        if (fArr.length < 20) {
            return;
        }
        float f = fArr[0];
        float f2 = fArr2[0];
        float f3 = fArr[1];
        float f4 = fArr2[5];
        float f5 = fArr[2];
        float f6 = fArr2[10];
        float f7 = f5 * f6;
        float f8 = fArr[3];
        float f9 = fArr2[15];
        float f10 = f8 * f9;
        float f11 = f10 + f7 + (f3 * f4) + (f * f2);
        float f12 = fArr2[1];
        float f13 = fArr2[6];
        float f14 = fArr2[11];
        float f15 = f5 * f14;
        float f16 = fArr2[16];
        float f17 = f8 * f16;
        float f18 = f17 + f15 + (f3 * f13) + (f * f12);
        float f19 = fArr2[2];
        float f20 = fArr2[7];
        float f21 = fArr2[12];
        float f22 = f5 * f21;
        float f23 = fArr2[17];
        float f24 = f8 * f23;
        float f25 = f24 + f22 + (f3 * f20) + (f * f19);
        float f26 = fArr2[3];
        float f27 = fArr2[8];
        float f28 = fArr2[13];
        float f29 = f5 * f28;
        float f30 = fArr2[18];
        float f31 = f8 * f30;
        float f32 = f31 + f29 + (f3 * f27) + (f * f26);
        float f33 = fArr2[4];
        float f34 = fArr2[9];
        float f35 = fArr2[14];
        float f36 = f5 * f35;
        float f37 = fArr2[19];
        float f38 = f8 * f37;
        float f39 = f38 + f36 + (f3 * f34) + (f * f33) + fArr[4];
        float f40 = fArr[5];
        float f41 = fArr[6];
        float f42 = fArr[7];
        float f43 = (f42 * f6) + (f41 * f4) + (f40 * f2);
        float f44 = fArr[8];
        float f45 = (f44 * f9) + f43;
        float f46 = (f44 * f16) + (f42 * f14) + (f41 * f13) + (f40 * f12);
        float f47 = (f44 * f23) + (f42 * f21) + (f41 * f20) + (f40 * f19);
        float f48 = (f44 * f30) + (f42 * f28) + (f41 * f27) + (f40 * f26);
        float f49 = f42 * f35;
        float f50 = f44 * f37;
        float f51 = f50 + f49 + (f41 * f34) + (f40 * f33) + fArr[9];
        float f52 = fArr[10];
        float f53 = fArr[11];
        float f54 = fArr[12];
        float f55 = (f54 * f6) + (f53 * f4) + (f52 * f2);
        float f56 = fArr[13];
        float f57 = (f56 * f9) + f55;
        float f58 = (f56 * f16) + (f54 * f14) + (f53 * f13) + (f52 * f12);
        float f59 = (f56 * f23) + (f54 * f21) + (f53 * f20) + (f52 * f19);
        float f60 = (f56 * f30) + (f54 * f28) + (f53 * f27) + (f52 * f26);
        float f61 = f54 * f35;
        float f62 = f56 * f37;
        float f63 = f62 + f61 + (f53 * f34) + (f52 * f33) + fArr[14];
        float f64 = fArr[15];
        float f65 = fArr[16];
        float f66 = (f4 * f65) + (f2 * f64);
        float f67 = fArr[17];
        float f68 = (f6 * f67) + f66;
        float f69 = fArr[18];
        float f70 = (f9 * f69) + f68;
        float f71 = f14 * f67;
        float f72 = f16 * f69;
        float f73 = f72 + f71 + (f13 * f65) + (f12 * f64);
        float f74 = f21 * f67;
        float f75 = f23 * f69;
        float f76 = f75 + f74 + (f20 * f65) + (f19 * f64);
        float f77 = f28 * f67;
        float f78 = f30 * f69;
        float f79 = f78 + f77 + (f27 * f65) + (f26 * f64);
        float f80 = f67 * f35;
        float f81 = f69 * f37;
        float f82 = f81 + f80 + (f65 * f34) + (f64 * f33) + fArr[19];
        fArr[0] = f11;
        fArr[1] = f18;
        fArr[2] = f25;
        fArr[3] = f32;
        fArr[4] = f39;
        fArr[5] = f45;
        fArr[6] = f46;
        fArr[7] = f47;
        fArr[8] = f48;
        fArr[9] = f51;
        fArr[10] = f57;
        fArr[11] = f58;
        fArr[12] = f59;
        fArr[13] = f60;
        fArr[14] = f63;
        fArr[15] = f70;
        fArr[16] = f73;
        fArr[17] = f76;
        fArr[18] = f79;
        fArr[19] = f82;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6306toStringimpl(float[] fArr) {
        return "ColorMatrix(values=" + Arrays.toString(fArr) + ')';
    }

    public boolean equals(Object obj) {
        return m6292equalsimpl(this.values, obj);
    }

    public final float[] getValues() {
        return this.values;
    }

    public int hashCode() {
        return m6295hashCodeimpl(this.values);
    }

    public String toString() {
        return m6306toStringimpl(this.values);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float[] m6307unboximpl() {
        return this.values;
    }
}

package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.aq5;
import defpackage.ea;
import defpackage.fg;
import defpackage.gg;
import defpackage.gu2;
import defpackage.hu2;
import defpackage.jg;
import defpackage.jh2;
import defpackage.jn;
import defpackage.kk2;
import defpackage.kx6;
import defpackage.ml0;
import defpackage.n3;
import defpackage.n7;
import defpackage.nl3;
import defpackage.o61;
import defpackage.p9;
import defpackage.q3;
import defpackage.rg;
import defpackage.rl0;
import defpackage.s77;
import defpackage.ul0;
import defpackage.v90;
import defpackage.w90;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class Rgb extends ColorSpace {
    private final nl3<Double, Double> eotf;
    private final DoubleFunction eotfFunc;
    private final DoubleFunction eotfOrig;
    private final float[] inverseTransform;
    private final boolean isSrgb;
    private final boolean isWideGamut;
    private final float max;
    private final float min;
    private final nl3<Double, Double> oetf;
    private final DoubleFunction oetfFunc;
    private final DoubleFunction oetfOrig;
    private final float[] primaries;
    private final TransferParameters transferParameters;
    private final float[] transform;
    private final WhitePoint whitePoint;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final DoubleFunction DoubleIdentity = new jg();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, float[] fArr2, DoubleFunction doubleFunction, DoubleFunction doubleFunction2, float f, float f2, TransferParameters transferParameters, int i) {
        super(str, ColorModel.Companion.m6669getRgbxdoWZVw(), i, null);
        float[] fArr3 = fArr2;
        this.whitePoint = whitePoint;
        this.min = f;
        this.max = f2;
        this.transferParameters = transferParameters;
        this.oetfOrig = doubleFunction;
        this.oetf = new Rgb$oetf$1(this);
        this.oetfFunc = new ml0(this, 4);
        this.eotfOrig = doubleFunction2;
        this.eotf = new Rgb$eotf$1(this);
        this.eotfFunc = new p9(this, 3);
        if (fArr.length != 6 && fArr.length != 9) {
            fg.c("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
            throw null;
        }
        if (f >= f2) {
            gg.d("Invalid range: min=", f, ", max=", f2, "; min must be strictly < max");
            throw null;
        }
        Companion companion = Companion;
        float[] fArrXyPrimaries = companion.xyPrimaries(fArr);
        this.primaries = fArrXyPrimaries;
        if (fArr3 == null) {
            float[] fArrComputeXYZMatrix = companion.computeXYZMatrix(fArrXyPrimaries, whitePoint);
            this.transform = fArrComputeXYZMatrix;
            fArr3 = fArrComputeXYZMatrix;
        } else {
            if (fArr3.length != 9) {
                jn.f(fArr3.length, "Transform must have 9 entries! Has ");
                throw null;
            }
            this.transform = fArr3;
        }
        this.inverseTransform = ColorSpaceKt.inverse3x3(fArr3);
        this.isWideGamut = companion.isWideGamut(fArrXyPrimaries, f, f2);
        this.isSrgb = companion.isSrgb(fArrXyPrimaries, whitePoint, doubleFunction, doubleFunction2, f, f2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double DoubleIdentity$lambda$0(double d) {
        return d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double _init_$lambda$0(nl3 nl3Var, double d) {
        return ((Number) nl3Var.invoke(Double.valueOf(d))).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double _init_$lambda$1(nl3 nl3Var, double d) {
        return ((Number) nl3Var.invoke(Double.valueOf(d))).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double _init_$lambda$2(nl3 nl3Var, double d) {
        return ((Number) nl3Var.invoke(Double.valueOf(d))).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double _init_$lambda$3(nl3 nl3Var, double d) {
        return ((Number) nl3Var.invoke(Double.valueOf(d))).doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double _init_$lambda$4(double d, double d2) {
        if (d2 < 0.0d) {
            d2 = 0.0d;
        }
        return Math.pow(d2, 1.0d / d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double _init_$lambda$5(double d, double d2) {
        if (d2 < 0.0d) {
            d2 = 0.0d;
        }
        return Math.pow(d2, d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double eotfFunc$lambda$0(Rgb rgb, double d) {
        return rgb.eotfOrig.invoke(kx6.c(d, rgb.min, rgb.max));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final double oetfFunc$lambda$0(Rgb rgb, double d) {
        return kx6.c(rgb.oetfOrig.invoke(d), rgb.min, rgb.max);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Rgb.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        Rgb rgb = (Rgb) obj;
        if (Float.compare(rgb.min, this.min) != 0 || Float.compare(rgb.max, this.max) != 0 || !aa4.e(this.whitePoint, rgb.whitePoint) || !Arrays.equals(this.primaries, rgb.primaries)) {
            return false;
        }
        TransferParameters transferParameters = this.transferParameters;
        TransferParameters transferParameters2 = rgb.transferParameters;
        if (transferParameters != null) {
            return aa4.e(transferParameters, transferParameters2);
        }
        if (transferParameters2 == null) {
            return true;
        }
        if (aa4.e(this.oetfOrig, rgb.oetfOrig)) {
            return aa4.e(this.eotfOrig, rgb.eotfOrig);
        }
        return false;
    }

    public final float[] fromLinear(float[] fArr) {
        if (fArr.length < 3) {
            return fArr;
        }
        fArr[0] = (float) this.oetfFunc.invoke(fArr[0]);
        fArr[1] = (float) this.oetfFunc.invoke(fArr[1]);
        fArr[2] = (float) this.oetfFunc.invoke(fArr[2]);
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float[] fromXyz(float[] fArr) {
        ColorSpaceKt.mul3x3Float3(this.inverseTransform, fArr);
        if (fArr.length < 3) {
            return fArr;
        }
        fArr[0] = (float) this.oetfFunc.invoke(fArr[0]);
        fArr[1] = (float) this.oetfFunc.invoke(fArr[1]);
        fArr[2] = (float) this.oetfFunc.invoke(fArr[2]);
        return fArr;
    }

    public final nl3<Double, Double> getEotf() {
        return this.eotf;
    }

    public final DoubleFunction getEotfFunc$ui_graphics() {
        return this.eotfFunc;
    }

    public final DoubleFunction getEotfOrig$ui_graphics() {
        return this.eotfOrig;
    }

    public final float[] getInverseTransform(float[] fArr) {
        aq5.o(0, this.inverseTransform, fArr, 14);
        return fArr;
    }

    public final float[] getInverseTransform$ui_graphics() {
        return this.inverseTransform;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMaxValue(int i) {
        return this.max;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMinValue(int i) {
        return this.min;
    }

    public final nl3<Double, Double> getOetf() {
        return this.oetf;
    }

    public final DoubleFunction getOetfFunc$ui_graphics() {
        return this.oetfFunc;
    }

    public final DoubleFunction getOetfOrig$ui_graphics() {
        return this.oetfOrig;
    }

    public final float[] getPrimaries(float[] fArr) {
        aq5.o(0, this.primaries, fArr, 14);
        return fArr;
    }

    public final float[] getPrimaries$ui_graphics() {
        return this.primaries;
    }

    public final TransferParameters getTransferParameters() {
        return this.transferParameters;
    }

    public final float[] getTransform(float[] fArr) {
        aq5.o(0, this.transform, fArr, 14);
        return fArr;
    }

    public final float[] getTransform$ui_graphics() {
        return this.transform;
    }

    public final WhitePoint getWhitePoint() {
        return this.whitePoint;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public int hashCode() {
        int iHashCode = (Arrays.hashCode(this.primaries) + ((this.whitePoint.hashCode() + (super.hashCode() * 31)) * 31)) * 31;
        float f = this.min;
        int iFloatToIntBits = (iHashCode + (f == 0.0f ? 0 : Float.floatToIntBits(f))) * 31;
        float f2 = this.max;
        int iFloatToIntBits2 = (iFloatToIntBits + (f2 == 0.0f ? 0 : Float.floatToIntBits(f2))) * 31;
        TransferParameters transferParameters = this.transferParameters;
        int iHashCode2 = iFloatToIntBits2 + (transferParameters != null ? transferParameters.hashCode() : 0);
        if (this.transferParameters != null) {
            return iHashCode2;
        }
        return this.eotfOrig.hashCode() + ((this.oetfOrig.hashCode() + (iHashCode2 * 31)) * 31);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isSrgb() {
        return this.isSrgb;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isWideGamut() {
        return this.isWideGamut;
    }

    public final float[] toLinear(float[] fArr) {
        if (fArr.length < 3) {
            return fArr;
        }
        fArr[0] = (float) this.eotfFunc.invoke(fArr[0]);
        fArr[1] = (float) this.eotfFunc.invoke(fArr[1]);
        fArr[2] = (float) this.eotfFunc.invoke(fArr[2]);
        return fArr;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public long toXy$ui_graphics(float f, float f2, float f3) {
        float fInvoke = (float) this.eotfFunc.invoke(f);
        float fInvoke2 = (float) this.eotfFunc.invoke(f2);
        float fInvoke3 = (float) this.eotfFunc.invoke(f3);
        float[] fArr = this.transform;
        if (fArr.length < 9) {
            return 0L;
        }
        return (((long) Float.floatToRawIntBits((fArr[6] * fInvoke3) + ((fArr[3] * fInvoke2) + (fArr[0] * fInvoke)))) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits((fArr[7] * fInvoke3) + (fArr[4] * fInvoke2) + (fArr[1] * fInvoke))));
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float[] toXyz(float[] fArr) {
        if (fArr.length < 3) {
            return fArr;
        }
        fArr[0] = (float) this.eotfFunc.invoke(fArr[0]);
        fArr[1] = (float) this.eotfFunc.invoke(fArr[1]);
        fArr[2] = (float) this.eotfFunc.invoke(fArr[2]);
        return ColorSpaceKt.mul3x3Float3(this.transform, fArr);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float toZ$ui_graphics(float f, float f2, float f3) {
        float fInvoke = (float) this.eotfFunc.invoke(f);
        float fInvoke2 = (float) this.eotfFunc.invoke(f2);
        float fInvoke3 = (float) this.eotfFunc.invoke(f3);
        float[] fArr = this.transform;
        return (fArr[8] * fInvoke3) + (fArr[5] * fInvoke2) + (fArr[2] * fInvoke);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    /* JADX INFO: renamed from: xyzaToColor-JlNiLsg$ui_graphics */
    public long mo6672xyzaToColorJlNiLsg$ui_graphics(float f, float f2, float f3, float f4, ColorSpace colorSpace) {
        float[] fArr = this.inverseTransform;
        return ColorKt.Color((float) this.oetfFunc.invoke((fArr[6] * f3) + (fArr[3] * f2) + (fArr[0] * f)), (float) this.oetfFunc.invoke((fArr[7] * f3) + (fArr[4] * f2) + (fArr[1] * f)), (float) this.oetfFunc.invoke((fArr[8] * f3) + (fArr[5] * f2) + (fArr[2] * f)), f4, colorSpace);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final float area(float[] fArr) {
            if (fArr.length < 6) {
                return 0.0f;
            }
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            float f4 = fArr[3];
            float f5 = fArr[4];
            float f6 = fArr[5];
            float fB = n7.b(f, f6, (((f3 * f6) + ((f2 * f5) + (f * f4))) - (f4 * f5)) - (f2 * f3), 0.5f);
            return fB < 0.0f ? -fB : fB;
        }

        private final boolean compare(double d, DoubleFunction doubleFunction, DoubleFunction doubleFunction2) {
            return Math.abs(doubleFunction.invoke(d) - doubleFunction2.invoke(d)) <= 0.001d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final WhitePoint computeWhitePoint(float[] fArr) {
            float[] fArrMul3x3Float3 = ColorSpaceKt.mul3x3Float3(fArr, new float[]{1.0f, 1.0f, 1.0f});
            float f = fArrMul3x3Float3[0];
            float f2 = fArrMul3x3Float3[1];
            float f3 = f + f2 + fArrMul3x3Float3[2];
            return new WhitePoint(f / f3, f2 / f3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] computeXYZMatrix(float[] fArr, WhitePoint whitePoint) {
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            float f4 = fArr[3];
            float f5 = fArr[4];
            float f6 = fArr[5];
            float x = whitePoint.getX();
            float y = whitePoint.getY();
            float f7 = (1.0f - f) / f2;
            float f8 = (1.0f - x) / y;
            float f9 = f / f2;
            float f10 = x / y;
            float f11 = (f3 / f4) - f9;
            float f12 = f10 - f9;
            float f13 = ((1.0f - f3) / f4) - f7;
            float f14 = ((f8 - f7) * f11) - (f12 * f13);
            float f15 = (((1.0f - f5) / f6) - f7) * f11;
            float f16 = (f5 / f6) - f9;
            float f17 = f14 / (f15 - (f13 * f16));
            float fB = rg.b(f17, f16, f12, f11);
            float f18 = (1.0f - fB) - f17;
            float f19 = f18 / f2;
            float f20 = fB / f4;
            float f21 = f17 / f6;
            return new float[]{f19 * f, f18, ((1.0f - f) - f2) * f19, f20 * f3, fB, ((1.0f - f3) - f4) * f20, f21 * f5, f17, ((1.0f - f5) - f6) * f21};
        }

        private final boolean contains(float[] fArr, float[] fArr2) {
            float f = fArr[0];
            float f2 = fArr2[0];
            float f3 = fArr[1];
            float f4 = fArr2[1];
            float f5 = fArr[2];
            float f6 = fArr2[2];
            float f7 = fArr[3];
            float f8 = fArr2[3];
            float f9 = fArr[4];
            float f10 = fArr2[4];
            float f11 = fArr[5];
            float f12 = fArr2[5];
            float[] fArr3 = {f - f2, f3 - f4, f5 - f6, f7 - f8, f9 - f10, f11 - f12};
            float f13 = fArr3[0];
            float f14 = fArr3[1];
            if (((f4 - f12) * f13) - ((f2 - f10) * f14) >= 0.0f && ((f2 - f6) * f14) - ((f4 - f8) * f13) >= 0.0f) {
                float f15 = fArr3[2];
                float f16 = fArr3[3];
                if (((f8 - f4) * f15) - ((f6 - f2) * f16) >= 0.0f && ((f6 - f10) * f16) - ((f8 - f12) * f15) >= 0.0f) {
                    float f17 = fArr3[4];
                    float f18 = fArr3[5];
                    if (((f12 - f8) * f17) - ((f10 - f6) * f18) >= 0.0f && ((f10 - f2) * f18) - ((f12 - f4) * f17) >= 0.0f) {
                        return true;
                    }
                }
            }
            return false;
        }

        private final float cross(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DoubleFunction generateEotf(TransferParameters transferParameters) {
            if (transferParameters.isHLGish$ui_graphics()) {
                return new o61(transferParameters);
            }
            if (transferParameters.isPQish$ui_graphics()) {
                return new q3(transferParameters, 4);
            }
            return (transferParameters.getE() == 0.0d && transferParameters.getF() == 0.0d) ? new ul0(transferParameters) : new gu2(transferParameters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateEotf$lambda$0(TransferParameters transferParameters, double d) {
            return ColorSpaces.INSTANCE.transferHlgEotf$ui_graphics(transferParameters, d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateEotf$lambda$1(TransferParameters transferParameters, double d) {
            return ColorSpaces.INSTANCE.transferSt2048Eotf$ui_graphics(transferParameters, d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateEotf$lambda$2(TransferParameters transferParameters, double d) {
            return ColorSpaceKt.response(d, transferParameters.getA(), transferParameters.getB(), transferParameters.getC(), transferParameters.getD(), transferParameters.getGamma());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateEotf$lambda$3(TransferParameters transferParameters, double d) {
            return ColorSpaceKt.response(d, transferParameters.getA(), transferParameters.getB(), transferParameters.getC(), transferParameters.getD(), transferParameters.getE(), transferParameters.getF(), transferParameters.getGamma());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DoubleFunction generateOetf(TransferParameters transferParameters) {
            if (transferParameters.isHLGish$ui_graphics()) {
                return new hu2(transferParameters);
            }
            if (transferParameters.isPQish$ui_graphics()) {
                return new s77(transferParameters);
            }
            return (transferParameters.getE() == 0.0d && transferParameters.getF() == 0.0d) ? new ea(transferParameters) : new kk2(transferParameters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateOetf$lambda$0(TransferParameters transferParameters, double d) {
            return ColorSpaces.INSTANCE.transferHlgOetf$ui_graphics(transferParameters, d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateOetf$lambda$1(TransferParameters transferParameters, double d) {
            return ColorSpaces.INSTANCE.transferSt2048Oetf$ui_graphics(transferParameters, d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateOetf$lambda$2(TransferParameters transferParameters, double d) {
            return ColorSpaceKt.rcpResponse(d, transferParameters.getA(), transferParameters.getB(), transferParameters.getC(), transferParameters.getD(), transferParameters.getGamma());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final double generateOetf$lambda$3(TransferParameters transferParameters, double d) {
            return ColorSpaceKt.rcpResponse(d, transferParameters.getA(), transferParameters.getB(), transferParameters.getC(), transferParameters.getD(), transferParameters.getE(), transferParameters.getF(), transferParameters.getGamma());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSrgb(float[] fArr, WhitePoint whitePoint, DoubleFunction doubleFunction, DoubleFunction doubleFunction2, float f, float f2, int i) {
            if (i == 0) {
                return true;
            }
            ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
            if (!ColorSpaceKt.compare(fArr, colorSpaces.getSrgbPrimaries$ui_graphics()) || !ColorSpaceKt.compare(whitePoint, Illuminant.INSTANCE.getD65()) || f != 0.0f || f2 != 1.0f) {
                return false;
            }
            Rgb srgb = colorSpaces.getSrgb();
            for (double d = 0.0d; d <= 1.0d; d += 0.00392156862745098d) {
                if (!compare(d, doubleFunction, srgb.getOetfOrig$ui_graphics()) || !compare(d, doubleFunction2, srgb.getEotfOrig$ui_graphics())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isWideGamut(float[] fArr, float f, float f2) {
            float fArea = area(fArr);
            ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
            if (fArea / area(colorSpaces.getNtsc1953Primaries$ui_graphics()) <= 0.9f || !contains(fArr, colorSpaces.getSrgbPrimaries$ui_graphics())) {
                return f < 0.0f && f2 > 1.0f;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] xyPrimaries(float[] fArr) {
            float[] fArr2 = new float[6];
            if (fArr.length != 9) {
                aq5.o(0, fArr, fArr2, 6);
                return fArr2;
            }
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = f + f2 + fArr[2];
            fArr2[0] = f / f3;
            fArr2[1] = f2 / f3;
            float f4 = fArr[3];
            float f5 = fArr[4];
            float f6 = f4 + f5 + fArr[5];
            fArr2[2] = f4 / f6;
            fArr2[3] = f5 / f6;
            float f7 = fArr[6];
            float f8 = fArr[7];
            float f9 = f7 + f8 + fArr[8];
            fArr2[4] = f7 / f9;
            fArr2[5] = f8 / f9;
            return fArr2;
        }

        public final float[] computePrimaries$ui_graphics(float[] fArr) {
            float[] fArrMul3x3Float3 = ColorSpaceKt.mul3x3Float3(fArr, new float[]{1.0f, 0.0f, 0.0f});
            float[] fArrMul3x3Float4 = ColorSpaceKt.mul3x3Float3(fArr, new float[]{0.0f, 1.0f, 0.0f});
            float[] fArrMul3x3Float5 = ColorSpaceKt.mul3x3Float3(fArr, new float[]{0.0f, 0.0f, 1.0f});
            float f = fArrMul3x3Float3[0];
            float f2 = fArrMul3x3Float3[1];
            float f3 = f + f2 + fArrMul3x3Float3[2];
            float f4 = fArrMul3x3Float4[0];
            float f5 = fArrMul3x3Float4[1];
            float f6 = f4 + f5 + fArrMul3x3Float4[2];
            float f7 = fArrMul3x3Float5[0];
            float f8 = fArrMul3x3Float5[1];
            float f9 = f7 + f8 + fArrMul3x3Float5[2];
            return new float[]{f / f3, f2 / f3, f4 / f6, f5 / f6, f7 / f9, f8 / f9};
        }

        private Companion() {
        }
    }

    public final float[] getInverseTransform() {
        float[] fArr = this.inverseTransform;
        return Arrays.copyOf(fArr, fArr.length);
    }

    public final float[] getPrimaries() {
        float[] fArr = this.primaries;
        return Arrays.copyOf(fArr, fArr.length);
    }

    public final float[] getTransform() {
        float[] fArr = this.transform;
        return Arrays.copyOf(fArr, fArr.length);
    }

    public final float[] fromLinear(float f, float f2, float f3) {
        return fromLinear(new float[]{f, f2, f3});
    }

    public final float[] toLinear(float f, float f2, float f3) {
        return toLinear(new float[]{f, f2, f3});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, nl3<? super Double, Double> nl3Var, nl3<? super Double, Double> nl3Var2) {
        Companion companion = Companion;
        this(str, companion.computePrimaries$ui_graphics(fArr), companion.computeWhitePoint(fArr), null, new v90(nl3Var, 3), new w90(nl3Var2), 0.0f, 1.0f, null, -1);
    }

    public Rgb(String str, float[] fArr, WhitePoint whitePoint, nl3<? super Double, Double> nl3Var, nl3<? super Double, Double> nl3Var2, float f, float f2) {
        this(str, fArr, whitePoint, null, new n3(nl3Var), new rl0(nl3Var2), f, f2, null, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, TransferParameters transferParameters) {
        Companion companion = Companion;
        this(str, companion.computePrimaries$ui_graphics(fArr), companion.computeWhitePoint(fArr), transferParameters, -1);
    }

    public Rgb(String str, float[] fArr, WhitePoint whitePoint, TransferParameters transferParameters) {
        this(str, fArr, whitePoint, transferParameters, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, TransferParameters transferParameters, int i) {
        Companion companion = Companion;
        this(str, fArr, whitePoint, null, companion.generateOetf(transferParameters), companion.generateEotf(transferParameters), 0.0f, 1.0f, transferParameters, i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, double d) {
        Companion companion = Companion;
        this(str, companion.computePrimaries$ui_graphics(fArr), companion.computeWhitePoint(fArr), d, 0.0f, 1.0f, -1);
    }

    public Rgb(String str, float[] fArr, WhitePoint whitePoint, double d) {
        this(str, fArr, whitePoint, d, 0.0f, 1.0f, -1);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(String str, float[] fArr, WhitePoint whitePoint, final double d, float f, float f2, int i) {
        DoubleFunction doubleFunction;
        DoubleFunction doubleFunction2;
        if (d == 1.0d) {
            doubleFunction = DoubleIdentity;
        } else {
            doubleFunction = new DoubleFunction() { // from class: q77
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double invoke(double d2) {
                    return Rgb._init_$lambda$4(d, d2);
                }
            };
        }
        DoubleFunction doubleFunction3 = doubleFunction;
        if (d == 1.0d) {
            doubleFunction2 = DoubleIdentity;
        } else {
            doubleFunction2 = new DoubleFunction() { // from class: r77
                @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
                public final double invoke(double d2) {
                    return Rgb._init_$lambda$5(d, d2);
                }
            };
        }
        this(str, fArr, whitePoint, null, doubleFunction3, doubleFunction2, f, f2, new TransferParameters(d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 96, null), i);
    }

    public Rgb(Rgb rgb, float[] fArr, WhitePoint whitePoint) {
        this(rgb.getName(), rgb.primaries, whitePoint, fArr, rgb.oetfOrig, rgb.eotfOrig, rgb.min, rgb.max, rgb.transferParameters, -1);
    }
}

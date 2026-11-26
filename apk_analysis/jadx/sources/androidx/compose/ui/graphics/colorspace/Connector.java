package androidx.compose.ui.graphics.colorspace;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public class Connector {
    private final ColorSpace destination;
    private final int renderIntent;
    private final ColorSpace source;
    private final float[] transform;
    private final ColorSpace transformDestination;
    private final ColorSpace transformSource;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* JADX WARN: Illegal instructions before constructor call */
    private Connector(ColorSpace colorSpace, ColorSpace colorSpace2, int i) {
        long jM6671getModelxdoWZVw = colorSpace.m6671getModelxdoWZVw();
        ColorModel.Companion companion = ColorModel.Companion;
        this(colorSpace, colorSpace2, ColorModel.m6662equalsimpl0(jM6671getModelxdoWZVw, companion.m6669getRgbxdoWZVw()) ? ColorSpaceKt.adapt$default(colorSpace, Illuminant.INSTANCE.getD50(), null, 2, null) : colorSpace, ColorModel.m6662equalsimpl0(colorSpace2.m6671getModelxdoWZVw(), companion.m6669getRgbxdoWZVw()) ? ColorSpaceKt.adapt$default(colorSpace2, Illuminant.INSTANCE.getD50(), null, 2, null) : colorSpace2, i, Companion.m6679computeTransformYBCOT_4(colorSpace, colorSpace2, i), null);
    }

    public final ColorSpace getDestination() {
        return this.destination;
    }

    /* JADX INFO: renamed from: getRenderIntent-uksYyKA, reason: not valid java name */
    public final int m6676getRenderIntentuksYyKA() {
        return this.renderIntent;
    }

    public final ColorSpace getSource() {
        return this.source;
    }

    public float[] transform(float[] fArr) {
        float[] xyz = this.transformSource.toXyz(fArr);
        float[] fArr2 = this.transform;
        if (fArr2 != null) {
            xyz[0] = xyz[0] * fArr2[0];
            xyz[1] = xyz[1] * fArr2[1];
            xyz[2] = xyz[2] * fArr2[2];
        }
        return this.transformDestination.fromXyz(xyz);
    }

    /* JADX INFO: renamed from: transformToColor-l2rxGTc$ui_graphics, reason: not valid java name */
    public long mo6677transformToColorl2rxGTc$ui_graphics(long j) {
        float fM6238getRedimpl = Color.m6238getRedimpl(j);
        float fM6237getGreenimpl = Color.m6237getGreenimpl(j);
        float fM6235getBlueimpl = Color.m6235getBlueimpl(j);
        float fM6234getAlphaimpl = Color.m6234getAlphaimpl(j);
        long xy$ui_graphics = this.transformSource.toXy$ui_graphics(fM6238getRedimpl, fM6237getGreenimpl, fM6235getBlueimpl);
        float fIntBitsToFloat = Float.intBitsToFloat((int) (xy$ui_graphics >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (xy$ui_graphics & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        float z$ui_graphics = this.transformSource.toZ$ui_graphics(fM6238getRedimpl, fM6237getGreenimpl, fM6235getBlueimpl);
        float[] fArr = this.transform;
        if (fArr != null) {
            fIntBitsToFloat *= fArr[0];
            fIntBitsToFloat2 *= fArr[1];
            z$ui_graphics *= fArr[2];
        }
        float f = fIntBitsToFloat;
        return this.transformDestination.mo6672xyzaToColorJlNiLsg$ui_graphics(f, fIntBitsToFloat2, z$ui_graphics, fM6234getAlphaimpl, this.destination);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: computeTransform-YBCOT_4, reason: not valid java name */
        public final float[] m6679computeTransformYBCOT_4(ColorSpace colorSpace, ColorSpace colorSpace2, int i) {
            if (!RenderIntent.m6685equalsimpl0(i, RenderIntent.Companion.m6689getAbsoluteuksYyKA())) {
                return null;
            }
            long jM6671getModelxdoWZVw = colorSpace.m6671getModelxdoWZVw();
            ColorModel.Companion companion = ColorModel.Companion;
            boolean zM6662equalsimpl0 = ColorModel.m6662equalsimpl0(jM6671getModelxdoWZVw, companion.m6669getRgbxdoWZVw());
            boolean zM6662equalsimpl1 = ColorModel.m6662equalsimpl0(colorSpace2.m6671getModelxdoWZVw(), companion.m6669getRgbxdoWZVw());
            if (zM6662equalsimpl0 && zM6662equalsimpl1) {
                return null;
            }
            if (!zM6662equalsimpl0 && !zM6662equalsimpl1) {
                return null;
            }
            if (!zM6662equalsimpl0) {
                colorSpace = colorSpace2;
            }
            Rgb rgb = (Rgb) colorSpace;
            float[] xyz$ui_graphics = zM6662equalsimpl0 ? rgb.getWhitePoint().toXyz$ui_graphics() : Illuminant.INSTANCE.getD50Xyz$ui_graphics();
            float[] xyz$ui_graphics2 = zM6662equalsimpl1 ? rgb.getWhitePoint().toXyz$ui_graphics() : Illuminant.INSTANCE.getD50Xyz$ui_graphics();
            return new float[]{xyz$ui_graphics[0] / xyz$ui_graphics2[0], xyz$ui_graphics[1] / xyz$ui_graphics2[1], xyz$ui_graphics[2] / xyz$ui_graphics2[2]};
        }

        public final Connector identity$ui_graphics(final ColorSpace colorSpace) {
            final int iM6691getRelativeuksYyKA = RenderIntent.Companion.m6691getRelativeuksYyKA();
            return new Connector(colorSpace, iM6691getRelativeuksYyKA) { // from class: androidx.compose.ui.graphics.colorspace.Connector$Companion$identity$1
                {
                    super(colorSpace, colorSpace, iM6691getRelativeuksYyKA, null);
                }

                @Override // androidx.compose.ui.graphics.colorspace.Connector
                public float[] transform(float[] fArr) {
                    return fArr;
                }

                @Override // androidx.compose.ui.graphics.colorspace.Connector
                /* JADX INFO: renamed from: transformToColor-l2rxGTc$ui_graphics */
                public long mo6677transformToColorl2rxGTc$ui_graphics(long j) {
                    return j;
                }
            };
        }

        private Companion() {
        }
    }

    public static final class RgbConnector extends Connector {
        public static final int $stable = 8;
        private final Rgb mDestination;
        private final Rgb mSource;
        private final float[] mTransform;

        private RgbConnector(Rgb rgb, Rgb rgb2, int i) {
            super(rgb, rgb2, rgb, rgb2, i, null, null);
            this.mSource = rgb;
            this.mDestination = rgb2;
            this.mTransform = m6680computeTransformYBCOT_4(rgb, rgb2, i);
        }

        /* JADX INFO: renamed from: computeTransform-YBCOT_4, reason: not valid java name */
        private final float[] m6680computeTransformYBCOT_4(Rgb rgb, Rgb rgb2, int i) {
            if (ColorSpaceKt.compare(rgb.getWhitePoint(), rgb2.getWhitePoint())) {
                return ColorSpaceKt.mul3x3(rgb2.getInverseTransform$ui_graphics(), rgb.getTransform$ui_graphics());
            }
            float[] transform$ui_graphics = rgb.getTransform$ui_graphics();
            float[] inverseTransform$ui_graphics = rgb2.getInverseTransform$ui_graphics();
            float[] xyz$ui_graphics = rgb.getWhitePoint().toXyz$ui_graphics();
            float[] xyz$ui_graphics2 = rgb2.getWhitePoint().toXyz$ui_graphics();
            WhitePoint whitePoint = rgb.getWhitePoint();
            Illuminant illuminant = Illuminant.INSTANCE;
            if (!ColorSpaceKt.compare(whitePoint, illuminant.getD50())) {
                transform$ui_graphics = ColorSpaceKt.mul3x3(ColorSpaceKt.chromaticAdaptation(Adaptation.Companion.getBradford().getTransform$ui_graphics(), xyz$ui_graphics, illuminant.newD50Xyz$ui_graphics()), rgb.getTransform$ui_graphics());
            }
            if (!ColorSpaceKt.compare(rgb2.getWhitePoint(), illuminant.getD50())) {
                inverseTransform$ui_graphics = ColorSpaceKt.inverse3x3(ColorSpaceKt.mul3x3(ColorSpaceKt.chromaticAdaptation(Adaptation.Companion.getBradford().getTransform$ui_graphics(), xyz$ui_graphics2, illuminant.newD50Xyz$ui_graphics()), rgb2.getTransform$ui_graphics()));
            }
            if (RenderIntent.m6685equalsimpl0(i, RenderIntent.Companion.m6689getAbsoluteuksYyKA())) {
                transform$ui_graphics = ColorSpaceKt.mul3x3Diag(new float[]{xyz$ui_graphics[0] / xyz$ui_graphics2[0], xyz$ui_graphics[1] / xyz$ui_graphics2[1], xyz$ui_graphics[2] / xyz$ui_graphics2[2]}, transform$ui_graphics);
            }
            return ColorSpaceKt.mul3x3(inverseTransform$ui_graphics, transform$ui_graphics);
        }

        @Override // androidx.compose.ui.graphics.colorspace.Connector
        public float[] transform(float[] fArr) {
            fArr[0] = (float) this.mSource.getEotfFunc$ui_graphics().invoke(fArr[0]);
            fArr[1] = (float) this.mSource.getEotfFunc$ui_graphics().invoke(fArr[1]);
            fArr[2] = (float) this.mSource.getEotfFunc$ui_graphics().invoke(fArr[2]);
            ColorSpaceKt.mul3x3Float3(this.mTransform, fArr);
            fArr[0] = (float) this.mDestination.getOetfFunc$ui_graphics().invoke(fArr[0]);
            fArr[1] = (float) this.mDestination.getOetfFunc$ui_graphics().invoke(fArr[1]);
            fArr[2] = (float) this.mDestination.getOetfFunc$ui_graphics().invoke(fArr[2]);
            return fArr;
        }

        @Override // androidx.compose.ui.graphics.colorspace.Connector
        /* JADX INFO: renamed from: transformToColor-l2rxGTc$ui_graphics */
        public long mo6677transformToColorl2rxGTc$ui_graphics(long j) {
            float fM6238getRedimpl = Color.m6238getRedimpl(j);
            float fM6237getGreenimpl = Color.m6237getGreenimpl(j);
            float fM6235getBlueimpl = Color.m6235getBlueimpl(j);
            float fM6234getAlphaimpl = Color.m6234getAlphaimpl(j);
            float fInvoke = (float) this.mSource.getEotfFunc$ui_graphics().invoke(fM6238getRedimpl);
            float fInvoke2 = (float) this.mSource.getEotfFunc$ui_graphics().invoke(fM6237getGreenimpl);
            float fInvoke3 = (float) this.mSource.getEotfFunc$ui_graphics().invoke(fM6235getBlueimpl);
            float[] fArr = this.mTransform;
            return ColorKt.Color((float) this.mDestination.getOetfFunc$ui_graphics().invoke((fArr[6] * fInvoke3) + (fArr[3] * fInvoke2) + (fArr[0] * fInvoke)), (float) this.mDestination.getOetfFunc$ui_graphics().invoke((fArr[7] * fInvoke3) + (fArr[4] * fInvoke2) + (fArr[1] * fInvoke)), (float) this.mDestination.getOetfFunc$ui_graphics().invoke((fArr[8] * fInvoke3) + (fArr[5] * fInvoke2) + (fArr[2] * fInvoke)), fM6234getAlphaimpl, this.mDestination);
        }

        public /* synthetic */ RgbConnector(Rgb rgb, Rgb rgb2, int i, jh2 jh2Var) {
            this(rgb, rgb2, i);
        }
    }

    public final float[] transform(float f, float f2, float f3) {
        return transform(new float[]{f, f2, f3});
    }

    public /* synthetic */ Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, int i, float[] fArr, jh2 jh2Var) {
        this(colorSpace, colorSpace2, colorSpace3, colorSpace4, i, fArr);
    }

    private Connector(ColorSpace colorSpace, ColorSpace colorSpace2, ColorSpace colorSpace3, ColorSpace colorSpace4, int i, float[] fArr) {
        this.source = colorSpace;
        this.destination = colorSpace2;
        this.transformSource = colorSpace3;
        this.transformDestination = colorSpace4;
        this.renderIntent = i;
        this.transform = fArr;
    }

    public /* synthetic */ Connector(ColorSpace colorSpace, ColorSpace colorSpace2, int i, jh2 jh2Var) {
        this(colorSpace, colorSpace2, i);
    }
}

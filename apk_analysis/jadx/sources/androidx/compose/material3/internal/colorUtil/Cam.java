package androidx.compose.material3.internal.colorUtil;

import androidx.core.graphics.ColorUtils;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class Cam {
    private static final float CHROMA_SEARCH_ENDPOINT = 0.4f;
    private static final float DE_MAX = 1.0f;
    private static final float DL_MAX = 0.2f;
    private static final float LIGHTNESS_SEARCH_ENDPOINT = 0.01f;
    private final float astar;
    private final float bstar;
    private final float chroma;
    private final float hue;
    private final float j;
    private float jstar;
    private final float m;
    private final float s;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public Cam(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.hue = f;
        this.chroma = f2;
        this.j = f3;
        this.m = f4;
        this.s = f5;
        this.jstar = f6;
        this.astar = f7;
        this.bstar = f8;
    }

    public final float distance(Cam cam) {
        float f = this.jstar - cam.jstar;
        float f2 = this.astar - cam.astar;
        float f3 = this.bstar - cam.bstar;
        return (float) (Math.pow(Math.sqrt((f3 * f3) + (f2 * f2) + (f * f)), 0.63d) * 1.41d);
    }

    public final float getAstar() {
        return this.astar;
    }

    public final float getBstar() {
        return this.bstar;
    }

    public final float getChroma() {
        return this.chroma;
    }

    public final float getHue() {
        return this.hue;
    }

    public final float getJ() {
        return this.j;
    }

    public final float getJstar() {
        return this.jstar;
    }

    public final float getM() {
        return this.m;
    }

    public final float getS() {
        return this.s;
    }

    public final void setJstar(float f) {
        this.jstar = f;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    public final int viewed(Frame frame) {
        float fSqrt;
        float f = this.chroma;
        if (f == 0.0f) {
            fSqrt = 0.0f;
        } else {
            float f2 = this.j;
            if (f2 == 0.0f) {
                fSqrt = 0.0f;
            } else {
                fSqrt = f / ((float) Math.sqrt(f2 / 100.0f));
            }
        }
        float fPow = fSqrt / ((float) Math.pow(1.64f - ((float) Math.pow((float) Math.pow(0.28999999165534973d, frame.getN()), 0.7300000190734863d)), 1.1111111640930176d));
        float f3 = (this.hue * 3.1415927f) / 180.0f;
        float fCos = (((float) Math.cos(2.0f + f3)) + 3.8f) * 0.25f;
        float aw = frame.getAw() * ((float) Math.pow(this.j / 100.0f, (1.0f / frame.getC()) / frame.getZ()));
        float ncb = frame.getNcb() * frame.getNc() * fCos * 3846.1538f;
        float nbb = aw / frame.getNbb();
        double d = f3;
        float fSin = (float) Math.sin(d);
        float fCos2 = (float) Math.cos(d);
        float f4 = (((0.305f + nbb) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (ncb * 23.0f)));
        float f5 = fCos2 * f4;
        float f6 = f4 * fSin;
        float f7 = nbb * 460.0f;
        float f8 = ((288.0f * f6) + ((451.0f * f5) + f7)) / 1403.0f;
        float fB = rg.b(f6, 261.0f, f7 - (891.0f * f5), 1403.0f);
        float fB2 = rg.b(f6, 6300.0f, f7 - (f5 * 220.0f), 1403.0f);
        float fl = (100.0f / frame.getFl()) * Math.signum(f8) * ((float) Math.pow(Math.max(0.0f, (Math.abs(f8) * 27.13f) / (400.0f - Math.abs(f8))), 2.3809523582458496d));
        float fl2 = (100.0f / frame.getFl()) * Math.signum(fB) * ((float) Math.pow(Math.max(0.0f, (Math.abs(fB) * 27.13f) / (400.0f - Math.abs(fB))), 2.3809523582458496d));
        float fl3 = (100.0f / frame.getFl()) * Math.signum(fB2) * ((float) Math.pow(Math.max(0.0f, (Math.abs(fB2) * 27.13f) / (400.0f - Math.abs(fB2))), 2.3809523582458496d));
        float f9 = fl / frame.getRgbD()[0];
        float f10 = fl2 / frame.getRgbD()[1];
        float f11 = fl3 / frame.getRgbD()[2];
        float[][] cam16rgb_to_xyz = CamUtils.INSTANCE.getCAM16RGB_TO_XYZ();
        float[] fArr = cam16rgb_to_xyz[0];
        float f12 = (fArr[2] * f11) + (fArr[1] * f10) + (fArr[0] * f9);
        float[] fArr2 = cam16rgb_to_xyz[1];
        float f13 = (fArr2[2] * f11) + (fArr2[1] * f10) + (fArr2[0] * f9);
        float[] fArr3 = cam16rgb_to_xyz[2];
        return ColorUtils.XYZToColor(f12, f13, (f11 * fArr3[2]) + (f10 * fArr3[1]) + (f9 * fArr3[0]));
    }

    public final int viewedInSrgb() {
        return viewed(Frame.Companion.getDefault());
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final Cam findCamByJ(float f, float f2, float f3) {
            float f4 = 100.0f;
            float f5 = 1000.0f;
            float f6 = 0.0f;
            Cam cam = null;
            float f7 = 1000.0f;
            while (Math.abs(f6 - f4) > 0.009999999776482582d) {
                float f8 = ((f4 - f6) / 2.0f) + f6;
                int iViewedInSrgb = fromJch(f8, f2, f).viewedInSrgb();
                float fLstarFromInt = CamUtils.INSTANCE.lstarFromInt(iViewedInSrgb);
                float fAbs = (float) Math.abs(f3 - fLstarFromInt);
                if (fAbs < 0.2f) {
                    Cam camFromInt = fromInt(iViewedInSrgb);
                    float fDistance = camFromInt.distance(fromJch(camFromInt.getJ(), camFromInt.getChroma(), f));
                    if (fDistance <= 1.0f) {
                        cam = camFromInt;
                        f5 = fAbs;
                        f7 = fDistance;
                    }
                }
                if (f5 == 0.0f && f7 == 0.0f) {
                    return cam;
                }
                if (fLstarFromInt < f3) {
                    f6 = f8;
                } else {
                    f4 = f8;
                }
            }
            return cam;
        }

        private final Cam fromIntInFrame(int i, Frame frame) {
            CamUtils camUtils = CamUtils.INSTANCE;
            float[] fArrXyzFromInt = camUtils.xyzFromInt(i);
            float[][] xyz_to_cam16rgb = camUtils.getXYZ_TO_CAM16RGB();
            float f = fArrXyzFromInt[0];
            float[] fArr = xyz_to_cam16rgb[0];
            float f2 = fArr[0] * f;
            float f3 = fArrXyzFromInt[1];
            float f4 = (fArr[1] * f3) + f2;
            float f5 = fArrXyzFromInt[2];
            float f6 = (fArr[2] * f5) + f4;
            float[] fArr2 = xyz_to_cam16rgb[1];
            float f7 = (fArr2[2] * f5) + (fArr2[1] * f3) + (fArr2[0] * f);
            float[] fArr3 = xyz_to_cam16rgb[2];
            float f8 = (f5 * fArr3[2]) + (f3 * fArr3[1]) + (f * fArr3[0]);
            float f9 = frame.getRgbD()[0] * f6;
            float f10 = frame.getRgbD()[1] * f7;
            float f11 = frame.getRgbD()[2] * f8;
            float fPow = (float) Math.pow((Math.abs(f9) * frame.getFl()) / 100.0f, 0.41999998688697815d);
            float fPow2 = (float) Math.pow((Math.abs(f10) * frame.getFl()) / 100.0f, 0.41999998688697815d);
            float fPow3 = (float) Math.pow((Math.abs(f11) * frame.getFl()) / 100.0f, 0.41999998688697815d);
            float fSignum = ((Math.signum(f9) * 400.0f) * fPow) / (fPow + 27.13f);
            float fSignum2 = ((Math.signum(f10) * 400.0f) * fPow2) / (fPow2 + 27.13f);
            float fSignum3 = ((Math.signum(f11) * 400.0f) * fPow3) / (fPow3 + 27.13f);
            float f12 = ((((-12.0f) * fSignum2) + (fSignum * 11.0f)) + fSignum3) / 11.0f;
            float fB = rg.b(fSignum3, 2.0f, fSignum + fSignum2, 9.0f);
            float f13 = fSignum2 * 20.0f;
            float f14 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f13)) / 20.0f;
            float f15 = (((fSignum * 40.0f) + f13) + fSignum3) / 20.0f;
            float fAtan2 = (((float) Math.atan2(fB, f12)) * 180.0f) / 3.1415927f;
            if (fAtan2 < 0.0f) {
                fAtan2 += 360.0f;
            } else if (fAtan2 >= 360.0f) {
                fAtan2 -= 360.0f;
            }
            float f16 = fAtan2;
            float f17 = (f16 * 3.1415927f) / 180.0f;
            float fPow4 = ((float) Math.pow((frame.getNbb() * f15) / frame.getAw(), frame.getZ() * frame.getC())) * 100.0f;
            float fPow5 = ((float) Math.pow(((frame.getNcb() * (frame.getNc() * (((((float) Math.cos((((((double) f16) < 20.14d ? 360.0f + f16 : f16) * 3.1415927f) / 180.0f) + 2.0f)) + 3.8f) * 0.25f) * 3846.1538f))) * ((float) Math.sqrt((fB * fB) + (f12 * f12)))) / (f14 + 0.305f), 0.8999999761581421d)) * ((float) Math.pow(1.64f - ((float) Math.pow(0.28999999165534973d, frame.getN())), 0.7300000190734863d));
            float fSqrt = fPow5 * ((float) Math.sqrt(fPow4 / 100.0f));
            float flRoot = frame.getFlRoot() * fSqrt;
            float fSqrt2 = ((float) Math.sqrt((frame.getC() * fPow5) / (frame.getAw() + 4.0f))) * 50.0f;
            float f18 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
            float fLog = ((float) Math.log((0.0228f * flRoot) + 1.0f)) * 43.85965f;
            double d = f17;
            return new Cam(f16, fSqrt, fPow4, flRoot, fSqrt2, f18, fLog * ((float) Math.cos(d)), fLog * ((float) Math.sin(d)));
        }

        private final Cam fromJch(float f, float f2, float f3) {
            return fromJchInFrame(f, f2, f3, Frame.Companion.getDefault());
        }

        private final Cam fromJchInFrame(float f, float f2, float f3, Frame frame) {
            float flRoot = frame.getFlRoot() * f2;
            float fSqrt = ((float) Math.sqrt((frame.getC() * (f2 / ((float) Math.sqrt(((double) f) / 100.0d)))) / (frame.getAw() + 4.0f))) * 50.0f;
            float f4 = (1.7f * f) / ((0.007f * f) + 1.0f);
            float fLog = ((float) Math.log((((double) flRoot) * 0.0228d) + 1.0d)) * 43.85965f;
            double d = (3.1415927f * f3) / 180.0f;
            return new Cam(f3, f2, f, flRoot, fSqrt, f4, fLog * ((float) Math.cos(d)), fLog * ((float) Math.sin(d)));
        }

        private final int getInt(float f, float f2, float f3, Frame frame) {
            if (aa4.e(frame, Frame.Companion.getDefault())) {
                return HctSolver.INSTANCE.solveToInt(f, f2, f3);
            }
            if (f2 < 1.0d || Math.round(f3) <= 0.0d || Math.round(f3) >= 100.0d) {
                return CamUtils.INSTANCE.intFromLstar(f3);
            }
            float fMin = f < 0.0f ? 0.0f : Math.min(360.0f, f);
            Cam cam = null;
            boolean z = true;
            float f4 = 0.0f;
            float f5 = f2;
            while (Math.abs(f4 - f2) >= 0.4000000059604645d) {
                Cam camFindCamByJ = findCamByJ(fMin, f5, f3);
                if (!z) {
                    if (camFindCamByJ == null) {
                        f2 = f5;
                    } else {
                        f4 = f5;
                        cam = camFindCamByJ;
                    }
                    f5 = ((f2 - f4) / 2.0f) + f4;
                } else {
                    if (camFindCamByJ != null) {
                        return camFindCamByJ.viewed(frame);
                    }
                    f5 = ((f2 - f4) / 2.0f) + f4;
                    z = false;
                }
            }
            return cam == null ? CamUtils.INSTANCE.intFromLstar(f3) : cam.viewed(frame);
        }

        public final Cam fromInt(int i) {
            return fromIntInFrame(i, Frame.Companion.getDefault());
        }

        private Companion() {
        }

        public final int getInt(float f, float f2, float f3) {
            return getInt(f, f2, f3, Frame.Companion.getDefault());
        }
    }
}

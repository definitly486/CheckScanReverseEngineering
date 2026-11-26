package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.media3.extractor.ts.PsExtractor;
import defpackage.fg;
import defpackage.kx6;
import defpackage.nn1;
import defpackage.u96;
import defpackage.x74;
import defpackage.y74;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ShapesKt {
    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, int i, float f, float f2, float f3) {
        companion.getClass();
        if (i >= 3) {
            return RoundedPolygonKt.RoundedPolygon$default(i, f / ((float) Math.cos(Utils.getFloatPi() / i)), f2, f3, new CornerRounding(f, 0.0f, 2, null), null, 32, null);
        }
        fg.c("Circle must have at least three vertices");
        return null;
    }

    public static /* synthetic */ RoundedPolygon circle$default(RoundedPolygon.Companion companion, int i, float f, float f2, float f3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8;
        }
        if ((i2 & 2) != 0) {
            f = 1.0f;
        }
        if ((i2 & 4) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            f3 = 0.0f;
        }
        return circle(companion, i, f, f2, f3);
    }

    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f, float f2, float f3, float f4, float f5) {
        companion.getClass();
        if (f <= 0.0f || f2 <= 0.0f) {
            fg.c("Pill shapes must have positive width and height");
            return null;
        }
        float f6 = f / 2.0f;
        float f7 = f2 / 2.0f;
        float f8 = f6 + f4;
        float f9 = f7 + f5;
        float f10 = (-f6) + f4;
        float f11 = (-f7) + f5;
        return RoundedPolygonKt.RoundedPolygon$default(new float[]{f8, f9, f10, f9, f10, f11, f8, f11}, new CornerRounding(Math.min(f6, f7), f3), null, f4, f5, 4, null);
    }

    public static /* synthetic */ RoundedPolygon pill$default(RoundedPolygon.Companion companion, float f, float f2, float f3, float f4, float f5, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 2.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        return pill(companion, f, f2, f3, f4, (i & 16) != 0 ? 0.0f : f5);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f4, float f5, float f6, float f7) {
        List<CornerRounding> arrayList;
        companion.getClass();
        cornerRounding.getClass();
        if (f <= 0.0f || f2 <= 0.0f) {
            fg.c("Pill shapes must have positive width and height");
            return null;
        }
        if (f3 <= 0.0f || f3 > 1.0f) {
            fg.c("innerRadius must be between 0 and 1");
            return null;
        }
        if (list != null || cornerRounding2 == null) {
            arrayList = list;
        } else {
            y74 y74VarN = kx6.n(0, i);
            arrayList = new ArrayList<>();
            x74 it = y74VarN.iterator();
            while (it.d) {
                it.nextInt();
                nn1.s(u96.i(cornerRounding, cornerRounding2), arrayList);
            }
        }
        return RoundedPolygonKt.RoundedPolygon(pillStarVerticesFromNumVerts(i, f, f2, f3, f4, f5, f6, f7), cornerRounding, arrayList, f6, f7);
    }

    public static /* synthetic */ RoundedPolygon pillStar$default(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding, CornerRounding cornerRounding2, List list, float f4, float f5, float f6, float f7, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = 2.0f;
        }
        if ((i2 & 2) != 0) {
            f2 = 1.0f;
        }
        if ((i2 & 4) != 0) {
            i = 8;
        }
        if ((i2 & 8) != 0) {
            f3 = 0.5f;
        }
        if ((i2 & 16) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i2 & 32) != 0) {
            cornerRounding2 = null;
        }
        if ((i2 & 64) != 0) {
            list = null;
        }
        if ((i2 & 128) != 0) {
            f4 = 0.5f;
        }
        if ((i2 & 256) != 0) {
            f5 = 0.0f;
        }
        if ((i2 & 512) != 0) {
            f6 = 0.0f;
        }
        return pillStar(companion, f, f2, i, f3, cornerRounding, cornerRounding2, list, f4, f5, f6, (i2 & 1024) != 0 ? 0.0f : f7);
    }

    private static final float[] pillStarVerticesFromNumVerts(int i, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8;
        float f9;
        long jM1016constructorimpl;
        float fMin = Math.min(f, f2);
        float f10 = f2 - f;
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        float f11 = f - f2;
        if (f11 < 0.0f) {
            f11 = 0.0f;
        }
        float f12 = f10 / 2.0f;
        float f13 = f11 / 2.0f;
        float fInterpolate = Utils.interpolate(f3, 1.0f, f4) * Utils.getTwoPi() * fMin;
        float f14 = (2.0f * f10) + (2.0f * f11) + fInterpolate;
        float f15 = fInterpolate / 4.0f;
        float f16 = f12 + f15;
        float f17 = f16 + f11;
        float f18 = f17 + f15;
        float f19 = f18 + f10;
        float f20 = f19 + f15;
        float f21 = f20 + f11;
        float f22 = f21 + f15;
        float[] fArr = {0.0f, f12, f16, f17, f18, f19, f20, f21, f22, f22 + f12, f14};
        int i2 = i * 2;
        float f23 = f14 / i2;
        float f24 = f5 * f14;
        float[] fArr2 = new float[i * 4];
        float f25 = f11;
        long jM1016constructorimpl2 = FloatFloatPair.m1016constructorimpl(f13, f12);
        float f26 = -f13;
        long jM1016constructorimpl3 = FloatFloatPair.m1016constructorimpl(f26, f12);
        float f27 = -f12;
        long jM1016constructorimpl4 = FloatFloatPair.m1016constructorimpl(f26, f27);
        long jM1016constructorimpl5 = FloatFloatPair.m1016constructorimpl(f13, f27);
        float f28 = f10;
        float f29 = f12;
        int i3 = 0;
        float f30 = 0.0f;
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i2) {
            float f31 = f24 % f14;
            if (f31 < f30) {
                i4 = 0;
            }
            while (true) {
                int i6 = (i4 + 1) % 11;
                float f32 = fArr[i6];
                if (f31 >= f32) {
                    f29 = fArr[(i6 + 1) % 11];
                    i4 = i6;
                    f30 = f32;
                } else {
                    float f33 = (f31 - f30) / (f29 - f30);
                    float f34 = z ? fMin * f3 : fMin;
                    switch (i4) {
                        case 0:
                            f8 = f26;
                            float f35 = f34;
                            f9 = f12;
                            jM1016constructorimpl = FloatFloatPair.m1016constructorimpl(f35, f33 * f9);
                            break;
                        case 1:
                            f8 = f26;
                            float f36 = f34;
                            f9 = f12;
                            jM1016constructorimpl = PointKt.m9328plusybeJwSQ(Utils.m9344radialToCartesianL6JJ3z0$default(f36, (Utils.getFloatPi() * f33) / 2.0f, 0L, 4, null), jM1016constructorimpl2);
                            break;
                        case 2:
                            f8 = f26;
                            float f37 = f34;
                            f9 = f12;
                            jM1016constructorimpl = FloatFloatPair.m1016constructorimpl(f13 - (f33 * f25), f37);
                            break;
                        case 3:
                            f8 = f26;
                            float f38 = f34;
                            f9 = f12;
                            jM1016constructorimpl = PointKt.m9328plusybeJwSQ(Utils.m9344radialToCartesianL6JJ3z0$default(f38, ((Utils.getFloatPi() * f33) / 2.0f) + (Utils.getFloatPi() / 2.0f), 0L, 4, null), jM1016constructorimpl3);
                            break;
                        case 4:
                            f8 = f26;
                            float f39 = f34;
                            f9 = f12;
                            jM1016constructorimpl = FloatFloatPair.m1016constructorimpl(-f39, f9 - (f33 * f28));
                            break;
                        case 5:
                            f8 = f26;
                            float f40 = f34;
                            f9 = f12;
                            jM1016constructorimpl = PointKt.m9328plusybeJwSQ(Utils.m9344radialToCartesianL6JJ3z0$default(f40, ((Utils.getFloatPi() * f33) / 2.0f) + Utils.getFloatPi(), 0L, 4, null), jM1016constructorimpl4);
                            break;
                        case 6:
                            f8 = f26;
                            float f41 = f34;
                            f9 = f12;
                            jM1016constructorimpl = FloatFloatPair.m1016constructorimpl((f33 * f25) + f8, -f41);
                            break;
                        case 7:
                            f8 = f26;
                            float f42 = f34;
                            f9 = f12;
                            jM1016constructorimpl = PointKt.m9328plusybeJwSQ(Utils.m9344radialToCartesianL6JJ3z0$default(f42, ((Utils.getFloatPi() * f33) / 2.0f) + (Utils.getFloatPi() * 1.5f), 0L, 4, null), jM1016constructorimpl5);
                            break;
                        default:
                            f8 = f26;
                            jM1016constructorimpl = FloatFloatPair.m1016constructorimpl(f34, (f33 * f12) + f27);
                            f9 = f12;
                            break;
                    }
                    int i7 = i5 + 1;
                    fArr2[i5] = PointKt.m9324getXDnnuFBc(jM1016constructorimpl) + f6;
                    i5 += 2;
                    fArr2[i7] = PointKt.m9325getYDnnuFBc(jM1016constructorimpl) + f7;
                    f24 += f23;
                    z = !z;
                    f12 = f9;
                    i3++;
                    f26 = f8;
                }
            }
        }
        return fArr2;
    }

    public static final RoundedPolygon rectangle(RoundedPolygon.Companion companion, float f, float f2, CornerRounding cornerRounding, List<CornerRounding> list, float f3, float f4) {
        companion.getClass();
        cornerRounding.getClass();
        float f5 = f / 2.0f;
        float f6 = f3 - f5;
        float f7 = f2 / 2.0f;
        float f8 = f4 - f7;
        float f9 = f5 + f3;
        float f10 = f7 + f4;
        return RoundedPolygonKt.RoundedPolygon(new float[]{f9, f10, f6, f10, f6, f8, f9, f8}, cornerRounding, list, f3, f4);
    }

    public static /* synthetic */ RoundedPolygon rectangle$default(RoundedPolygon.Companion companion, float f, float f2, CornerRounding cornerRounding, List list, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 2.0f;
        }
        if ((i & 2) != 0) {
            f2 = 2.0f;
        }
        if ((i & 4) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i & 8) != 0) {
            list = null;
        }
        if ((i & 16) != 0) {
            f3 = 0.0f;
        }
        if ((i & 32) != 0) {
            f4 = 0.0f;
        }
        return rectangle(companion, f, f2, cornerRounding, list, f3, f4);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i, float f, float f2, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f3, float f4) {
        companion.getClass();
        cornerRounding.getClass();
        if (f <= 0.0f || f2 <= 0.0f) {
            fg.c("Star radii must both be greater than 0");
            return null;
        }
        if (f2 >= f) {
            fg.c("innerRadius must be less than radius");
            return null;
        }
        if (list == null && cornerRounding2 != null) {
            y74 y74VarN = kx6.n(0, i);
            list = new ArrayList<>();
            x74 it = y74VarN.iterator();
            while (it.d) {
                it.nextInt();
                nn1.s(u96.i(cornerRounding, cornerRounding2), list);
            }
        }
        return RoundedPolygonKt.RoundedPolygon(starVerticesFromNumVerts(i, f, f2, f3, f4), cornerRounding, list, f3, f4);
    }

    public static /* synthetic */ RoundedPolygon star$default(RoundedPolygon.Companion companion, int i, float f, float f2, CornerRounding cornerRounding, CornerRounding cornerRounding2, List list, float f3, float f4, int i2, Object obj) {
        return star(companion, i, (i2 & 2) != 0 ? 1.0f : f, (i2 & 4) != 0 ? 0.5f : f2, (i2 & 8) != 0 ? CornerRounding.Unrounded : cornerRounding, (i2 & 16) != 0 ? null : cornerRounding2, (i2 & 32) == 0 ? list : null, (i2 & 64) != 0 ? 0.0f : f3, (i2 & 128) != 0 ? 0.0f : f4);
    }

    private static final float[] starVerticesFromNumVerts(int i, float f, float f2, float f3, float f4) {
        float[] fArr = new float[i * 4];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            float f5 = i;
            long jM9344radialToCartesianL6JJ3z0$default = Utils.m9344radialToCartesianL6JJ3z0$default(f, (Utils.getFloatPi() / f5) * 2.0f * i3, 0L, 4, null);
            fArr[i2] = PointKt.m9324getXDnnuFBc(jM9344radialToCartesianL6JJ3z0$default) + f3;
            fArr[i2 + 1] = PointKt.m9325getYDnnuFBc(jM9344radialToCartesianL6JJ3z0$default) + f4;
            long jM9344radialToCartesianL6JJ3z0$default2 = Utils.m9344radialToCartesianL6JJ3z0$default(f2, (Utils.getFloatPi() / f5) * ((i3 * 2) + 1), 0L, 4, null);
            int i4 = i2 + 3;
            fArr[i2 + 2] = PointKt.m9324getXDnnuFBc(jM9344radialToCartesianL6JJ3z0$default2) + f3;
            i2 += 4;
            fArr[i4] = PointKt.m9325getYDnnuFBc(jM9344radialToCartesianL6JJ3z0$default2) + f4;
        }
        return fArr;
    }

    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, int i) {
        companion.getClass();
        return circle$default(companion, i, 0.0f, 0.0f, 0.0f, 14, null);
    }

    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, int i, float f) {
        companion.getClass();
        return circle$default(companion, i, f, 0.0f, 0.0f, 12, null);
    }

    public static final RoundedPolygon circle(RoundedPolygon.Companion companion, int i, float f, float f2) {
        companion.getClass();
        return circle$default(companion, i, f, f2, 0.0f, 8, null);
    }

    public static final RoundedPolygon circle(RoundedPolygon.Companion companion) {
        companion.getClass();
        return circle$default(companion, 0, 0.0f, 0.0f, 0.0f, 15, null);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i, float f) {
        companion.getClass();
        return star$default(companion, i, f, 0.0f, null, null, null, 0.0f, 0.0f, 252, null);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i, float f, float f2) {
        companion.getClass();
        return star$default(companion, i, f, f2, null, null, null, 0.0f, 0.0f, 248, null);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i, float f, float f2, CornerRounding cornerRounding) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i, f, f2, cornerRounding, null, null, 0.0f, 0.0f, PsExtractor.VIDEO_STREAM_MASK, null);
    }

    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f) {
        companion.getClass();
        return pill$default(companion, f, 0.0f, 0.0f, 0.0f, 0.0f, 30, null);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i, float f, float f2, CornerRounding cornerRounding, CornerRounding cornerRounding2) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i, f, f2, cornerRounding, cornerRounding2, null, 0.0f, 0.0f, 224, null);
    }

    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f, float f2) {
        companion.getClass();
        return pill$default(companion, f, f2, 0.0f, 0.0f, 0.0f, 28, null);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i, float f, float f2, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i, f, f2, cornerRounding, cornerRounding2, list, 0.0f, 0.0f, PsExtractor.AUDIO_STREAM, null);
    }

    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f, float f2, float f3) {
        companion.getClass();
        return pill$default(companion, f, f2, f3, 0.0f, 0.0f, 24, null);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i, float f, float f2, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f3) {
        companion.getClass();
        cornerRounding.getClass();
        return star$default(companion, i, f, f2, cornerRounding, cornerRounding2, list, f3, 0.0f, 128, null);
    }

    public static final RoundedPolygon pill(RoundedPolygon.Companion companion, float f, float f2, float f3, float f4) {
        companion.getClass();
        return pill$default(companion, f, f2, f3, f4, 0.0f, 16, null);
    }

    public static final RoundedPolygon star(RoundedPolygon.Companion companion, int i) {
        companion.getClass();
        return star$default(companion, i, 0.0f, 0.0f, null, null, null, 0.0f, 0.0f, 254, null);
    }

    public static final RoundedPolygon pill(RoundedPolygon.Companion companion) {
        companion.getClass();
        return pill$default(companion, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 31, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f) {
        companion.getClass();
        return pillStar$default(companion, f, 0.0f, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2046, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2) {
        companion.getClass();
        return pillStar$default(companion, f, f2, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2044, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i) {
        companion.getClass();
        return pillStar$default(companion, f, f2, i, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2040, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3) {
        companion.getClass();
        return pillStar$default(companion, f, f2, i, f3, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2032, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f, f2, i, f3, cornerRounding, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2016, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding, CornerRounding cornerRounding2) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f, f2, i, f3, cornerRounding, cornerRounding2, null, 0.0f, 0.0f, 0.0f, 0.0f, 1984, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f, f2, i, f3, cornerRounding, cornerRounding2, list, 0.0f, 0.0f, 0.0f, 0.0f, 1920, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f4) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f, f2, i, f3, cornerRounding, cornerRounding2, list, f4, 0.0f, 0.0f, 0.0f, 1792, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f4, float f5) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f, f2, i, f3, cornerRounding, cornerRounding2, list, f4, f5, 0.0f, 0.0f, 1536, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion, float f, float f2, int i, float f3, CornerRounding cornerRounding, CornerRounding cornerRounding2, List<CornerRounding> list, float f4, float f5, float f6) {
        companion.getClass();
        cornerRounding.getClass();
        return pillStar$default(companion, f, f2, i, f3, cornerRounding, cornerRounding2, list, f4, f5, f6, 0.0f, 1024, null);
    }

    public static final RoundedPolygon pillStar(RoundedPolygon.Companion companion) {
        companion.getClass();
        return pillStar$default(companion, 0.0f, 0.0f, 0, 0.0f, null, null, null, 0.0f, 0.0f, 0.0f, 0.0f, 2047, null);
    }
}

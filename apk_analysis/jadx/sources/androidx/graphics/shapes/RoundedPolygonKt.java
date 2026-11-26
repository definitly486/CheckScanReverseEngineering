package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.collection.MutableFloatList;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.fg;
import defpackage.kn1;
import defpackage.kx6;
import defpackage.qn1;
import defpackage.u74;
import defpackage.u96;
import defpackage.y74;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RoundedPolygonKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding, List<CornerRounding> list, float f, float f2) {
        CornerRounding cornerRounding2;
        Float fValueOf = Float.valueOf(1.0f);
        fArr.getClass();
        cornerRounding.getClass();
        if (fArr.length < 6) {
            fg.c("Polygons must have at least 3 vertices");
            return null;
        }
        int i = 2;
        if (fArr.length % 2 == 1) {
            fg.c("The vertices array should have even size");
            return null;
        }
        if (list != null && list.size() * 2 != fArr.length) {
            fg.c("perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = fArr.length / 2;
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            CornerRounding cornerRounding3 = (list == null || (cornerRounding2 = list.get(i3)) == null) ? cornerRounding : cornerRounding2;
            int i4 = (((i3 + length) - 1) % length) * 2;
            int i5 = i3 + 1;
            int i6 = (i5 % length) * 2;
            int i7 = i3 * 2;
            arrayList2.add(new RoundedCorner(FloatFloatPair.m1016constructorimpl(fArr[i4], fArr[i4 + 1]), FloatFloatPair.m1016constructorimpl(fArr[i7], fArr[i7 + 1]), FloatFloatPair.m1016constructorimpl(fArr[i6], fArr[i6 + 1]), cornerRounding3, null));
            i3 = i5;
        }
        y74 y74VarN = kx6.n(0, length);
        ArrayList arrayList3 = new ArrayList(kn1.q(y74VarN, 10));
        Iterator<Integer> it = y74VarN.iterator();
        while (it.hasNext()) {
            int iNextInt = ((u74) it).nextInt();
            int i8 = (iNextInt + 1) % length;
            float expectedRoundCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedRoundCut() + ((RoundedCorner) arrayList2.get(i8)).getExpectedRoundCut();
            float expectedCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedCut() + ((RoundedCorner) arrayList2.get(i8)).getExpectedCut();
            int i9 = iNextInt * 2;
            int i10 = i8 * 2;
            float fDistance = Utils.distance(fArr[i9] - fArr[i10], fArr[i9 + 1] - fArr[i10 + 1]);
            arrayList3.add(expectedRoundCut > fDistance ? new b36(Float.valueOf(fDistance / expectedRoundCut), Float.valueOf(0.0f)) : expectedCut > fDistance ? new b36(fValueOf, Float.valueOf((fDistance - expectedRoundCut) / (expectedCut - expectedRoundCut))) : new b36(fValueOf, fValueOf));
        }
        for (int i11 = 0; i11 < length; i11++) {
            MutableFloatList mutableFloatList = new MutableFloatList(2);
            for (int i12 = 0; i12 < 2; i12++) {
                b36 b36Var = (b36) arrayList3.get((((i11 + length) - 1) + i12) % length);
                mutableFloatList.add(((((RoundedCorner) arrayList2.get(i11)).getExpectedCut() - ((RoundedCorner) arrayList2.get(i11)).getExpectedRoundCut()) * ((Number) b36Var.c).floatValue()) + (((RoundedCorner) arrayList2.get(i11)).getExpectedRoundCut() * ((Number) b36Var.b).floatValue()));
            }
            arrayList.add(((RoundedCorner) arrayList2.get(i11)).getCubics(mutableFloatList.get(0), mutableFloatList.get(1)));
        }
        ArrayList arrayList4 = new ArrayList();
        while (i2 < length) {
            int i13 = i2 + 1;
            int i14 = i13 % length;
            int i15 = i2 * 2;
            long jM1016constructorimpl = FloatFloatPair.m1016constructorimpl(fArr[i15], fArr[i15 + 1]);
            int i16 = (((i2 + length) - 1) % length) * i;
            long jM1016constructorimpl2 = FloatFloatPair.m1016constructorimpl(fArr[i16], fArr[i16 + 1]);
            int i17 = i14 * 2;
            arrayList4.add(new Feature.Corner((List) arrayList.get(i2), jM1016constructorimpl, ((RoundedCorner) arrayList2.get(i2)).m9336getCenter1ufDz9w(), PointKt.m9315clockwiseybeJwSQ(PointKt.m9327minusybeJwSQ(jM1016constructorimpl, jM1016constructorimpl2), PointKt.m9327minusybeJwSQ(FloatFloatPair.m1016constructorimpl(fArr[i17], fArr[i17 + 1]), jM1016constructorimpl)), null));
            arrayList4.add(new Feature.Edge(u96.h(Cubic.Companion.straightLine(((Cubic) qn1.b0((List) arrayList.get(i2))).getAnchor1X(), ((Cubic) qn1.b0((List) arrayList.get(i2))).getAnchor1Y(), ((Cubic) qn1.T((List) arrayList.get(i14))).getAnchor0X(), ((Cubic) qn1.T((List) arrayList.get(i14))).getAnchor0Y()))));
            i2 = i13;
            length = length;
            i = 2;
        }
        long jCalculateCenter = (f == Float.MIN_VALUE || f2 == Float.MIN_VALUE) ? calculateCenter(fArr) : FloatFloatPair.m1016constructorimpl(f, f2);
        return new RoundedPolygon(arrayList4, Float.intBitsToFloat((int) (jCalculateCenter >> 32)), Float.intBitsToFloat((int) (jCalculateCenter & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    public static /* synthetic */ RoundedPolygon RoundedPolygon$default(int i, float f, float f2, float f3, CornerRounding cornerRounding, List list, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            f = 1.0f;
        }
        if ((i2 & 4) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            f3 = 0.0f;
        }
        if ((i2 & 16) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i2 & 32) != 0) {
            list = null;
        }
        List list2 = list;
        return RoundedPolygon(i, f, f2, f3, cornerRounding, list2);
    }

    private static final long calculateCenter(float[] fArr) {
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        while (i < fArr.length) {
            int i2 = i + 1;
            f += fArr[i];
            i += 2;
            f2 += fArr[i2];
        }
        return FloatFloatPair.m1016constructorimpl((f / fArr.length) / 2.0f, (f2 / fArr.length) / 2.0f);
    }

    private static final float[] verticesFromNumVerts(int i, float f, float f2, float f3) {
        float[] fArr = new float[i * 2];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            float f4 = f;
            long jM9328plusybeJwSQ = PointKt.m9328plusybeJwSQ(Utils.m9344radialToCartesianL6JJ3z0$default(f4, (Utils.getFloatPi() / i) * 2.0f * i2, 0L, 4, null), FloatFloatPair.m1016constructorimpl(f2, f3));
            int i4 = i3 + 1;
            fArr[i3] = PointKt.m9324getXDnnuFBc(jM9328plusybeJwSQ);
            i3 += 2;
            fArr[i4] = PointKt.m9325getYDnnuFBc(jM9328plusybeJwSQ);
            i2++;
            f = f4;
        }
        return fArr;
    }

    public static /* synthetic */ RoundedPolygon RoundedPolygon$default(float[] fArr, CornerRounding cornerRounding, List list, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i & 4) != 0) {
            list = null;
        }
        if ((i & 8) != 0) {
            f = Float.MIN_VALUE;
        }
        if ((i & 16) != 0) {
            f2 = Float.MIN_VALUE;
        }
        return RoundedPolygon(fArr, cornerRounding, (List<CornerRounding>) list, f, f2);
    }

    public static final RoundedPolygon RoundedPolygon(int i, float f) {
        return RoundedPolygon$default(i, f, 0.0f, 0.0f, null, null, 60, null);
    }

    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2) {
        return RoundedPolygon$default(i, f, f2, 0.0f, null, null, 56, null);
    }

    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2, float f3) {
        return RoundedPolygon$default(i, f, f2, f3, null, null, 48, null);
    }

    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2, float f3, CornerRounding cornerRounding) {
        cornerRounding.getClass();
        return RoundedPolygon$default(i, f, f2, f3, cornerRounding, null, 32, null);
    }

    public static final RoundedPolygon RoundedPolygon(float[] fArr) {
        fArr.getClass();
        return RoundedPolygon$default(fArr, null, null, 0.0f, 0.0f, 30, null);
    }

    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding) {
        fArr.getClass();
        cornerRounding.getClass();
        return RoundedPolygon$default(fArr, cornerRounding, null, 0.0f, 0.0f, 28, null);
    }

    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding, List<CornerRounding> list) {
        fArr.getClass();
        cornerRounding.getClass();
        return RoundedPolygon$default(fArr, cornerRounding, list, 0.0f, 0.0f, 24, null);
    }

    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding, List<CornerRounding> list, float f) {
        fArr.getClass();
        cornerRounding.getClass();
        return RoundedPolygon$default(fArr, cornerRounding, list, f, 0.0f, 16, null);
    }

    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2, float f3, CornerRounding cornerRounding, List<CornerRounding> list) {
        cornerRounding.getClass();
        return RoundedPolygon(verticesFromNumVerts(i, f, f2, f3), cornerRounding, list, f2, f3);
    }

    public static final RoundedPolygon RoundedPolygon(RoundedPolygon roundedPolygon) {
        roundedPolygon.getClass();
        return new RoundedPolygon(roundedPolygon.getFeatures$graphics_shapes_release(), roundedPolygon.getCenterX(), roundedPolygon.getCenterY());
    }

    public static final RoundedPolygon RoundedPolygon(int i) {
        return RoundedPolygon$default(i, 0.0f, 0.0f, 0.0f, null, null, 62, null);
    }
}

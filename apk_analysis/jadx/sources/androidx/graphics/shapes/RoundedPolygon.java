package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import defpackage.aa4;
import defpackage.ar4;
import defpackage.b36;
import defpackage.fg;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.u96;
import defpackage.xy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RoundedPolygon {
    public static final Companion Companion = new Companion(null);
    private final float centerX;
    private final float centerY;
    private final List<Cubic> cubics;
    private final List<Feature> features;

    /* JADX WARN: Multi-variable type inference failed */
    public RoundedPolygon(List<? extends Feature> list, float f, float f2) {
        ArrayList arrayListK;
        ArrayList arrayListK2;
        Cubic cubic;
        Cubic cubic2;
        List<Cubic> cubics;
        list.getClass();
        this.features = list;
        this.centerX = f;
        this.centerY = f2;
        ar4 ar4VarE = u96.e();
        int i = 0;
        if (list.size() <= 0 || ((Feature) list.get(0)).getCubics().size() != 3) {
            arrayListK = null;
            arrayListK2 = null;
        } else {
            b36<Cubic, Cubic> b36VarSplit = ((Feature) list.get(0)).getCubics().get(1).split(0.5f);
            Cubic cubic3 = b36VarSplit.b;
            Cubic cubic4 = b36VarSplit.c;
            arrayListK2 = u96.k(((Feature) list.get(0)).getCubics().get(0), cubic3);
            arrayListK = u96.k(cubic4, ((Feature) list.get(0)).getCubics().get(2));
        }
        int size = list.size();
        if (size >= 0) {
            int i2 = 0;
            cubic = null;
            cubic2 = null;
            while (true) {
                if (i2 == 0 && arrayListK != null) {
                    cubics = arrayListK;
                } else if (i2 != this.features.size()) {
                    cubics = this.features.get(i2).getCubics();
                } else if (arrayListK2 == null) {
                    break;
                } else {
                    cubics = arrayListK2;
                }
                int size2 = cubics.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Cubic cubic5 = cubics.get(i3);
                    if (!cubic5.zeroLength$graphics_shapes_release()) {
                        if (cubic2 != null) {
                            ar4VarE.add(cubic2);
                        }
                        if (cubic == null) {
                            cubic = cubic5;
                            cubic2 = cubic;
                        } else {
                            cubic2 = cubic5;
                        }
                    } else if (cubic2 != null) {
                        cubic2.getPoints$graphics_shapes_release()[6] = cubic5.getAnchor1X();
                        cubic2.getPoints$graphics_shapes_release()[7] = cubic5.getAnchor1Y();
                    }
                }
                if (i2 == size) {
                    break;
                } else {
                    i2++;
                }
            }
        } else {
            cubic = null;
            cubic2 = null;
        }
        if (cubic2 != null && cubic != null) {
            ar4VarE.add(CubicKt.Cubic(cubic2.getAnchor0X(), cubic2.getAnchor0Y(), cubic2.getControl0X(), cubic2.getControl0Y(), cubic2.getControl1X(), cubic2.getControl1Y(), cubic.getAnchor0X(), cubic.getAnchor0Y()));
        }
        ar4 ar4VarD = u96.d(ar4VarE);
        this.cubics = ar4VarD;
        Object obj = ar4VarD.get(ar4VarD.size() - 1);
        int size3 = ar4VarD.size();
        while (i < size3) {
            Cubic cubic6 = this.cubics.get(i);
            Cubic cubic7 = (Cubic) obj;
            if (Math.abs(cubic6.getAnchor0X() - cubic7.getAnchor1X()) > 1.0E-4f || Math.abs(cubic6.getAnchor0Y() - cubic7.getAnchor1Y()) > 1.0E-4f) {
                fg.c("RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics");
                throw null;
            }
            i++;
            obj = cubic6;
        }
    }

    public static /* synthetic */ float[] calculateBounds$default(RoundedPolygon roundedPolygon, float[] fArr, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            fArr = new float[4];
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return roundedPolygon.calculateBounds(fArr, z);
    }

    public static /* synthetic */ float[] calculateMaxBounds$default(RoundedPolygon roundedPolygon, float[] fArr, int i, Object obj) {
        if ((i & 1) != 0) {
            fArr = new float[4];
        }
        return roundedPolygon.calculateMaxBounds(fArr);
    }

    public final float[] calculateBounds(float[] fArr, boolean z) {
        fArr.getClass();
        if (fArr.length < 4) {
            fg.c("Required bounds size of 4");
            return null;
        }
        int size = this.cubics.size();
        float fMax = Float.MIN_VALUE;
        float fMin = Float.MAX_VALUE;
        float fMin2 = Float.MAX_VALUE;
        float fMax2 = Float.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            this.cubics.get(i).calculateBounds$graphics_shapes_release(fArr, z);
            fMin = Math.min(fMin, fArr[0]);
            fMin2 = Math.min(fMin2, fArr[1]);
            fMax = Math.max(fMax, fArr[2]);
            fMax2 = Math.max(fMax2, fArr[3]);
        }
        fArr[0] = fMin;
        fArr[1] = fMin2;
        fArr[2] = fMax;
        fArr[3] = fMax2;
        return fArr;
    }

    public final float[] calculateMaxBounds(float[] fArr) {
        fArr.getClass();
        if (fArr.length < 4) {
            fg.c("Required bounds size of 4");
            return null;
        }
        int size = this.cubics.size();
        float fMax = 0.0f;
        for (int i = 0; i < size; i++) {
            Cubic cubic = this.cubics.get(i);
            float fDistanceSquared = Utils.distanceSquared(cubic.getAnchor0X() - this.centerX, cubic.getAnchor0Y() - this.centerY);
            long jM9312pointOnCurveOOQOV4g$graphics_shapes_release = cubic.m9312pointOnCurveOOQOV4g$graphics_shapes_release(0.5f);
            fMax = Math.max(fMax, Math.max(fDistanceSquared, Utils.distanceSquared(PointKt.m9324getXDnnuFBc(jM9312pointOnCurveOOQOV4g$graphics_shapes_release) - this.centerX, PointKt.m9325getYDnnuFBc(jM9312pointOnCurveOOQOV4g$graphics_shapes_release) - this.centerY)));
        }
        float fSqrt = (float) Math.sqrt(fMax);
        float f = this.centerX;
        fArr[0] = f - fSqrt;
        float f2 = this.centerY;
        fArr[1] = f2 - fSqrt;
        fArr[2] = f + fSqrt;
        fArr[3] = f2 + fSqrt;
        return fArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RoundedPolygon) {
            return aa4.e(this.features, ((RoundedPolygon) obj).features);
        }
        return false;
    }

    public final float getCenterX() {
        return this.centerX;
    }

    public final float getCenterY() {
        return this.centerY;
    }

    public final List<Cubic> getCubics() {
        return this.cubics;
    }

    public final List<Feature> getFeatures$graphics_shapes_release() {
        return this.features;
    }

    public int hashCode() {
        return this.features.hashCode();
    }

    public final RoundedPolygon normalized() {
        float[] fArrCalculateBounds$default = calculateBounds$default(this, null, false, 3, null);
        float f = fArrCalculateBounds$default[2] - fArrCalculateBounds$default[0];
        float f2 = fArrCalculateBounds$default[3] - fArrCalculateBounds$default[1];
        final float fMax = Math.max(f, f2);
        final float f3 = ((fMax - f) / 2.0f) - fArrCalculateBounds$default[0];
        final float f4 = ((fMax - f2) / 2.0f) - fArrCalculateBounds$default[1];
        return transformed(new PointTransformer() { // from class: androidx.graphics.shapes.RoundedPolygon.normalized.1
            @Override // androidx.graphics.shapes.PointTransformer
            /* JADX INFO: renamed from: transform-XgqJiTY */
            public final long mo9333transformXgqJiTY(float f5, float f6) {
                float f7 = f5 + f3;
                float f8 = fMax;
                return FloatFloatPair.m1016constructorimpl(f7 / f8, (f6 + f4) / f8);
            }
        });
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[RoundedPolygon. Cubics = ");
        sb.append(qn1.a0(this.cubics, null, null, null, 0, null, 63));
        sb.append(" || Features = ");
        sb.append(qn1.a0(this.features, null, null, null, 0, null, 63));
        sb.append(" || Center = (");
        sb.append(this.centerX);
        sb.append(", ");
        return xy.e(sb, ")]", this.centerY);
    }

    public final RoundedPolygon transformed(PointTransformer pointTransformer) {
        pointTransformer.getClass();
        long jM9331transformedso9K2fw = PointKt.m9331transformedso9K2fw(FloatFloatPair.m1016constructorimpl(this.centerX, this.centerY), pointTransformer);
        ar4 ar4VarE = u96.e();
        int size = this.features.size();
        for (int i = 0; i < size; i++) {
            ar4VarE.add(this.features.get(i).transformed$graphics_shapes_release(pointTransformer));
        }
        return new RoundedPolygon(u96.d(ar4VarE), PointKt.m9324getXDnnuFBc(jM9331transformedso9K2fw), PointKt.m9325getYDnnuFBc(jM9331transformedso9K2fw));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final float[] calculateBounds(float[] fArr) {
        fArr.getClass();
        return calculateBounds$default(this, fArr, false, 2, null);
    }

    public final float[] calculateBounds() {
        return calculateBounds$default(this, null, false, 3, null);
    }
}

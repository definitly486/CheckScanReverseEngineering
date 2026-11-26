package androidx.graphics.shapes;

import defpackage.ar4;
import defpackage.b36;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class Morph {
    public static final Companion Companion = new Companion(null);
    private final List<b36<Cubic, Cubic>> _morphMatch;
    private final RoundedPolygon end;
    private final RoundedPolygon start;

    public Morph(RoundedPolygon roundedPolygon, RoundedPolygon roundedPolygon2) {
        roundedPolygon.getClass();
        roundedPolygon2.getClass();
        this.start = roundedPolygon;
        this.end = roundedPolygon2;
        this._morphMatch = Companion.match$graphics_shapes_release(roundedPolygon, roundedPolygon2);
    }

    public static /* synthetic */ float[] calculateBounds$default(Morph morph, float[] fArr, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            fArr = new float[4];
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return morph.calculateBounds(fArr, z);
    }

    public static /* synthetic */ float[] calculateMaxBounds$default(Morph morph, float[] fArr, int i, Object obj) {
        if ((i & 1) != 0) {
            fArr = new float[4];
        }
        return morph.calculateMaxBounds(fArr);
    }

    public static void forEachCubic$default(Morph morph, float f, MutableCubic mutableCubic, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            mutableCubic = new MutableCubic();
        }
        mutableCubic.getClass();
        nl3Var.getClass();
        int size = morph.getMorphMatch().size();
        for (int i2 = 0; i2 < size; i2++) {
            mutableCubic.interpolate(morph.getMorphMatch().get(i2).b, morph.getMorphMatch().get(i2).c, f);
            nl3Var.invoke(mutableCubic);
        }
    }

    public static /* synthetic */ void getMorphMatch$annotations() {
    }

    public final List<Cubic> asCubics(float f) {
        ar4 ar4VarE = u96.e();
        int size = this._morphMatch.size();
        Cubic cubic = null;
        Cubic cubic2 = null;
        int i = 0;
        while (i < size) {
            float[] fArr = new float[8];
            for (int i2 = 0; i2 < 8; i2++) {
                fArr[i2] = Utils.interpolate(this._morphMatch.get(i).b.getPoints$graphics_shapes_release()[i2], this._morphMatch.get(i).c.getPoints$graphics_shapes_release()[i2], f);
            }
            Cubic cubic3 = new Cubic(fArr);
            if (cubic2 == null) {
                cubic2 = cubic3;
            }
            if (cubic != null) {
                ar4VarE.add(cubic);
            }
            i++;
            cubic = cubic3;
        }
        if (cubic != null && cubic2 != null) {
            ar4VarE.add(CubicKt.Cubic(cubic.getAnchor0X(), cubic.getAnchor0Y(), cubic.getControl0X(), cubic.getControl0Y(), cubic.getControl1X(), cubic.getControl1Y(), cubic2.getAnchor0X(), cubic2.getAnchor0Y()));
        }
        return u96.d(ar4VarE);
    }

    public final float[] calculateBounds(float[] fArr, boolean z) {
        fArr.getClass();
        this.start.calculateBounds(fArr, z);
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        this.end.calculateBounds(fArr, z);
        fArr[0] = Math.min(f, fArr[0]);
        fArr[1] = Math.min(f2, fArr[1]);
        fArr[2] = Math.max(f3, fArr[2]);
        fArr[3] = Math.max(f4, fArr[3]);
        return fArr;
    }

    public final float[] calculateMaxBounds(float[] fArr) {
        fArr.getClass();
        this.start.calculateMaxBounds(fArr);
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        this.end.calculateMaxBounds(fArr);
        fArr[0] = Math.min(f, fArr[0]);
        fArr[1] = Math.min(f2, fArr[1]);
        fArr[2] = Math.max(f3, fArr[2]);
        fArr[3] = Math.max(f4, fArr[3]);
        return fArr;
    }

    public final void forEachCubic(float f, nl3<? super MutableCubic, j59> nl3Var) {
        nl3Var.getClass();
        MutableCubic mutableCubic = new MutableCubic();
        int size = getMorphMatch().size();
        for (int i = 0; i < size; i++) {
            mutableCubic.interpolate(getMorphMatch().get(i).b, getMorphMatch().get(i).c, f);
            nl3Var.invoke(mutableCubic);
        }
    }

    public final List<b36<Cubic, Cubic>> getMorphMatch() {
        return this._morphMatch;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<b36<Cubic, Cubic>> match$graphics_shapes_release(RoundedPolygon roundedPolygon, RoundedPolygon roundedPolygon2) {
            b36<MeasuredPolygon.MeasuredCubic, MeasuredPolygon.MeasuredCubic> b36VarCutAtProgress;
            b36<MeasuredPolygon.MeasuredCubic, MeasuredPolygon.MeasuredCubic> b36VarCutAtProgress2;
            roundedPolygon.getClass();
            roundedPolygon2.getClass();
            MeasuredPolygon.Companion companion = MeasuredPolygon.Companion;
            MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release = companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(roundedPolygon.getCenterX(), roundedPolygon.getCenterY()), roundedPolygon);
            MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release2 = companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(roundedPolygon2.getCenterX(), roundedPolygon2.getCenterY()), roundedPolygon2);
            DoubleMapper doubleMapperFeatureMapper = FeatureMappingKt.featureMapper(measuredPolygonMeasurePolygon$graphics_shapes_release.getFeatures(), measuredPolygonMeasurePolygon$graphics_shapes_release2.getFeatures());
            float map = doubleMapperFeatureMapper.map(0.0f);
            String unused = MorphKt.LOG_TAG;
            MeasuredPolygon measuredPolygonCutAndShift = measuredPolygonMeasurePolygon$graphics_shapes_release2.cutAndShift(map);
            ArrayList arrayList = new ArrayList();
            MeasuredPolygon.MeasuredCubic measuredCubic = (MeasuredPolygon.MeasuredCubic) qn1.W(0, measuredPolygonMeasurePolygon$graphics_shapes_release);
            MeasuredPolygon.MeasuredCubic measuredCubic2 = (MeasuredPolygon.MeasuredCubic) qn1.W(0, measuredPolygonCutAndShift);
            int i = 1;
            int i2 = 1;
            while (measuredCubic != null && measuredCubic2 != null) {
                float endOutlineProgress = i == measuredPolygonMeasurePolygon$graphics_shapes_release.size() ? 1.0f : measuredCubic.getEndOutlineProgress();
                float fMapBack = i2 == measuredPolygonCutAndShift.size() ? 1.0f : doubleMapperFeatureMapper.mapBack(Utils.positiveModulo(measuredCubic2.getEndOutlineProgress() + map, 1.0f));
                float fMin = Math.min(endOutlineProgress, fMapBack);
                String unused2 = MorphKt.LOG_TAG;
                float f = 1.0E-6f + fMin;
                if (endOutlineProgress > f) {
                    String unused3 = MorphKt.LOG_TAG;
                    b36VarCutAtProgress = measuredCubic.cutAtProgress(fMin);
                } else {
                    b36<MeasuredPolygon.MeasuredCubic, MeasuredPolygon.MeasuredCubic> b36Var = new b36<>(measuredCubic, qn1.W(i, measuredPolygonMeasurePolygon$graphics_shapes_release));
                    i++;
                    b36VarCutAtProgress = b36Var;
                }
                MeasuredPolygon.MeasuredCubic measuredCubic3 = b36VarCutAtProgress.b;
                measuredCubic = b36VarCutAtProgress.c;
                if (fMapBack > f) {
                    String unused4 = MorphKt.LOG_TAG;
                    b36VarCutAtProgress2 = measuredCubic2.cutAtProgress(Utils.positiveModulo(doubleMapperFeatureMapper.map(fMin) - map, 1.0f));
                } else {
                    b36<MeasuredPolygon.MeasuredCubic, MeasuredPolygon.MeasuredCubic> b36Var2 = new b36<>(measuredCubic2, qn1.W(i2, measuredPolygonCutAndShift));
                    i2++;
                    b36VarCutAtProgress2 = b36Var2;
                }
                MeasuredPolygon.MeasuredCubic measuredCubic4 = b36VarCutAtProgress2.b;
                measuredCubic2 = b36VarCutAtProgress2.c;
                String unused5 = MorphKt.LOG_TAG;
                arrayList.add(new b36(measuredCubic3.getCubic(), measuredCubic4.getCubic()));
            }
            if (measuredCubic == null && measuredCubic2 == null) {
                return arrayList;
            }
            fg.c("Expected both Polygon's Cubic to be fully matched");
            return null;
        }

        private Companion() {
        }
    }

    public final void forEachCubic(float f, MutableCubic mutableCubic, nl3<? super MutableCubic, j59> nl3Var) {
        mutableCubic.getClass();
        nl3Var.getClass();
        int size = getMorphMatch().size();
        for (int i = 0; i < size; i++) {
            mutableCubic.interpolate(getMorphMatch().get(i).b, getMorphMatch().get(i).c, f);
            nl3Var.invoke(mutableCubic);
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

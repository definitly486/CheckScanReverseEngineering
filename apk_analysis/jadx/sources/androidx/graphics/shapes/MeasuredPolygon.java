package androidx.graphics.shapes;

import androidx.collection.FloatList;
import androidx.collection.MutableFloatList;
import defpackage.ar4;
import defpackage.b36;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kn1;
import defpackage.kx6;
import defpackage.qn1;
import defpackage.u0;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class MeasuredPolygon extends u0<MeasuredCubic> {
    public static final Companion Companion = new Companion(null);
    private final List<MeasuredCubic> cubics;
    private final List<ProgressableFeature> features;
    private final Measurer measurer;

    public final class MeasuredCubic {
        private final Cubic cubic;
        private float endOutlineProgress;
        private final float measuredSize;
        private float startOutlineProgress;
        final /* synthetic */ MeasuredPolygon this$0;

        public MeasuredCubic(MeasuredPolygon measuredPolygon, Cubic cubic, float f, float f2) {
            cubic.getClass();
            this.this$0 = measuredPolygon;
            this.cubic = cubic;
            if (f2 < f) {
                fg.c("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
                throw null;
            }
            this.measuredSize = measuredPolygon.measurer.measureCubic(cubic);
            this.startOutlineProgress = f;
            this.endOutlineProgress = f2;
        }

        public static /* synthetic */ void updateProgressRange$graphics_shapes_release$default(MeasuredCubic measuredCubic, float f, float f2, int i, Object obj) {
            if ((i & 1) != 0) {
                f = measuredCubic.startOutlineProgress;
            }
            if ((i & 2) != 0) {
                f2 = measuredCubic.endOutlineProgress;
            }
            measuredCubic.updateProgressRange$graphics_shapes_release(f, f2);
        }

        public final b36<MeasuredCubic, MeasuredCubic> cutAtProgress(float f) {
            float fD = kx6.d(f, this.startOutlineProgress, this.endOutlineProgress);
            float f2 = this.endOutlineProgress;
            float f3 = this.startOutlineProgress;
            float fFindCubicCutPoint = this.this$0.measurer.findCubicCutPoint(this.cubic, ((fD - f3) / (f2 - f3)) * this.measuredSize);
            if (0.0f > fFindCubicCutPoint || fFindCubicCutPoint > 1.0f) {
                fg.c("Cubic cut point is expected to be between 0 and 1");
                return null;
            }
            String unused = PolygonMeasureKt.LOG_TAG;
            b36<Cubic, Cubic> b36VarSplit = this.cubic.split(fFindCubicCutPoint);
            return new b36<>(new MeasuredCubic(this.this$0, b36VarSplit.b, this.startOutlineProgress, fD), new MeasuredCubic(this.this$0, b36VarSplit.c, fD, this.endOutlineProgress));
        }

        public final Cubic getCubic() {
            return this.cubic;
        }

        public final float getEndOutlineProgress() {
            return this.endOutlineProgress;
        }

        public final float getMeasuredSize() {
            return this.measuredSize;
        }

        public final float getStartOutlineProgress() {
            return this.startOutlineProgress;
        }

        public String toString() {
            return "MeasuredCubic(outlineProgress=[" + this.startOutlineProgress + " .. " + this.endOutlineProgress + "], size=" + this.measuredSize + ", cubic=" + this.cubic + ')';
        }

        public final void updateProgressRange$graphics_shapes_release(float f, float f2) {
            if (f2 < f) {
                fg.c("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
            } else {
                this.startOutlineProgress = f;
                this.endOutlineProgress = f2;
            }
        }
    }

    private MeasuredPolygon(Measurer measurer, List<ProgressableFeature> list, List<? extends Cubic> list2, FloatList floatList) {
        if (floatList.getSize() != list2.size() + 1) {
            fg.c("Outline progress size is expected to be the cubics size + 1");
            throw null;
        }
        if (floatList.first() != 0.0f) {
            fg.c("First outline progress value is expected to be zero");
            throw null;
        }
        if (floatList.last() != 1.0f) {
            fg.c("Last outline progress value is expected to be one");
            throw null;
        }
        this.measurer = measurer;
        this.features = list;
        ArrayList arrayList = new ArrayList();
        int size = list2.size();
        int i = 0;
        float f = 0.0f;
        while (i < size) {
            int i2 = i + 1;
            if (floatList.get(i2) - floatList.get(i) > 1.0E-4f) {
                arrayList.add(new MeasuredCubic(this, list2.get(i), f, floatList.get(i2)));
                f = floatList.get(i2);
            }
            i = i2;
        }
        MeasuredCubic.updateProgressRange$graphics_shapes_release$default((MeasuredCubic) arrayList.get(arrayList.size() - 1), 0.0f, 1.0f, 1, null);
        this.cubics = arrayList;
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof MeasuredCubic) {
            return contains((MeasuredCubic) obj);
        }
        return false;
    }

    public final MeasuredPolygon cutAndShift(float f) {
        float fPositiveModulo;
        if (0.0f > f || f > 1.0f) {
            fg.c("Cutting point is expected to be between 0 and 1");
            return null;
        }
        if (f < 1.0E-4f) {
            return this;
        }
        Iterator<MeasuredCubic> it = this.cubics.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            MeasuredCubic next = it.next();
            float startOutlineProgress = next.getStartOutlineProgress();
            if (f <= next.getEndOutlineProgress() && startOutlineProgress <= f) {
                break;
            }
            i++;
        }
        b36<MeasuredCubic, MeasuredCubic> b36VarCutAtProgress = this.cubics.get(i).cutAtProgress(f);
        MeasuredCubic measuredCubic = b36VarCutAtProgress.b;
        MeasuredCubic measuredCubic2 = b36VarCutAtProgress.c;
        String unused = PolygonMeasureKt.LOG_TAG;
        ArrayList arrayListK = u96.k(measuredCubic2.getCubic());
        int size = this.cubics.size();
        for (int i2 = 1; i2 < size; i2++) {
            List<MeasuredCubic> list = this.cubics;
            arrayListK.add(list.get((i2 + i) % list.size()).getCubic());
        }
        arrayListK.add(measuredCubic.getCubic());
        MutableFloatList mutableFloatList = new MutableFloatList(this.cubics.size() + 2);
        int size2 = this.cubics.size() + 2;
        for (int i3 = 0; i3 < size2; i3++) {
            if (i3 == 0) {
                fPositiveModulo = 0.0f;
            } else if (i3 == this.cubics.size() + 1) {
                fPositiveModulo = 1.0f;
            } else {
                fPositiveModulo = Utils.positiveModulo(this.cubics.get(((i + i3) - 1) % this.cubics.size()).getEndOutlineProgress() - f, 1.0f);
            }
            mutableFloatList.add(fPositiveModulo);
        }
        ar4 ar4VarE = u96.e();
        int size3 = this.features.size();
        for (int i4 = 0; i4 < size3; i4++) {
            ar4VarE.add(new ProgressableFeature(Utils.positiveModulo(this.features.get(i4).getProgress() - f, 1.0f), this.features.get(i4).getFeature()));
        }
        return new MeasuredPolygon(this.measurer, u96.d(ar4VarE), arrayListK, mutableFloatList);
    }

    @Override // defpackage.u0, java.util.List
    public MeasuredCubic get(int i) {
        return this.cubics.get(i);
    }

    public final List<ProgressableFeature> getFeatures() {
        return this.features;
    }

    @Override // defpackage.u0, defpackage.v
    public int getSize() {
        return this.cubics.size();
    }

    @Override // defpackage.u0, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof MeasuredCubic) {
            return indexOf((MeasuredCubic) obj);
        }
        return -1;
    }

    @Override // defpackage.u0, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof MeasuredCubic) {
            return lastIndexOf((MeasuredCubic) obj);
        }
        return -1;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final MeasuredPolygon measurePolygon$graphics_shapes_release(Measurer measurer, RoundedPolygon roundedPolygon) {
            List listH;
            measurer.getClass();
            roundedPolygon.getClass();
            ArrayList<Cubic> arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = roundedPolygon.getFeatures$graphics_shapes_release().size();
            for (int i = 0; i < size; i++) {
                Feature feature = roundedPolygon.getFeatures$graphics_shapes_release().get(i);
                int size2 = feature.getCubics().size();
                for (int i2 = 0; i2 < size2; i2++) {
                    if ((feature instanceof Feature.Corner) && i2 == feature.getCubics().size() / 2) {
                        arrayList2.add(new b36(feature, Integer.valueOf(arrayList.size())));
                    }
                    arrayList.add(feature.getCubics().get(i2));
                }
            }
            Float fValueOf = Float.valueOf(0.0f);
            int iQ = kn1.q(arrayList, 9);
            if (iQ == 0) {
                listH = u96.h(fValueOf);
            } else {
                ArrayList arrayList3 = new ArrayList(iQ + 1);
                arrayList3.add(fValueOf);
                for (Cubic cubic : arrayList) {
                    float fFloatValue = fValueOf.floatValue();
                    float fMeasureCubic = measurer.measureCubic(cubic);
                    if (fMeasureCubic < 0.0f) {
                        fg.c("Measured cubic is expected to be greater or equal to zero");
                        return null;
                    }
                    j59 j59Var = j59.a;
                    fValueOf = Float.valueOf(fFloatValue + fMeasureCubic);
                    arrayList3.add(fValueOf);
                }
                listH = arrayList3;
            }
            float fFloatValue2 = ((Number) qn1.b0(listH)).floatValue();
            MutableFloatList mutableFloatList = new MutableFloatList(listH.size());
            int size3 = listH.size();
            for (int i3 = 0; i3 < size3; i3++) {
                mutableFloatList.add(((Number) listH.get(i3)).floatValue() / fFloatValue2);
            }
            String unused = PolygonMeasureKt.LOG_TAG;
            ar4 ar4VarE = u96.e();
            int size4 = arrayList2.size();
            for (int i4 = 0; i4 < size4; i4++) {
                int iIntValue = ((Number) ((b36) arrayList2.get(i4)).c).intValue();
                ar4VarE.add(new ProgressableFeature((mutableFloatList.get(iIntValue + 1) + mutableFloatList.get(iIntValue)) / 2.0f, (Feature) ((b36) arrayList2.get(i4)).b));
            }
            return new MeasuredPolygon(measurer, u96.d(ar4VarE), arrayList, mutableFloatList, null);
        }

        private Companion() {
        }
    }

    public /* bridge */ boolean contains(MeasuredCubic measuredCubic) {
        return super.contains((Object) measuredCubic);
    }

    public /* bridge */ int indexOf(MeasuredCubic measuredCubic) {
        return super.indexOf((Object) measuredCubic);
    }

    public /* bridge */ int lastIndexOf(MeasuredCubic measuredCubic) {
        return super.lastIndexOf((Object) measuredCubic);
    }

    public /* synthetic */ MeasuredPolygon(Measurer measurer, List list, List list2, FloatList floatList, jh2 jh2Var) {
        this(measurer, list, list2, floatList);
    }
}

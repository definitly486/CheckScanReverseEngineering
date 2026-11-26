package androidx.graphics.shapes;

import defpackage.ar4;
import defpackage.b36;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.u96;
import defpackage.x74;
import defpackage.y74;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class FeatureMappingKt {
    private static final String LOG_TAG = "FeatureMapping";

    public static final List<ProgressableFeature> doMapping(List<ProgressableFeature> list, List<ProgressableFeature> list2) {
        list.getClass();
        list2.getClass();
        x74 it = u96.f(list2).iterator();
        if (!it.d) {
            qz0.e();
            return null;
        }
        int iNextInt = it.nextInt();
        if (it.d) {
            float fFeatureDistSquared = featureDistSquared(list.get(0).getFeature(), list2.get(iNextInt).getFeature());
            do {
                int iNextInt2 = it.nextInt();
                float fFeatureDistSquared2 = featureDistSquared(list.get(0).getFeature(), list2.get(iNextInt2).getFeature());
                if (Float.compare(fFeatureDistSquared, fFeatureDistSquared2) > 0) {
                    iNextInt = iNextInt2;
                    fFeatureDistSquared = fFeatureDistSquared2;
                }
            } while (it.d);
        }
        int size = list.size();
        int size2 = list2.size();
        ArrayList arrayListK = u96.k(list2.get(iNextInt));
        int i = iNextInt;
        for (int i2 = 1; i2 < size; i2++) {
            int i3 = iNextInt - (size - i2);
            if (i3 <= i) {
                i3 += size2;
            }
            x74 it2 = new y74(i + 1, i3, 1).iterator();
            if (!it2.d) {
                qz0.e();
                return null;
            }
            int iNextInt3 = it2.nextInt();
            if (it2.d) {
                float fFeatureDistSquared3 = featureDistSquared(list.get(i2).getFeature(), list2.get(iNextInt3 % size2).getFeature());
                do {
                    int iNextInt4 = it2.nextInt();
                    float fFeatureDistSquared4 = featureDistSquared(list.get(i2).getFeature(), list2.get(iNextInt4 % size2).getFeature());
                    if (Float.compare(fFeatureDistSquared3, fFeatureDistSquared4) > 0) {
                        iNextInt3 = iNextInt4;
                        fFeatureDistSquared3 = fFeatureDistSquared4;
                    }
                } while (it2.d);
            }
            i = iNextInt3;
            arrayListK.add(list2.get(i % size2));
        }
        return arrayListK;
    }

    public static final float featureDistSquared(Feature feature, Feature feature2) {
        feature.getClass();
        feature2.getClass();
        if ((feature instanceof Feature.Corner) && (feature2 instanceof Feature.Corner) && ((Feature.Corner) feature).getConvex() != ((Feature.Corner) feature2).getConvex()) {
            return Float.MAX_VALUE;
        }
        float anchor1X = (((Cubic) qn1.b0(feature.getCubics())).getAnchor1X() + ((Cubic) qn1.T(feature.getCubics())).getAnchor0X()) / 2.0f;
        float anchor1Y = (((Cubic) qn1.b0(feature.getCubics())).getAnchor1Y() + ((Cubic) qn1.T(feature.getCubics())).getAnchor0Y()) / 2.0f;
        float anchor1X2 = (((Cubic) qn1.b0(feature2.getCubics())).getAnchor1X() + ((Cubic) qn1.T(feature2.getCubics())).getAnchor0X()) / 2.0f;
        float f = anchor1X - anchor1X2;
        float anchor1Y2 = anchor1Y - ((((Cubic) qn1.b0(feature2.getCubics())).getAnchor1Y() + ((Cubic) qn1.T(feature2.getCubics())).getAnchor0Y()) / 2.0f);
        return (anchor1Y2 * anchor1Y2) + (f * f);
    }

    public static final DoubleMapper featureMapper(List<ProgressableFeature> list, List<ProgressableFeature> list2) {
        list.getClass();
        list2.getClass();
        ar4 ar4VarE = u96.e();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).getFeature() instanceof Feature.Corner) {
                ar4VarE.add(list.get(i));
            }
        }
        ar4 ar4VarD = u96.d(ar4VarE);
        ar4 ar4VarE2 = u96.e();
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (list2.get(i2).getFeature() instanceof Feature.Corner) {
                ar4VarE2.add(list2.get(i2));
            }
        }
        ar4 ar4VarD2 = u96.d(ar4VarE2);
        b36 b36Var = ar4VarD.size() > ar4VarD2.size() ? new b36(doMapping(ar4VarD2, ar4VarD), ar4VarD2) : new b36(ar4VarD, doMapping(ar4VarD, ar4VarD2));
        List list3 = (List) b36Var.b;
        List list4 = (List) b36Var.c;
        ar4 ar4VarE3 = u96.e();
        int size3 = list3.size();
        for (int i3 = 0; i3 < size3 && i3 != list4.size(); i3++) {
            ar4VarE3.add(new b36(Float.valueOf(((ProgressableFeature) list3.get(i3)).getProgress()), Float.valueOf(((ProgressableFeature) list4.get(i3)).getProgress())));
        }
        b36[] b36VarArr = (b36[]) u96.d(ar4VarE3).toArray(new b36[0]);
        return new DoubleMapper((b36[]) Arrays.copyOf(b36VarArr, b36VarArr.length));
    }
}

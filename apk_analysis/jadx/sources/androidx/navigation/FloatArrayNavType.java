package androidx.navigation;

import android.os.Bundle;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aq5;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.og;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class FloatArrayNavType extends CollectionNavType<float[]> {
    public FloatArrayNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public float[] get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return SavedStateReader.m9398getFloatArrayimpl(bundleD, str);
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "float[]";
    }

    @Override // androidx.navigation.NavType
    public float[] parseValue(String str, float[] fArr) {
        str.getClass();
        float[] value = parseValue(str);
        if (fArr == null) {
            return value;
        }
        value.getClass();
        int length = fArr.length;
        int length2 = value.length;
        float[] fArrCopyOf = Arrays.copyOf(fArr, length + length2);
        System.arraycopy(value, 0, fArrCopyOf, length, length2);
        return fArrCopyOf;
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, float[] fArr) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (fArr != null) {
            SavedStateWriter.m9472putFloatArrayimpl(bundleM9456constructorimpl, str, fArr);
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public List<String> serializeAsValues(float[] fArr) {
        if (fArr == null) {
            return kx2.b;
        }
        List<Float> listE0 = yr.e0(fArr);
        ArrayList arrayList = new ArrayList(kn1.q(listE0, 10));
        Iterator<T> it = listE0.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).floatValue()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(float[] fArr, float[] fArr2) {
        Float[] fArr3;
        Float[] fArr4 = null;
        if (fArr != null) {
            fArr3 = new Float[fArr.length];
            int length = fArr.length;
            for (int i = 0; i < length; i++) {
                fArr3[i] = Float.valueOf(fArr[i]);
            }
        } else {
            fArr3 = null;
        }
        if (fArr2 != null) {
            fArr4 = new Float[fArr2.length];
            int length2 = fArr2.length;
            for (int i2 = 0; i2 < length2; i2++) {
                fArr4[i2] = Float.valueOf(fArr2[i2]);
            }
        }
        return aq5.d(fArr3, fArr4);
    }

    @Override // androidx.navigation.CollectionNavType
    public float[] emptyCollection() {
        return new float[0];
    }

    @Override // androidx.navigation.NavType
    public float[] parseValue(String str) {
        str.getClass();
        return new float[]{NavType.FloatType.parseValue(str).floatValue()};
    }
}

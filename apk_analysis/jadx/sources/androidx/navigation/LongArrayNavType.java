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
public final class LongArrayNavType extends CollectionNavType<long[]> {
    public LongArrayNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public long[] get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return SavedStateReader.m9412getLongArrayimpl(bundleD, str);
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "long[]";
    }

    @Override // androidx.navigation.NavType
    public long[] parseValue(String str, long[] jArr) {
        str.getClass();
        long[] value = parseValue(str);
        if (jArr == null) {
            return value;
        }
        value.getClass();
        int length = jArr.length;
        int length2 = value.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, length + length2);
        System.arraycopy(value, 0, jArrCopyOf, length, length2);
        return jArrCopyOf;
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, long[] jArr) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (jArr != null) {
            SavedStateWriter.m9478putLongArrayimpl(bundleM9456constructorimpl, str, jArr);
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public List<String> serializeAsValues(long[] jArr) {
        if (jArr == null) {
            return kx2.b;
        }
        List<Long> listG0 = yr.g0(jArr);
        ArrayList arrayList = new ArrayList(kn1.q(listG0, 10));
        Iterator<T> it = listG0.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Number) it.next()).longValue()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(long[] jArr, long[] jArr2) {
        Long[] lArr;
        Long[] lArr2 = null;
        if (jArr != null) {
            lArr = new Long[jArr.length];
            int length = jArr.length;
            for (int i = 0; i < length; i++) {
                lArr[i] = Long.valueOf(jArr[i]);
            }
        } else {
            lArr = null;
        }
        if (jArr2 != null) {
            lArr2 = new Long[jArr2.length];
            int length2 = jArr2.length;
            for (int i2 = 0; i2 < length2; i2++) {
                lArr2[i2] = Long.valueOf(jArr2[i2]);
            }
        }
        return aq5.d(lArr, lArr2);
    }

    @Override // androidx.navigation.CollectionNavType
    public long[] emptyCollection() {
        return new long[0];
    }

    @Override // androidx.navigation.NavType
    public long[] parseValue(String str) {
        str.getClass();
        return new long[]{NavType.LongType.parseValue(str).longValue()};
    }
}

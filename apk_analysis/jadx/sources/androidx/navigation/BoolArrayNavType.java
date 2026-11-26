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
public final class BoolArrayNavType extends CollectionNavType<boolean[]> {
    public BoolArrayNavType() {
        super(true);
    }

    @Override // androidx.navigation.NavType
    public boolean[] get(Bundle bundle, String str) {
        Bundle bundleD = og.d(bundle, str, bundle);
        if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
            return null;
        }
        return SavedStateReader.m9380getBooleanArrayimpl(bundleD, str);
    }

    @Override // androidx.navigation.NavType
    public String getName() {
        return "boolean[]";
    }

    @Override // androidx.navigation.NavType
    public boolean[] parseValue(String str, boolean[] zArr) {
        str.getClass();
        boolean[] value = parseValue(str);
        if (zArr == null) {
            return value;
        }
        value.getClass();
        int length = zArr.length;
        int length2 = value.length;
        boolean[] zArrCopyOf = Arrays.copyOf(zArr, length + length2);
        System.arraycopy(value, 0, zArrCopyOf, length, length2);
        return zArrCopyOf;
    }

    @Override // androidx.navigation.NavType
    public void put(Bundle bundle, String str, boolean[] zArr) {
        bundle.getClass();
        str.getClass();
        Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
        if (zArr != null) {
            SavedStateWriter.m9463putBooleanArrayimpl(bundleM9456constructorimpl, str, zArr);
        } else {
            SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
        }
    }

    @Override // androidx.navigation.CollectionNavType
    public List<String> serializeAsValues(boolean[] zArr) {
        if (zArr == null) {
            return kx2.b;
        }
        List<Boolean> listI0 = yr.i0(zArr);
        ArrayList arrayList = new ArrayList(kn1.q(listI0, 10));
        Iterator<T> it = listI0.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(((Boolean) it.next()).booleanValue()));
        }
        return arrayList;
    }

    @Override // androidx.navigation.NavType
    public boolean valueEquals(boolean[] zArr, boolean[] zArr2) {
        Boolean[] boolArr;
        Boolean[] boolArr2 = null;
        if (zArr != null) {
            boolArr = new Boolean[zArr.length];
            int length = zArr.length;
            for (int i = 0; i < length; i++) {
                boolArr[i] = Boolean.valueOf(zArr[i]);
            }
        } else {
            boolArr = null;
        }
        if (zArr2 != null) {
            boolArr2 = new Boolean[zArr2.length];
            int length2 = zArr2.length;
            for (int i2 = 0; i2 < length2; i2++) {
                boolArr2[i2] = Boolean.valueOf(zArr2[i2]);
            }
        }
        return aq5.d(boolArr, boolArr2);
    }

    @Override // androidx.navigation.CollectionNavType
    public boolean[] emptyCollection() {
        return new boolean[0];
    }

    @Override // androidx.navigation.NavType
    public boolean[] parseValue(String str) {
        str.getClass();
        return new boolean[]{NavType.BoolType.parseValue(str).booleanValue()};
    }
}

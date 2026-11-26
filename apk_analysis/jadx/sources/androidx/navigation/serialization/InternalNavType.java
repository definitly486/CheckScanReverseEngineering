package androidx.navigation.serialization;

import android.os.Bundle;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import androidx.navigation.NavUriUtils;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import defpackage.aq5;
import defpackage.kn1;
import defpackage.kx2;
import defpackage.og;
import defpackage.qn1;
import defpackage.u96;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class InternalNavType {
    public static final InternalNavType INSTANCE = new InternalNavType();
    private static final NavType<Integer> IntNullableType = new NavType<Integer>() { // from class: androidx.navigation.serialization.InternalNavType$IntNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            return Integer.valueOf(SavedStateReader.m9401getIntimpl(bundleD, str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "integer_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer parseValue(String str) {
            str.getClass();
            if (str.equals("null")) {
                return null;
            }
            return NavType.IntType.parseValue(str);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, Integer num) {
            bundle.getClass();
            str.getClass();
            if (num == null) {
                SavedStateWriter.m9479putNullimpl(SavedStateWriter.m9456constructorimpl(bundle), str);
            } else {
                NavType.IntType.put(bundle, str, num);
            }
        }
    };
    private static final NavType<Boolean> BoolNullableType = new NavType<Boolean>() { // from class: androidx.navigation.serialization.InternalNavType$BoolNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            return Boolean.valueOf(SavedStateReader.m9379getBooleanimpl(bundleD, str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "boolean_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean parseValue(String str) {
            str.getClass();
            if (str.equals("null")) {
                return null;
            }
            return NavType.BoolType.parseValue(str);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, Boolean bool) {
            bundle.getClass();
            str.getClass();
            if (bool == null) {
                SavedStateWriter.m9479putNullimpl(SavedStateWriter.m9456constructorimpl(bundle), str);
            } else {
                NavType.BoolType.put(bundle, str, bool);
            }
        }
    };
    private static final NavType<Double> DoubleType = new NavType<Double>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double get(Bundle bundle, String str) {
            bundle.getClass();
            str.getClass();
            return Double.valueOf(SavedStateReader.m9393getDoubleimpl(SavedStateReader.m9370constructorimpl(bundle), str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "double";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double parseValue(String str) {
            str.getClass();
            return Double.valueOf(Double.parseDouble(str));
        }

        public void put(Bundle bundle, String str, double d) {
            bundle.getClass();
            str.getClass();
            SavedStateWriter.m9469putDoubleimpl(SavedStateWriter.m9456constructorimpl(bundle), str, d);
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Double d) {
            put(bundle, str, d.doubleValue());
        }
    };
    private static final NavType<Double> DoubleNullableType = new NavType<Double>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            return Double.valueOf(SavedStateReader.m9393getDoubleimpl(bundleD, str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "double_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double parseValue(String str) {
            str.getClass();
            if (str.equals("null")) {
                return null;
            }
            return InternalNavType.INSTANCE.getDoubleType().parseValue(str);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, Double d) {
            bundle.getClass();
            str.getClass();
            if (d == null) {
                SavedStateWriter.m9479putNullimpl(SavedStateWriter.m9456constructorimpl(bundle), str);
            } else {
                InternalNavType.INSTANCE.getDoubleType().put(bundle, str, d);
            }
        }
    };
    private static final NavType<Float> FloatNullableType = new NavType<Float>() { // from class: androidx.navigation.serialization.InternalNavType$FloatNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            return Float.valueOf(SavedStateReader.m9397getFloatimpl(bundleD, str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "float_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float parseValue(String str) {
            str.getClass();
            if (str.equals("null")) {
                return null;
            }
            return NavType.FloatType.parseValue(str);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, Float f) {
            bundle.getClass();
            str.getClass();
            if (f == null) {
                SavedStateWriter.m9479putNullimpl(SavedStateWriter.m9456constructorimpl(bundle), str);
            } else {
                NavType.FloatType.put(bundle, str, f);
            }
        }
    };
    private static final NavType<Long> LongNullableType = new NavType<Long>() { // from class: androidx.navigation.serialization.InternalNavType$LongNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            return Long.valueOf(SavedStateReader.m9411getLongimpl(bundleD, str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "long_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long parseValue(String str) {
            str.getClass();
            if (str.equals("null")) {
                return null;
            }
            return NavType.LongType.parseValue(str);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, Long l) {
            bundle.getClass();
            str.getClass();
            if (l == null) {
                SavedStateWriter.m9479putNullimpl(SavedStateWriter.m9456constructorimpl(bundle), str);
            } else {
                NavType.LongType.put(bundle, str, l);
            }
        }
    };
    private static final NavType<String> StringNonNullableType = new NavType<String>() { // from class: androidx.navigation.serialization.InternalNavType$StringNonNullableType$1
        @Override // androidx.navigation.NavType
        public String get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            return (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) ? "null" : SavedStateReader.m9441getStringimpl(bundleD, str);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "string_non_nullable";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, String str2) {
            bundle.getClass();
            str.getClass();
            str2.getClass();
            SavedStateWriter.m9489putStringimpl(SavedStateWriter.m9456constructorimpl(bundle), str, str2);
        }

        @Override // androidx.navigation.NavType
        public String serializeAsValue(String str) {
            str.getClass();
            return NavUriUtils.encode$default(NavUriUtils.INSTANCE, str, null, 2, null);
        }

        @Override // androidx.navigation.NavType
        public String parseValue(String str) {
            str.getClass();
            return str;
        }
    };
    private static final NavType<String[]> StringNullableArrayType = new CollectionNavType<String[]>() { // from class: androidx.navigation.serialization.InternalNavType$StringNullableArrayType$1
        @Override // androidx.navigation.NavType
        public String[] get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            String[] strArrM9442getStringArrayimpl = SavedStateReader.m9442getStringArrayimpl(bundleD, str);
            ArrayList arrayList = new ArrayList(strArrM9442getStringArrayimpl.length);
            for (String str2 : strArrM9442getStringArrayimpl) {
                arrayList.add(NavType.StringType.parseValue(str2));
            }
            return (String[]) arrayList.toArray(new String[0]);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "string_nullable[]";
        }

        @Override // androidx.navigation.NavType
        public String[] parseValue(String str) {
            str.getClass();
            return new String[]{NavType.StringType.parseValue(str)};
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, String[] strArr) {
            bundle.getClass();
            str.getClass();
            Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
            if (strArr == null) {
                SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
                return;
            }
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str2 : strArr) {
                if (str2 == null) {
                    str2 = "null";
                }
                arrayList.add(str2);
            }
            SavedStateWriter.m9490putStringArrayimpl(bundleM9456constructorimpl, str, (String[]) arrayList.toArray(new String[0]));
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(String[] strArr) {
            String strEncode$default;
            if (strArr == null) {
                return kx2.b;
            }
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                if (str == null || (strEncode$default = NavUriUtils.encode$default(NavUriUtils.INSTANCE, str, null, 2, null)) == null) {
                    strEncode$default = "null";
                }
                arrayList.add(strEncode$default);
            }
            return arrayList;
        }

        @Override // androidx.navigation.CollectionNavType
        public String[] emptyCollection() {
            return new String[0];
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(String[] strArr, String[] strArr2) {
            return aq5.d(strArr, strArr2);
        }

        @Override // androidx.navigation.NavType
        public String[] parseValue(String str, String[] strArr) {
            str.getClass();
            String[] value = parseValue(str);
            return strArr != null ? (String[]) aq5.A(strArr, value) : value;
        }
    };
    private static final NavType<List<String>> StringNullableListType = new CollectionNavType<List<? extends String>>() { // from class: androidx.navigation.serialization.InternalNavType$StringNullableListType$1
        @Override // androidx.navigation.NavType
        public List<String> get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            List listH0 = yr.h0(SavedStateReader.m9442getStringArrayimpl(bundleD, str));
            ArrayList arrayList = new ArrayList(kn1.q(listH0, 10));
            Iterator it = listH0.iterator();
            while (it.hasNext()) {
                arrayList.add(NavType.StringType.parseValue((String) it.next()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<String?>";
        }

        @Override // androidx.navigation.NavType
        public List<String> parseValue(String str, List<String> list) {
            str.getClass();
            if (list == null) {
                return parseValue(str);
            }
            return qn1.h0(parseValue(str), list);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, List<String> list) {
            bundle.getClass();
            str.getClass();
            Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
            if (list == null) {
                SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
                return;
            }
            List<String> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            for (String str2 : list2) {
                if (str2 == null) {
                    str2 = "null";
                }
                arrayList.add(str2);
            }
            SavedStateWriter.m9490putStringArrayimpl(bundleM9456constructorimpl, str, (String[]) arrayList.toArray(new String[0]));
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<String> list) {
            String strEncode$default;
            if (list == null) {
                return kx2.b;
            }
            List<String> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            for (String str : list2) {
                if (str == null || (strEncode$default = NavUriUtils.encode$default(NavUriUtils.INSTANCE, str, null, 2, null)) == null) {
                    strEncode$default = "null";
                }
                arrayList.add(strEncode$default);
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<String> list, List<String> list2) {
            return aq5.d(list != null ? (String[]) list.toArray(new String[0]) : null, list2 != null ? (String[]) list2.toArray(new String[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends String> emptyCollection() {
            return kx2.b;
        }

        @Override // androidx.navigation.NavType
        public List<String> parseValue(String str) {
            str.getClass();
            return u96.h(NavType.StringType.parseValue(str));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends String> list) {
            return serializeAsValues2((List<String>) list);
        }
    };
    private static final NavType<double[]> DoubleArrayType = new CollectionNavType<double[]>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleArrayType$1
        @Override // androidx.navigation.NavType
        public double[] get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            return SavedStateReader.m9394getDoubleArrayimpl(bundleD, str);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "double[]";
        }

        @Override // androidx.navigation.NavType
        public double[] parseValue(String str) {
            str.getClass();
            return new double[]{InternalNavType.INSTANCE.getDoubleType().parseValue(str).doubleValue()};
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, double[] dArr) {
            bundle.getClass();
            str.getClass();
            Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
            if (dArr == null) {
                SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
            } else {
                SavedStateWriter.m9470putDoubleArrayimpl(bundleM9456constructorimpl, str, dArr);
            }
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(double[] dArr) {
            if (dArr == null) {
                return kx2.b;
            }
            List<Double> listD0 = yr.d0(dArr);
            ArrayList arrayList = new ArrayList(kn1.q(listD0, 10));
            Iterator<T> it = listD0.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).doubleValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(double[] dArr, double[] dArr2) {
            Double[] dArr3;
            Double[] dArr4 = null;
            if (dArr != null) {
                dArr3 = new Double[dArr.length];
                int length = dArr.length;
                for (int i = 0; i < length; i++) {
                    dArr3[i] = Double.valueOf(dArr[i]);
                }
            } else {
                dArr3 = null;
            }
            if (dArr2 != null) {
                dArr4 = new Double[dArr2.length];
                int length2 = dArr2.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    dArr4[i2] = Double.valueOf(dArr2[i2]);
                }
            }
            return aq5.d(dArr3, dArr4);
        }

        @Override // androidx.navigation.CollectionNavType
        public double[] emptyCollection() {
            return new double[0];
        }

        @Override // androidx.navigation.NavType
        public double[] parseValue(String str, double[] dArr) {
            str.getClass();
            double[] value = parseValue(str);
            if (dArr == null) {
                return value;
            }
            value.getClass();
            int length = dArr.length;
            int length2 = value.length;
            double[] dArrCopyOf = Arrays.copyOf(dArr, length + length2);
            System.arraycopy(value, 0, dArrCopyOf, length, length2);
            return dArrCopyOf;
        }
    };
    private static final NavType<List<Double>> DoubleListType = new CollectionNavType<List<? extends Double>>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleListType$1
        @Override // androidx.navigation.NavType
        public List<Double> get(Bundle bundle, String str) {
            Bundle bundleD = og.d(bundle, str, bundle);
            if (!SavedStateReader.m9371containsimpl(bundleD, str) || SavedStateReader.m9449isNullimpl(bundleD, str)) {
                return null;
            }
            return yr.d0(SavedStateReader.m9394getDoubleArrayimpl(bundleD, str));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<Double>";
        }

        @Override // androidx.navigation.NavType
        public List<Double> parseValue(String str, List<Double> list) {
            str.getClass();
            if (list == null) {
                return parseValue(str);
            }
            return qn1.h0(parseValue(str), list);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String str, List<Double> list) {
            bundle.getClass();
            str.getClass();
            Bundle bundleM9456constructorimpl = SavedStateWriter.m9456constructorimpl(bundle);
            if (list == null) {
                SavedStateWriter.m9479putNullimpl(bundleM9456constructorimpl, str);
                return;
            }
            List<Double> list2 = list;
            double[] dArr = new double[list2.size()];
            Iterator<Double> it = list2.iterator();
            int i = 0;
            while (it.hasNext()) {
                dArr[i] = it.next().doubleValue();
                i++;
            }
            SavedStateWriter.m9470putDoubleArrayimpl(bundleM9456constructorimpl, str, dArr);
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<Double> list) {
            if (list == null) {
                return kx2.b;
            }
            List<Double> list2 = list;
            ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).doubleValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<Double> list, List<Double> list2) {
            return aq5.d(list != null ? (Double[]) list.toArray(new Double[0]) : null, list2 != null ? (Double[]) list2.toArray(new Double[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends Double> emptyCollection() {
            return kx2.b;
        }

        @Override // androidx.navigation.NavType
        public List<Double> parseValue(String str) {
            str.getClass();
            return u96.h(InternalNavType.INSTANCE.getDoubleType().parseValue(str));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Double> list) {
            return serializeAsValues2((List<Double>) list);
        }
    };

    private InternalNavType() {
    }

    public final NavType<Boolean> getBoolNullableType() {
        return BoolNullableType;
    }

    public final NavType<double[]> getDoubleArrayType() {
        return DoubleArrayType;
    }

    public final NavType<List<Double>> getDoubleListType() {
        return DoubleListType;
    }

    public final NavType<Double> getDoubleNullableType() {
        return DoubleNullableType;
    }

    public final NavType<Double> getDoubleType() {
        return DoubleType;
    }

    public final NavType<Float> getFloatNullableType() {
        return FloatNullableType;
    }

    public final NavType<Integer> getIntNullableType() {
        return IntNullableType;
    }

    public final NavType<Long> getLongNullableType() {
        return LongNullableType;
    }

    public final NavType<String> getStringNonNullableType() {
        return StringNonNullableType;
    }

    public final NavType<String[]> getStringNullableArrayType() {
        return StringNullableArrayType;
    }

    public final NavType<List<String>> getStringNullableListType() {
        return StringNullableListType;
    }
}

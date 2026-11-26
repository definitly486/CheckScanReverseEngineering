package androidx.savedstate;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.core.os.BundleCompat;
import defpackage.aa4;
import defpackage.d31;
import defpackage.ne4;
import defpackage.rs2;
import defpackage.uz4;
import defpackage.x07;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateReader {
    private final Bundle source;

    private /* synthetic */ SavedStateReader(Bundle bundle) {
        this.source = bundle;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SavedStateReader m9369boximpl(Bundle bundle) {
        return new SavedStateReader(bundle);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Bundle m9370constructorimpl(Bundle bundle) {
        bundle.getClass();
        return bundle;
    }

    /* JADX INFO: renamed from: contains-impl, reason: not valid java name */
    public static final boolean m9371containsimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.containsKey(str);
    }

    /* JADX INFO: renamed from: contentDeepEquals-impl, reason: not valid java name */
    public static final boolean m9372contentDeepEqualsimpl(Bundle bundle, Bundle bundle2) {
        bundle2.getClass();
        return SavedStateReaderKt__SavedStateReader_androidKt.contentDeepEquals$SavedStateReaderKt__SavedStateReader_androidKt(bundle, bundle2);
    }

    /* JADX INFO: renamed from: contentDeepHashCode-impl, reason: not valid java name */
    public static final int m9373contentDeepHashCodeimpl(Bundle bundle) {
        return SavedStateReaderKt__SavedStateReader_androidKt.contentDeepHashCode$SavedStateReaderKt__SavedStateReader_androidKt(bundle);
    }

    /* JADX INFO: renamed from: contentDeepToString-impl, reason: not valid java name */
    public static final String m9374contentDeepToStringimpl(Bundle bundle) {
        int size = bundle.size();
        if (size > 429496729) {
            size = 429496729;
        }
        StringBuilder sb = new StringBuilder((size * 5) + 2);
        SavedStateReaderKt__SavedStateReader_androidKt.contentDeepToString$SavedStateReaderKt__SavedStateReader_androidKt(bundle, sb, new ArrayList());
        return sb.toString();
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9375equalsimpl(Bundle bundle, Object obj) {
        return (obj instanceof SavedStateReader) && aa4.e(bundle, ((SavedStateReader) obj).m9453unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9376equalsimpl0(Bundle bundle, Bundle bundle2) {
        return aa4.e(bundle, bundle2);
    }

    /* JADX INFO: renamed from: getBinder-impl, reason: not valid java name */
    public static final IBinder m9377getBinderimpl(Bundle bundle, String str) {
        str.getClass();
        IBinder binder = bundle.getBinder(str);
        if (binder != null) {
            return binder;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getBinderOrNull-impl, reason: not valid java name */
    public static final IBinder m9378getBinderOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getBinder(str);
    }

    /* JADX INFO: renamed from: getBoolean-impl, reason: not valid java name */
    public static final boolean m9379getBooleanimpl(Bundle bundle, String str) {
        str.getClass();
        boolean z = bundle.getBoolean(str, false);
        if (z || !bundle.getBoolean(str, true)) {
            return z;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getBooleanArray-impl, reason: not valid java name */
    public static final boolean[] m9380getBooleanArrayimpl(Bundle bundle, String str) {
        str.getClass();
        boolean[] booleanArray = bundle.getBooleanArray(str);
        if (booleanArray != null) {
            return booleanArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getBooleanArrayOrNull-impl, reason: not valid java name */
    public static final boolean[] m9381getBooleanArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getBooleanArray(str);
    }

    /* JADX INFO: renamed from: getBooleanOrNull-impl, reason: not valid java name */
    public static final Boolean m9382getBooleanOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        boolean z = bundle.getBoolean(str, false);
        if (z || !bundle.getBoolean(str, true)) {
            return Boolean.valueOf(z);
        }
        return null;
    }

    /* JADX INFO: renamed from: getChar-impl, reason: not valid java name */
    public static final char m9383getCharimpl(Bundle bundle, String str) {
        str.getClass();
        char c = bundle.getChar(str, (char) 0);
        if (c == 0 && bundle.getChar(str, (char) 65535) == 65535) {
            throw rs2.d(str);
        }
        return c;
    }

    /* JADX INFO: renamed from: getCharArray-impl, reason: not valid java name */
    public static final char[] m9384getCharArrayimpl(Bundle bundle, String str) {
        str.getClass();
        char[] charArray = bundle.getCharArray(str);
        if (charArray != null) {
            return charArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getCharArrayOrNull-impl, reason: not valid java name */
    public static final char[] m9385getCharArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getCharArray(str);
    }

    /* JADX INFO: renamed from: getCharOrNull-impl, reason: not valid java name */
    public static final Character m9386getCharOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        char c = bundle.getChar(str, (char) 0);
        if (c == 0 && bundle.getChar(str, (char) 65535) == 65535) {
            return null;
        }
        return Character.valueOf(c);
    }

    /* JADX INFO: renamed from: getCharSequence-impl, reason: not valid java name */
    public static final CharSequence m9387getCharSequenceimpl(Bundle bundle, String str) {
        str.getClass();
        CharSequence charSequence = bundle.getCharSequence(str);
        if (charSequence != null) {
            return charSequence;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getCharSequenceArray-impl, reason: not valid java name */
    public static final CharSequence[] m9388getCharSequenceArrayimpl(Bundle bundle, String str) {
        str.getClass();
        CharSequence[] charSequenceArray = bundle.getCharSequenceArray(str);
        if (charSequenceArray != null) {
            return charSequenceArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getCharSequenceArrayOrNull-impl, reason: not valid java name */
    public static final CharSequence[] m9389getCharSequenceArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getCharSequenceArray(str);
    }

    /* JADX INFO: renamed from: getCharSequenceList-impl, reason: not valid java name */
    public static final List<CharSequence> m9390getCharSequenceListimpl(Bundle bundle, String str) {
        str.getClass();
        ArrayList<CharSequence> charSequenceArrayList = bundle.getCharSequenceArrayList(str);
        if (charSequenceArrayList != null) {
            return charSequenceArrayList;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getCharSequenceListOrNull-impl, reason: not valid java name */
    public static final List<CharSequence> m9391getCharSequenceListOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getCharSequenceArrayList(str);
    }

    /* JADX INFO: renamed from: getCharSequenceOrNull-impl, reason: not valid java name */
    public static final CharSequence m9392getCharSequenceOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getCharSequence(str);
    }

    /* JADX INFO: renamed from: getDouble-impl, reason: not valid java name */
    public static final double m9393getDoubleimpl(Bundle bundle, String str) {
        str.getClass();
        double d = bundle.getDouble(str, Double.MIN_VALUE);
        if (d == Double.MIN_VALUE && bundle.getDouble(str, Double.MAX_VALUE) == Double.MAX_VALUE) {
            throw rs2.d(str);
        }
        return d;
    }

    /* JADX INFO: renamed from: getDoubleArray-impl, reason: not valid java name */
    public static final double[] m9394getDoubleArrayimpl(Bundle bundle, String str) {
        str.getClass();
        double[] doubleArray = bundle.getDoubleArray(str);
        if (doubleArray != null) {
            return doubleArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getDoubleArrayOrNull-impl, reason: not valid java name */
    public static final double[] m9395getDoubleArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getDoubleArray(str);
    }

    /* JADX INFO: renamed from: getDoubleOrNull-impl, reason: not valid java name */
    public static final Double m9396getDoubleOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        double d = bundle.getDouble(str, Double.MIN_VALUE);
        if (d == Double.MIN_VALUE && bundle.getDouble(str, Double.MAX_VALUE) == Double.MAX_VALUE) {
            return null;
        }
        return Double.valueOf(d);
    }

    /* JADX INFO: renamed from: getFloat-impl, reason: not valid java name */
    public static final float m9397getFloatimpl(Bundle bundle, String str) {
        str.getClass();
        float f = bundle.getFloat(str, Float.MIN_VALUE);
        if (f == Float.MIN_VALUE && bundle.getFloat(str, Float.MAX_VALUE) == Float.MAX_VALUE) {
            throw rs2.d(str);
        }
        return f;
    }

    /* JADX INFO: renamed from: getFloatArray-impl, reason: not valid java name */
    public static final float[] m9398getFloatArrayimpl(Bundle bundle, String str) {
        str.getClass();
        float[] floatArray = bundle.getFloatArray(str);
        if (floatArray != null) {
            return floatArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getFloatArrayOrNull-impl, reason: not valid java name */
    public static final float[] m9399getFloatArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getFloatArray(str);
    }

    /* JADX INFO: renamed from: getFloatOrNull-impl, reason: not valid java name */
    public static final Float m9400getFloatOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        float f = bundle.getFloat(str, Float.MIN_VALUE);
        if (f == Float.MIN_VALUE && bundle.getFloat(str, Float.MAX_VALUE) == Float.MAX_VALUE) {
            return null;
        }
        return Float.valueOf(f);
    }

    /* JADX INFO: renamed from: getInt-impl, reason: not valid java name */
    public static final int m9401getIntimpl(Bundle bundle, String str) {
        str.getClass();
        int i = bundle.getInt(str, Integer.MIN_VALUE);
        if (i == Integer.MIN_VALUE && bundle.getInt(str, Integer.MAX_VALUE) == Integer.MAX_VALUE) {
            throw rs2.d(str);
        }
        return i;
    }

    /* JADX INFO: renamed from: getIntArray-impl, reason: not valid java name */
    public static final int[] m9402getIntArrayimpl(Bundle bundle, String str) {
        str.getClass();
        int[] intArray = bundle.getIntArray(str);
        if (intArray != null) {
            return intArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getIntArrayOrNull-impl, reason: not valid java name */
    public static final int[] m9403getIntArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getIntArray(str);
    }

    /* JADX INFO: renamed from: getIntList-impl, reason: not valid java name */
    public static final List<Integer> m9404getIntListimpl(Bundle bundle, String str) {
        str.getClass();
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getIntListOrNull-impl, reason: not valid java name */
    public static final List<Integer> m9405getIntListOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getIntegerArrayList(str);
    }

    /* JADX INFO: renamed from: getIntOrNull-impl, reason: not valid java name */
    public static final Integer m9406getIntOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        int i = bundle.getInt(str, Integer.MIN_VALUE);
        if (i == Integer.MIN_VALUE && bundle.getInt(str, Integer.MAX_VALUE) == Integer.MAX_VALUE) {
            return null;
        }
        return Integer.valueOf(i);
    }

    /* JADX INFO: renamed from: getJavaSerializable-impl, reason: not valid java name */
    public static final <T extends Serializable> T m9408getJavaSerializableimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        T t = (T) BundleCompat.getSerializable(bundle, str, d31.n(ne4Var));
        if (t != null) {
            return t;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getJavaSerializableOrNull-impl, reason: not valid java name */
    public static final <T extends Serializable> T m9410getJavaSerializableOrNullimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        return (T) BundleCompat.getSerializable(bundle, str, d31.n(ne4Var));
    }

    /* JADX INFO: renamed from: getLong-impl, reason: not valid java name */
    public static final long m9411getLongimpl(Bundle bundle, String str) {
        str.getClass();
        long j = bundle.getLong(str, Long.MIN_VALUE);
        if (j == Long.MIN_VALUE && bundle.getLong(str, Long.MAX_VALUE) == Long.MAX_VALUE) {
            throw rs2.d(str);
        }
        return j;
    }

    /* JADX INFO: renamed from: getLongArray-impl, reason: not valid java name */
    public static final long[] m9412getLongArrayimpl(Bundle bundle, String str) {
        str.getClass();
        long[] longArray = bundle.getLongArray(str);
        if (longArray != null) {
            return longArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getLongArrayOrNull-impl, reason: not valid java name */
    public static final long[] m9413getLongArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getLongArray(str);
    }

    /* JADX INFO: renamed from: getLongOrNull-impl, reason: not valid java name */
    public static final Long m9414getLongOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        long j = bundle.getLong(str, Long.MIN_VALUE);
        if (j == Long.MIN_VALUE && bundle.getLong(str, Long.MAX_VALUE) == Long.MAX_VALUE) {
            return null;
        }
        return Long.valueOf(j);
    }

    /* JADX INFO: renamed from: getParcelable-impl, reason: not valid java name */
    public static final <T extends Parcelable> T m9416getParcelableimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        T t = (T) BundleCompat.getParcelable(bundle, str, d31.n(ne4Var));
        if (t != null) {
            return t;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> T[] m9418getParcelableArrayimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        T[] tArr = (T[]) m9420getParcelableArrayOrNullimpl(bundle, str, ne4Var);
        if (tArr != null) {
            return tArr;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getParcelableArrayOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> T[] m9420getParcelableArrayOrNullimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        T[] tArr = (T[]) BundleCompat.getParcelableArray(bundle, str, d31.n(ne4Var));
        if (tArr != null) {
            return tArr;
        }
        return null;
    }

    /* JADX INFO: renamed from: getParcelableList-impl, reason: not valid java name */
    public static final <T extends Parcelable> List<T> m9422getParcelableListimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        ArrayList parcelableArrayList = BundleCompat.getParcelableArrayList(bundle, str, d31.n(ne4Var));
        if (parcelableArrayList != null) {
            return parcelableArrayList;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getParcelableListOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> List<T> m9424getParcelableListOrNullimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        return BundleCompat.getParcelableArrayList(bundle, str, d31.n(ne4Var));
    }

    /* JADX INFO: renamed from: getParcelableOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> T m9426getParcelableOrNullimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        return (T) BundleCompat.getParcelable(bundle, str, d31.n(ne4Var));
    }

    /* JADX INFO: renamed from: getSavedState-impl, reason: not valid java name */
    public static final Bundle m9427getSavedStateimpl(Bundle bundle, String str) {
        str.getClass();
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 != null) {
            return bundle2;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getSavedStateArray-impl, reason: not valid java name */
    public static final Bundle[] m9428getSavedStateArrayimpl(Bundle bundle, String str) {
        str.getClass();
        return (Bundle[]) m9418getParcelableArrayimpl(bundle, str, x07.a(Bundle.class));
    }

    /* JADX INFO: renamed from: getSavedStateArrayOrNull-impl, reason: not valid java name */
    public static final Bundle[] m9429getSavedStateArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return (Bundle[]) m9420getParcelableArrayOrNullimpl(bundle, str, x07.a(Bundle.class));
    }

    /* JADX INFO: renamed from: getSavedStateList-impl, reason: not valid java name */
    public static final List<Bundle> m9430getSavedStateListimpl(Bundle bundle, String str) {
        str.getClass();
        return m9422getParcelableListimpl(bundle, str, x07.a(Bundle.class));
    }

    /* JADX INFO: renamed from: getSavedStateListOrNull-impl, reason: not valid java name */
    public static final List<Bundle> m9431getSavedStateListOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return m9424getParcelableListOrNullimpl(bundle, str, x07.a(Bundle.class));
    }

    /* JADX INFO: renamed from: getSavedStateOrNull-impl, reason: not valid java name */
    public static final Bundle m9432getSavedStateOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getBundle(str);
    }

    /* JADX INFO: renamed from: getSize-impl, reason: not valid java name */
    public static final Size m9433getSizeimpl(Bundle bundle, String str) {
        str.getClass();
        Size size = bundle.getSize(str);
        if (size != null) {
            return size;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getSizeF-impl, reason: not valid java name */
    public static final SizeF m9434getSizeFimpl(Bundle bundle, String str) {
        str.getClass();
        SizeF sizeF = bundle.getSizeF(str);
        if (sizeF != null) {
            return sizeF;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getSizeFOrNull-impl, reason: not valid java name */
    public static final SizeF m9435getSizeFOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getSizeF(str);
    }

    /* JADX INFO: renamed from: getSizeOrNull-impl, reason: not valid java name */
    public static final Size m9436getSizeOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getSize(str);
    }

    /* JADX INFO: renamed from: getSparseParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m9438getSparseParcelableArrayimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        SparseArray<T> sparseArrayM9440getSparseParcelableArrayOrNullimpl = m9440getSparseParcelableArrayOrNullimpl(bundle, str, ne4Var);
        if (sparseArrayM9440getSparseParcelableArrayOrNullimpl != null) {
            return sparseArrayM9440getSparseParcelableArrayOrNullimpl;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getSparseParcelableArrayOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m9440getSparseParcelableArrayOrNullimpl(Bundle bundle, String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        return BundleCompat.getSparseParcelableArray(bundle, str, d31.n(ne4Var));
    }

    /* JADX INFO: renamed from: getString-impl, reason: not valid java name */
    public static final String m9441getStringimpl(Bundle bundle, String str) {
        str.getClass();
        String string = bundle.getString(str);
        if (string != null) {
            return string;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getStringArray-impl, reason: not valid java name */
    public static final String[] m9442getStringArrayimpl(Bundle bundle, String str) {
        str.getClass();
        String[] stringArray = bundle.getStringArray(str);
        if (stringArray != null) {
            return stringArray;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getStringArrayOrNull-impl, reason: not valid java name */
    public static final String[] m9443getStringArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getStringArray(str);
    }

    /* JADX INFO: renamed from: getStringList-impl, reason: not valid java name */
    public static final List<String> m9444getStringListimpl(Bundle bundle, String str) {
        str.getClass();
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        if (stringArrayList != null) {
            return stringArrayList;
        }
        throw rs2.d(str);
    }

    /* JADX INFO: renamed from: getStringListOrNull-impl, reason: not valid java name */
    public static final List<String> m9445getStringListOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getStringArrayList(str);
    }

    /* JADX INFO: renamed from: getStringOrNull-impl, reason: not valid java name */
    public static final String m9446getStringOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        return bundle.getString(str);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9447hashCodeimpl(Bundle bundle) {
        return bundle.hashCode();
    }

    /* JADX INFO: renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m9448isEmptyimpl(Bundle bundle) {
        return bundle.isEmpty();
    }

    /* JADX INFO: renamed from: isNull-impl, reason: not valid java name */
    public static final boolean m9449isNullimpl(Bundle bundle, String str) {
        str.getClass();
        return m9371containsimpl(bundle, str) && bundle.get(str) == null;
    }

    /* JADX INFO: renamed from: size-impl, reason: not valid java name */
    public static final int m9450sizeimpl(Bundle bundle) {
        return bundle.size();
    }

    /* JADX INFO: renamed from: toMap-impl, reason: not valid java name */
    public static final Map<String, Object> m9451toMapimpl(Bundle bundle) {
        uz4 uz4Var = new uz4(bundle.size());
        for (String str : bundle.keySet()) {
            str.getClass();
            uz4Var.put(str, bundle.get(str));
        }
        return uz4Var.b();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9452toStringimpl(Bundle bundle) {
        return "SavedStateReader(source=" + bundle + ')';
    }

    public boolean equals(Object obj) {
        return m9375equalsimpl(this.source, obj);
    }

    public int hashCode() {
        return m9447hashCodeimpl(this.source);
    }

    public String toString() {
        return m9452toStringimpl(this.source);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Bundle m9453unboximpl() {
        return this.source;
    }

    /* JADX INFO: renamed from: getJavaSerializableOrNull-impl, reason: not valid java name */
    public static final <T extends Serializable> T m9409getJavaSerializableOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getParcelableListOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> List<T> m9423getParcelableListOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getSparseParcelableArrayOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m9439getSparseParcelableArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getParcelableOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> T m9425getParcelableOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> T[] m9417getParcelableArrayimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getSparseParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> SparseArray<T> m9437getSparseParcelableArrayimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getParcelableArrayOrNull-impl, reason: not valid java name */
    public static final <T extends Parcelable> T[] m9419getParcelableArrayOrNullimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getJavaSerializable-impl, reason: not valid java name */
    public static final <T extends Serializable> T m9407getJavaSerializableimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getParcelableList-impl, reason: not valid java name */
    public static final <T extends Parcelable> List<T> m9421getParcelableListimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }

    /* JADX INFO: renamed from: getParcelable-impl, reason: not valid java name */
    public static final <T extends Parcelable> T m9415getParcelableimpl(Bundle bundle, String str) {
        str.getClass();
        aa4.i();
        throw null;
    }
}

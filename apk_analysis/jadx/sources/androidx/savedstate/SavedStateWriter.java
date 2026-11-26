package androidx.savedstate;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import defpackage.aa4;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SavedStateWriter {
    private final Bundle source;

    private /* synthetic */ SavedStateWriter(Bundle bundle) {
        this.source = bundle;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SavedStateWriter m9454boximpl(Bundle bundle) {
        return new SavedStateWriter(bundle);
    }

    /* JADX INFO: renamed from: clear-impl, reason: not valid java name */
    public static final void m9455clearimpl(Bundle bundle) {
        bundle.clear();
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static Bundle m9456constructorimpl(Bundle bundle) {
        bundle.getClass();
        return bundle;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9457equalsimpl(Bundle bundle, Object obj) {
        return (obj instanceof SavedStateWriter) && aa4.e(bundle, ((SavedStateWriter) obj).m9494unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9458equalsimpl0(Bundle bundle, Bundle bundle2) {
        return aa4.e(bundle, bundle2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9459hashCodeimpl(Bundle bundle) {
        return bundle.hashCode();
    }

    /* JADX INFO: renamed from: putAll-impl, reason: not valid java name */
    public static final void m9460putAllimpl(Bundle bundle, Bundle bundle2) {
        bundle2.getClass();
        bundle.putAll(bundle2);
    }

    /* JADX INFO: renamed from: putBinder-impl, reason: not valid java name */
    public static final void m9461putBinderimpl(Bundle bundle, String str, IBinder iBinder) {
        str.getClass();
        iBinder.getClass();
        bundle.putBinder(str, iBinder);
    }

    /* JADX INFO: renamed from: putBoolean-impl, reason: not valid java name */
    public static final void m9462putBooleanimpl(Bundle bundle, String str, boolean z) {
        str.getClass();
        bundle.putBoolean(str, z);
    }

    /* JADX INFO: renamed from: putBooleanArray-impl, reason: not valid java name */
    public static final void m9463putBooleanArrayimpl(Bundle bundle, String str, boolean[] zArr) {
        str.getClass();
        zArr.getClass();
        bundle.putBooleanArray(str, zArr);
    }

    /* JADX INFO: renamed from: putChar-impl, reason: not valid java name */
    public static final void m9464putCharimpl(Bundle bundle, String str, char c) {
        str.getClass();
        bundle.putChar(str, c);
    }

    /* JADX INFO: renamed from: putCharArray-impl, reason: not valid java name */
    public static final void m9465putCharArrayimpl(Bundle bundle, String str, char[] cArr) {
        str.getClass();
        cArr.getClass();
        bundle.putCharArray(str, cArr);
    }

    /* JADX INFO: renamed from: putCharSequence-impl, reason: not valid java name */
    public static final void m9466putCharSequenceimpl(Bundle bundle, String str, CharSequence charSequence) {
        str.getClass();
        charSequence.getClass();
        bundle.putCharSequence(str, charSequence);
    }

    /* JADX INFO: renamed from: putCharSequenceArray-impl, reason: not valid java name */
    public static final void m9467putCharSequenceArrayimpl(Bundle bundle, String str, CharSequence[] charSequenceArr) {
        str.getClass();
        charSequenceArr.getClass();
        bundle.putCharSequenceArray(str, charSequenceArr);
    }

    /* JADX INFO: renamed from: putCharSequenceList-impl, reason: not valid java name */
    public static final void m9468putCharSequenceListimpl(Bundle bundle, String str, List<? extends CharSequence> list) {
        str.getClass();
        list.getClass();
        bundle.putCharSequenceArrayList(str, SavedStateWriterKt.toArrayListUnsafe(list));
    }

    /* JADX INFO: renamed from: putDouble-impl, reason: not valid java name */
    public static final void m9469putDoubleimpl(Bundle bundle, String str, double d) {
        str.getClass();
        bundle.putDouble(str, d);
    }

    /* JADX INFO: renamed from: putDoubleArray-impl, reason: not valid java name */
    public static final void m9470putDoubleArrayimpl(Bundle bundle, String str, double[] dArr) {
        str.getClass();
        dArr.getClass();
        bundle.putDoubleArray(str, dArr);
    }

    /* JADX INFO: renamed from: putFloat-impl, reason: not valid java name */
    public static final void m9471putFloatimpl(Bundle bundle, String str, float f) {
        str.getClass();
        bundle.putFloat(str, f);
    }

    /* JADX INFO: renamed from: putFloatArray-impl, reason: not valid java name */
    public static final void m9472putFloatArrayimpl(Bundle bundle, String str, float[] fArr) {
        str.getClass();
        fArr.getClass();
        bundle.putFloatArray(str, fArr);
    }

    /* JADX INFO: renamed from: putInt-impl, reason: not valid java name */
    public static final void m9473putIntimpl(Bundle bundle, String str, int i) {
        str.getClass();
        bundle.putInt(str, i);
    }

    /* JADX INFO: renamed from: putIntArray-impl, reason: not valid java name */
    public static final void m9474putIntArrayimpl(Bundle bundle, String str, int[] iArr) {
        str.getClass();
        iArr.getClass();
        bundle.putIntArray(str, iArr);
    }

    /* JADX INFO: renamed from: putIntList-impl, reason: not valid java name */
    public static final void m9475putIntListimpl(Bundle bundle, String str, List<Integer> list) {
        str.getClass();
        list.getClass();
        bundle.putIntegerArrayList(str, SavedStateWriterKt.toArrayListUnsafe(list));
    }

    /* JADX INFO: renamed from: putJavaSerializable-impl, reason: not valid java name */
    public static final <T extends Serializable> void m9476putJavaSerializableimpl(Bundle bundle, String str, T t) {
        str.getClass();
        t.getClass();
        bundle.putSerializable(str, t);
    }

    /* JADX INFO: renamed from: putLong-impl, reason: not valid java name */
    public static final void m9477putLongimpl(Bundle bundle, String str, long j) {
        str.getClass();
        bundle.putLong(str, j);
    }

    /* JADX INFO: renamed from: putLongArray-impl, reason: not valid java name */
    public static final void m9478putLongArrayimpl(Bundle bundle, String str, long[] jArr) {
        str.getClass();
        jArr.getClass();
        bundle.putLongArray(str, jArr);
    }

    /* JADX INFO: renamed from: putNull-impl, reason: not valid java name */
    public static final void m9479putNullimpl(Bundle bundle, String str) {
        str.getClass();
        bundle.putString(str, null);
    }

    /* JADX INFO: renamed from: putParcelable-impl, reason: not valid java name */
    public static final <T extends Parcelable> void m9480putParcelableimpl(Bundle bundle, String str, T t) {
        str.getClass();
        t.getClass();
        bundle.putParcelable(str, t);
    }

    /* JADX INFO: renamed from: putParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> void m9481putParcelableArrayimpl(Bundle bundle, String str, T[] tArr) {
        str.getClass();
        tArr.getClass();
        bundle.putParcelableArray(str, tArr);
    }

    /* JADX INFO: renamed from: putParcelableList-impl, reason: not valid java name */
    public static final <T extends Parcelable> void m9482putParcelableListimpl(Bundle bundle, String str, List<? extends T> list) {
        str.getClass();
        list.getClass();
        bundle.putParcelableArrayList(str, SavedStateWriterKt.toArrayListUnsafe(list));
    }

    /* JADX INFO: renamed from: putSavedState-impl, reason: not valid java name */
    public static final void m9483putSavedStateimpl(Bundle bundle, String str, Bundle bundle2) {
        str.getClass();
        bundle2.getClass();
        bundle.putBundle(str, bundle2);
    }

    /* JADX INFO: renamed from: putSavedStateArray-impl, reason: not valid java name */
    public static final void m9484putSavedStateArrayimpl(Bundle bundle, String str, Bundle[] bundleArr) {
        str.getClass();
        bundleArr.getClass();
        m9481putParcelableArrayimpl(bundle, str, bundleArr);
    }

    /* JADX INFO: renamed from: putSavedStateList-impl, reason: not valid java name */
    public static final void m9485putSavedStateListimpl(Bundle bundle, String str, List<Bundle> list) {
        str.getClass();
        list.getClass();
        m9482putParcelableListimpl(bundle, str, list);
    }

    /* JADX INFO: renamed from: putSize-impl, reason: not valid java name */
    public static final void m9486putSizeimpl(Bundle bundle, String str, Size size) {
        str.getClass();
        size.getClass();
        bundle.putSize(str, size);
    }

    /* JADX INFO: renamed from: putSizeF-impl, reason: not valid java name */
    public static final void m9487putSizeFimpl(Bundle bundle, String str, SizeF sizeF) {
        str.getClass();
        sizeF.getClass();
        bundle.putSizeF(str, sizeF);
    }

    /* JADX INFO: renamed from: putSparseParcelableArray-impl, reason: not valid java name */
    public static final <T extends Parcelable> void m9488putSparseParcelableArrayimpl(Bundle bundle, String str, SparseArray<T> sparseArray) {
        str.getClass();
        sparseArray.getClass();
        bundle.putSparseParcelableArray(str, sparseArray);
    }

    /* JADX INFO: renamed from: putString-impl, reason: not valid java name */
    public static final void m9489putStringimpl(Bundle bundle, String str, String str2) {
        str.getClass();
        str2.getClass();
        bundle.putString(str, str2);
    }

    /* JADX INFO: renamed from: putStringArray-impl, reason: not valid java name */
    public static final void m9490putStringArrayimpl(Bundle bundle, String str, String[] strArr) {
        str.getClass();
        strArr.getClass();
        bundle.putStringArray(str, strArr);
    }

    /* JADX INFO: renamed from: putStringList-impl, reason: not valid java name */
    public static final void m9491putStringListimpl(Bundle bundle, String str, List<String> list) {
        str.getClass();
        list.getClass();
        bundle.putStringArrayList(str, SavedStateWriterKt.toArrayListUnsafe(list));
    }

    /* JADX INFO: renamed from: remove-impl, reason: not valid java name */
    public static final void m9492removeimpl(Bundle bundle, String str) {
        str.getClass();
        bundle.remove(str);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9493toStringimpl(Bundle bundle) {
        return "SavedStateWriter(source=" + bundle + ')';
    }

    public boolean equals(Object obj) {
        return m9457equalsimpl(this.source, obj);
    }

    public int hashCode() {
        return m9459hashCodeimpl(this.source);
    }

    public String toString() {
        return m9493toStringimpl(this.source);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Bundle m9494unboximpl() {
        return this.source;
    }
}

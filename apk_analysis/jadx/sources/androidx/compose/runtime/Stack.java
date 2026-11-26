package androidx.compose.runtime;

import defpackage.aa4;
import defpackage.jh2;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class Stack<T> {
    private final ArrayList<T> backing;

    private /* synthetic */ Stack(ArrayList arrayList) {
        this.backing = arrayList;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Stack m5337boximpl(ArrayList arrayList) {
        return new Stack(arrayList);
    }

    /* JADX INFO: renamed from: clear-impl, reason: not valid java name */
    public static final void m5338clearimpl(ArrayList<T> arrayList) {
        arrayList.clear();
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> ArrayList<T> m5339constructorimpl(ArrayList<T> arrayList) {
        return arrayList;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ ArrayList m5340constructorimpl$default(ArrayList arrayList, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            arrayList = new ArrayList();
        }
        return m5339constructorimpl(arrayList);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5341equalsimpl(ArrayList<T> arrayList, Object obj) {
        return (obj instanceof Stack) && aa4.e(arrayList, ((Stack) obj).m5353unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5342equalsimpl0(ArrayList<Object> arrayList, ArrayList<Object> arrayList2) {
        return aa4.e(arrayList, arrayList2);
    }

    /* JADX INFO: renamed from: getSize-impl, reason: not valid java name */
    public static final int m5343getSizeimpl(ArrayList<T> arrayList) {
        return arrayList.size();
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5344hashCodeimpl(ArrayList<T> arrayList) {
        return arrayList.hashCode();
    }

    /* JADX INFO: renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m5345isEmptyimpl(ArrayList<T> arrayList) {
        return arrayList.isEmpty();
    }

    /* JADX INFO: renamed from: isNotEmpty-impl, reason: not valid java name */
    public static final boolean m5346isNotEmptyimpl(ArrayList<T> arrayList) {
        return !m5345isEmptyimpl(arrayList);
    }

    /* JADX INFO: renamed from: peek-impl, reason: not valid java name */
    public static final T m5347peekimpl(ArrayList<T> arrayList) {
        return arrayList.get(m5343getSizeimpl(arrayList) - 1);
    }

    /* JADX INFO: renamed from: pop-impl, reason: not valid java name */
    public static final T m5349popimpl(ArrayList<T> arrayList) {
        return arrayList.remove(m5343getSizeimpl(arrayList) - 1);
    }

    /* JADX INFO: renamed from: push-impl, reason: not valid java name */
    public static final boolean m5350pushimpl(ArrayList<T> arrayList, T t) {
        return arrayList.add(t);
    }

    /* JADX INFO: renamed from: toArray-impl, reason: not valid java name */
    public static final T[] m5351toArrayimpl(ArrayList<T> arrayList) {
        int size = arrayList.size();
        T[] tArr = (T[]) new Object[size];
        for (int i = 0; i < size; i++) {
            tArr[i] = arrayList.get(i);
        }
        return tArr;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5352toStringimpl(ArrayList<T> arrayList) {
        return "Stack(backing=" + arrayList + ')';
    }

    public boolean equals(Object obj) {
        return m5341equalsimpl(this.backing, obj);
    }

    public int hashCode() {
        return m5344hashCodeimpl(this.backing);
    }

    public String toString() {
        return m5352toStringimpl(this.backing);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ ArrayList m5353unboximpl() {
        return this.backing;
    }

    /* JADX INFO: renamed from: peek-impl, reason: not valid java name */
    public static final T m5348peekimpl(ArrayList<T> arrayList, int i) {
        return arrayList.get(i);
    }
}

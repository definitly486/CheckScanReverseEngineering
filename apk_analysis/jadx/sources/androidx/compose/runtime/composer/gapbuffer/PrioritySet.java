package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntList;
import androidx.compose.runtime.PreconditionsKt;
import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class PrioritySet {
    private final MutableIntList list;

    private /* synthetic */ PrioritySet(MutableIntList mutableIntList) {
        this.list = mutableIntList;
    }

    /* JADX INFO: renamed from: add-impl, reason: not valid java name */
    public static final void m5427addimpl(MutableIntList mutableIntList, int i) {
        if (mutableIntList._size == 0 || !(mutableIntList.get(0) == i || mutableIntList.get(mutableIntList._size - 1) == i)) {
            int i2 = mutableIntList._size;
            mutableIntList.add(i);
            while (i2 > 0) {
                int i3 = ((i2 + 1) >>> 1) - 1;
                int i4 = mutableIntList.get(i3);
                if (i <= i4) {
                    break;
                }
                mutableIntList.set(i2, i4);
                i2 = i3;
            }
            mutableIntList.set(i2, i);
        }
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PrioritySet m5428boximpl(MutableIntList mutableIntList) {
        return new PrioritySet(mutableIntList);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static MutableIntList m5429constructorimpl(MutableIntList mutableIntList) {
        return mutableIntList;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ MutableIntList m5430constructorimpl$default(MutableIntList mutableIntList, int i, jh2 jh2Var) {
        int i2 = 1;
        if ((i & 1) != 0) {
            mutableIntList = new MutableIntList(0, i2, null);
        }
        return m5429constructorimpl(mutableIntList);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5431equalsimpl(MutableIntList mutableIntList, Object obj) {
        return (obj instanceof PrioritySet) && aa4.e(mutableIntList, ((PrioritySet) obj).m5440unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5432equalsimpl0(MutableIntList mutableIntList, MutableIntList mutableIntList2) {
        return aa4.e(mutableIntList, mutableIntList2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5433hashCodeimpl(MutableIntList mutableIntList) {
        return mutableIntList.hashCode();
    }

    /* JADX INFO: renamed from: isEmpty-impl, reason: not valid java name */
    public static final boolean m5434isEmptyimpl(MutableIntList mutableIntList) {
        return mutableIntList._size == 0;
    }

    /* JADX INFO: renamed from: isNotEmpty-impl, reason: not valid java name */
    public static final boolean m5435isNotEmptyimpl(MutableIntList mutableIntList) {
        return mutableIntList._size != 0;
    }

    /* JADX INFO: renamed from: peek-impl, reason: not valid java name */
    public static final int m5436peekimpl(MutableIntList mutableIntList) {
        return mutableIntList.first();
    }

    /* JADX INFO: renamed from: takeMax-impl, reason: not valid java name */
    public static final int m5437takeMaximpl(MutableIntList mutableIntList) {
        int i;
        int i2 = mutableIntList._size;
        int i3 = mutableIntList.get(0);
        while (mutableIntList._size != 0 && mutableIntList.get(0) == i3) {
            mutableIntList.set(0, mutableIntList.last());
            mutableIntList.removeAt(mutableIntList._size - 1);
            int i4 = mutableIntList._size;
            int i5 = i4 >>> 1;
            int i6 = 0;
            while (i6 < i5) {
                int i7 = mutableIntList.get(i6);
                int i8 = (i6 + 1) * 2;
                int i9 = i8 - 1;
                int i10 = mutableIntList.get(i9);
                if (i8 < i4 && (i = mutableIntList.get(i8)) > i10) {
                    if (i <= i7) {
                        break;
                    }
                    mutableIntList.set(i6, i);
                    mutableIntList.set(i8, i7);
                    i6 = i8;
                } else {
                    if (i10 <= i7) {
                        break;
                    }
                    mutableIntList.set(i6, i10);
                    mutableIntList.set(i9, i7);
                    i6 = i9;
                }
            }
        }
        return i3;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5438toStringimpl(MutableIntList mutableIntList) {
        return "PrioritySet(list=" + mutableIntList + ')';
    }

    /* JADX INFO: renamed from: validateHeap-impl, reason: not valid java name */
    public static final void m5439validateHeapimpl(MutableIntList mutableIntList) {
        int i = mutableIntList._size;
        int i2 = i / 2;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i3 + 1;
            int i5 = i4 * 2;
            boolean z = true;
            if (!(mutableIntList.get(i3) >= mutableIntList.get(i5 + (-1)))) {
                PreconditionsKt.throwIllegalStateException("Check failed.");
            }
            if (i5 < i && mutableIntList.get(i3) < mutableIntList.get(i5)) {
                z = false;
            }
            if (!z) {
                PreconditionsKt.throwIllegalStateException("Check failed.");
            }
            i3 = i4;
        }
    }

    public boolean equals(Object obj) {
        return m5431equalsimpl(this.list, obj);
    }

    public int hashCode() {
        return m5433hashCodeimpl(this.list);
    }

    public String toString() {
        return m5438toStringimpl(this.list);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ MutableIntList m5440unboximpl() {
        return this.list;
    }
}

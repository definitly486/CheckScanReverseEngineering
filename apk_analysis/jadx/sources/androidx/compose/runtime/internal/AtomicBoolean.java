package androidx.compose.runtime.internal;

import defpackage.aa4;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class AtomicBoolean {
    private final AtomicInt wrapped;

    private /* synthetic */ AtomicBoolean(AtomicInt atomicInt) {
        this.wrapped = atomicInt;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AtomicBoolean m5589boximpl(AtomicInt atomicInt) {
        return new AtomicBoolean(atomicInt);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static AtomicInt m5591constructorimpl(boolean z) {
        return m5590constructorimpl(new AtomicInt(z ? 1 : 0));
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ AtomicInt m5592constructorimpl$default(AtomicInt atomicInt, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            atomicInt = new AtomicInt(0);
        }
        return m5590constructorimpl(atomicInt);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5593equalsimpl(AtomicInt atomicInt, Object obj) {
        return (obj instanceof AtomicBoolean) && aa4.e(atomicInt, ((AtomicBoolean) obj).m5600unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5594equalsimpl0(AtomicInt atomicInt, AtomicInt atomicInt2) {
        return aa4.e(atomicInt, atomicInt2);
    }

    /* JADX INFO: renamed from: get-impl, reason: not valid java name */
    public static final boolean m5595getimpl(AtomicInt atomicInt) {
        return atomicInt.get() != 0;
    }

    /* JADX INFO: renamed from: getAndSet-impl, reason: not valid java name */
    public static final boolean m5596getAndSetimpl(AtomicInt atomicInt, boolean z) {
        return atomicInt.compareAndSet(1, z ? 1 : 0);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5597hashCodeimpl(AtomicInt atomicInt) {
        return atomicInt.hashCode();
    }

    /* JADX INFO: renamed from: set-impl, reason: not valid java name */
    public static final void m5598setimpl(AtomicInt atomicInt, boolean z) {
        atomicInt.set(z ? 1 : 0);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5599toStringimpl(AtomicInt atomicInt) {
        return "AtomicBoolean(wrapped=" + atomicInt + ')';
    }

    public boolean equals(Object obj) {
        return m5593equalsimpl(this.wrapped, obj);
    }

    public int hashCode() {
        return m5597hashCodeimpl(this.wrapped);
    }

    public String toString() {
        return m5599toStringimpl(this.wrapped);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ AtomicInt m5600unboximpl() {
        return this.wrapped;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static AtomicInt m5590constructorimpl(AtomicInt atomicInt) {
        return atomicInt;
    }
}

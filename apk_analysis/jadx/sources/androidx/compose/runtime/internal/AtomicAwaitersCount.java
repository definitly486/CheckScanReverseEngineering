package androidx.compose.runtime.internal;

import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
final class AtomicAwaitersCount {
    private static final int COUNT_BITS = 27;
    public static final Companion Companion = new Companion(null);
    private static final int VERSION_BITS = 4;
    private final AtomicInt value;

    private /* synthetic */ AtomicAwaitersCount(AtomicInt atomicInt) {
        this.value = atomicInt;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AtomicAwaitersCount m5573boximpl(AtomicInt atomicInt) {
        return new AtomicAwaitersCount(atomicInt);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static AtomicInt m5574constructorimpl() {
        return m5575constructorimpl(new AtomicInt(0));
    }

    /* JADX INFO: renamed from: decrementCount-impl, reason: not valid java name */
    public static final void m5576decrementCountimpl(AtomicInt atomicInt, int i) {
        int i2;
        do {
            i2 = atomicInt.get();
        } while (!atomicInt.compareAndSet(i2, ((i2 >>> 27) & 15) == i ? i2 - 1 : i2));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5577equalsimpl(AtomicInt atomicInt, Object obj) {
        return (obj instanceof AtomicAwaitersCount) && aa4.e(atomicInt, ((AtomicAwaitersCount) obj).m5588unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5578equalsimpl0(AtomicInt atomicInt, AtomicInt atomicInt2) {
        return aa4.e(atomicInt, atomicInt2);
    }

    /* JADX INFO: renamed from: getCount-impl, reason: not valid java name */
    private static final int m5579getCountimpl(AtomicInt atomicInt, int i) {
        return 134217727 & i;
    }

    /* JADX INFO: renamed from: getVersion-impl, reason: not valid java name */
    private static final int m5580getVersionimpl(AtomicInt atomicInt, int i) {
        return (i >>> 27) & 15;
    }

    /* JADX INFO: renamed from: hasAwaiters-impl, reason: not valid java name */
    public static final boolean m5581hasAwaitersimpl(AtomicInt atomicInt) {
        return (atomicInt.get() & 134217727) > 0;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5582hashCodeimpl(AtomicInt atomicInt) {
        return atomicInt.hashCode();
    }

    /* JADX INFO: renamed from: incrementCountAndGetVersion-impl, reason: not valid java name */
    public static final int m5583incrementCountAndGetVersionimpl(AtomicInt atomicInt, ll3<j59> ll3Var) {
        int i;
        int i2;
        do {
            i = atomicInt.get();
            i2 = i + 1;
        } while (!atomicInt.compareAndSet(i, i2));
        if ((134217727 & i2) == 1) {
            ll3Var.invoke();
        }
        return (i2 >>> 27) & 15;
    }

    /* JADX INFO: renamed from: incrementVersionAndResetCount-impl, reason: not valid java name */
    public static final void m5584incrementVersionAndResetCountimpl(AtomicInt atomicInt) {
        int i;
        do {
            i = atomicInt.get();
        } while (!atomicInt.compareAndSet(i, m5585packimpl(atomicInt, ((i >>> 27) & 15) + 1, 0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: pack-impl, reason: not valid java name */
    public static final int m5585packimpl(AtomicInt atomicInt, int i, int i2) {
        return ((i & 15) << 27) | (134217727 & i2);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5586toStringimpl(AtomicInt atomicInt) {
        int i = atomicInt.get();
        StringBuilder sb = new StringBuilder("AtomicAwaitersCount(version = ");
        sb.append((i >>> 27) & 15);
        sb.append(", count = ");
        return rg.h(sb, i & 134217727, ')');
    }

    /* JADX INFO: renamed from: update-impl, reason: not valid java name */
    private static final int m5587updateimpl(AtomicInt atomicInt, nl3<? super Integer, Integer> nl3Var) {
        int i;
        int iIntValue;
        do {
            i = atomicInt.get();
            iIntValue = nl3Var.invoke(Integer.valueOf(i)).intValue();
        } while (!atomicInt.compareAndSet(i, iIntValue));
        return iIntValue;
    }

    public boolean equals(Object obj) {
        return m5577equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5582hashCodeimpl(this.value);
    }

    public String toString() {
        return m5586toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ AtomicInt m5588unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    private static AtomicInt m5575constructorimpl(AtomicInt atomicInt) {
        return atomicInt;
    }
}

package androidx.compose.runtime.snapshots;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes2.dex */
public final class ReaderKind {
    public static final Companion Companion = new Companion(null);
    private final int mask;

    private /* synthetic */ ReaderKind(int i) {
        this.mask = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ReaderKind m5630boximpl(int i) {
        return new ReaderKind(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m5631constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ int m5632constructorimpl$default(int i, int i2, jh2 jh2Var) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return m5631constructorimpl(i);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m5633equalsimpl(int i, Object obj) {
        return (obj instanceof ReaderKind) && i == ((ReaderKind) obj).m5639unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m5634equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m5635hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: isReadIn-h_f27i8, reason: not valid java name */
    public static final boolean m5636isReadInh_f27i8(int i, int i2) {
        return (i & i2) != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m5637toStringimpl(int i) {
        return qz0.d("ReaderKind(mask=", i, ')');
    }

    /* JADX INFO: renamed from: withReadIn-3QSx2Dw, reason: not valid java name */
    public static final int m5638withReadIn3QSx2Dw(int i, int i2) {
        return m5631constructorimpl(i | i2);
    }

    public boolean equals(Object obj) {
        return m5633equalsimpl(this.mask, obj);
    }

    public final int getMask() {
        return this.mask;
    }

    public int hashCode() {
        return m5635hashCodeimpl(this.mask);
    }

    public String toString() {
        return m5637toStringimpl(this.mask);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m5639unboximpl() {
        return this.mask;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getComposition-6f8NoZ8, reason: not valid java name */
        public final int m5640getComposition6f8NoZ8() {
            return ReaderKind.m5631constructorimpl(1);
        }

        /* JADX INFO: renamed from: getSnapshotStateObserver-6f8NoZ8, reason: not valid java name */
        public final int m5641getSnapshotStateObserver6f8NoZ8() {
            return ReaderKind.m5631constructorimpl(2);
        }

        private Companion() {
        }
    }
}

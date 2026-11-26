package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.AtomicInt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StateObjectImpl implements StateObject {
    public static final int $stable = 8;
    private final AtomicInt readerKind = new AtomicInt(0);

    /* JADX INFO: renamed from: isReadIn-h_f27i8$runtime, reason: not valid java name */
    public final boolean m5642isReadInh_f27i8$runtime(int i) {
        return (ReaderKind.m5631constructorimpl(this.readerKind.get()) & i) != 0;
    }

    /* JADX INFO: renamed from: recordReadIn-h_f27i8$runtime, reason: not valid java name */
    public final void m5643recordReadInh_f27i8$runtime(int i) {
        int iM5631constructorimpl;
        do {
            iM5631constructorimpl = ReaderKind.m5631constructorimpl(this.readerKind.get());
            if ((iM5631constructorimpl & i) != 0) {
                return;
            }
        } while (!this.readerKind.compareAndSet(iM5631constructorimpl, ReaderKind.m5631constructorimpl(iM5631constructorimpl | i)));
    }
}

package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class il7 {
    public static final gl7 a = new gl7(new byte[0], 0, 0, false);
    public static final int b;
    public static final AtomicReference<gl7>[] c;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = iHighestOneBit;
        AtomicReference<gl7>[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i = 0; i < iHighestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference<>();
        }
        c = atomicReferenceArr;
    }

    public static final void a(gl7 gl7Var) {
        gl7Var.getClass();
        if (gl7Var.f != null || gl7Var.g != null) {
            fg.c("Failed requirement.");
            return;
        }
        if (gl7Var.d) {
            return;
        }
        AtomicReference<gl7> atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        gl7 gl7Var2 = a;
        gl7 andSet = atomicReference.getAndSet(gl7Var2);
        if (andSet == gl7Var2) {
            return;
        }
        int i = andSet != null ? andSet.c : 0;
        if (i >= 65536) {
            atomicReference.set(andSet);
            return;
        }
        gl7Var.f = andSet;
        gl7Var.b = 0;
        gl7Var.c = i + 8192;
        atomicReference.set(gl7Var);
    }

    public static final gl7 b() {
        AtomicReference<gl7> atomicReference = c[(int) (Thread.currentThread().getId() & (((long) b) - 1))];
        gl7 gl7Var = a;
        gl7 andSet = atomicReference.getAndSet(gl7Var);
        if (andSet == gl7Var) {
            return new gl7();
        }
        if (andSet == null) {
            atomicReference.set(null);
            return new gl7();
        }
        atomicReference.set(andSet.f);
        andSet.f = null;
        andSet.c = 0;
        return andSet;
    }
}

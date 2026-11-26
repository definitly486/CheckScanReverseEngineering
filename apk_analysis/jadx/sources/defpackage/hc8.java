package defpackage;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class hc8 implements bc8 {
    private static final /* synthetic */ hc8[] $VALUES;
    public static final hc8 CANCELLED;

    static {
        hc8 hc8Var = new hc8("CANCELLED", 0);
        CANCELLED = hc8Var;
        $VALUES = new hc8[]{hc8Var};
    }

    public hc8() {
        throw null;
    }

    public static void a(AtomicReference atomicReference) {
        bc8 bc8Var;
        bc8 bc8Var2 = (bc8) atomicReference.get();
        hc8 hc8Var = CANCELLED;
        if (bc8Var2 == hc8Var || (bc8Var = (bc8) atomicReference.getAndSet(hc8Var)) == hc8Var || bc8Var == null) {
            return;
        }
        bc8Var.cancel();
    }

    public static boolean d(AtomicReference<bc8> atomicReference, bc8 bc8Var) {
        nq5.a(bc8Var, "s is null");
        while (!atomicReference.compareAndSet(null, bc8Var)) {
            if (atomicReference.get() != null) {
                bc8Var.cancel();
                if (atomicReference.get() == CANCELLED) {
                    return false;
                }
                d97.b(new ProtocolViolationException("Subscription already set!"));
                return false;
            }
        }
        return true;
    }

    public static boolean e(long j) {
        if (j > 0) {
            return true;
        }
        d97.b(new IllegalArgumentException(r01.c(j, "n > 0 required but it was ")));
        return false;
    }

    public static boolean f(bc8 bc8Var, bc8 bc8Var2) {
        if (bc8Var2 == null) {
            d97.b(new NullPointerException("next is null"));
            return false;
        }
        if (bc8Var == null) {
            return true;
        }
        bc8Var2.cancel();
        d97.b(new ProtocolViolationException("Subscription already set!"));
        return false;
    }

    public static hc8 valueOf(String str) {
        return (hc8) Enum.valueOf(hc8.class, str);
    }

    public static hc8[] values() {
        return (hc8[]) $VALUES.clone();
    }

    @Override // defpackage.bc8
    public final void cancel() {
    }

    @Override // defpackage.bc8
    public final void request(long j) {
    }
}

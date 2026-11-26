package defpackage;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class ip2 implements cp2 {
    private static final /* synthetic */ ip2[] $VALUES;
    public static final ip2 DISPOSED;

    static {
        ip2 ip2Var = new ip2("DISPOSED", 0);
        DISPOSED = ip2Var;
        $VALUES = new ip2[]{ip2Var};
    }

    public ip2() {
        throw null;
    }

    public static void a(AtomicReference atomicReference) {
        cp2 cp2Var;
        cp2 cp2Var2 = (cp2) atomicReference.get();
        ip2 ip2Var = DISPOSED;
        if (cp2Var2 == ip2Var || (cp2Var = (cp2) atomicReference.getAndSet(ip2Var)) == ip2Var || cp2Var == null) {
            return;
        }
        cp2Var.dispose();
    }

    public static boolean d(cp2 cp2Var) {
        return cp2Var == DISPOSED;
    }

    public static void e(AtomicReference atomicReference, cp2 cp2Var) {
        while (true) {
            cp2 cp2Var2 = (cp2) atomicReference.get();
            if (cp2Var2 != DISPOSED) {
                while (!atomicReference.compareAndSet(cp2Var2, cp2Var)) {
                    if (atomicReference.get() != cp2Var2) {
                    }
                }
                return;
            } else {
                if (cp2Var != null) {
                    cp2Var.dispose();
                    return;
                }
                return;
            }
        }
    }

    public static void f(AtomicReference atomicReference, cp2 cp2Var) {
        while (true) {
            cp2 cp2Var2 = (cp2) atomicReference.get();
            if (cp2Var2 == DISPOSED) {
                if (cp2Var != null) {
                    cp2Var.dispose();
                    return;
                }
                return;
            } else {
                do {
                    if (atomicReference.compareAndSet(cp2Var2, cp2Var)) {
                        if (cp2Var2 != null) {
                            cp2Var2.dispose();
                            return;
                        }
                        return;
                    }
                } while (atomicReference.get() == cp2Var2);
            }
        }
    }

    public static boolean g(AtomicReference<cp2> atomicReference, cp2 cp2Var) {
        nq5.a(cp2Var, "d is null");
        while (!atomicReference.compareAndSet(null, cp2Var)) {
            if (atomicReference.get() != null) {
                cp2Var.dispose();
                if (atomicReference.get() == DISPOSED) {
                    return false;
                }
                d97.b(new ProtocolViolationException("Disposable already set!"));
                return false;
            }
        }
        return true;
    }

    public static boolean i(cp2 cp2Var, cp2 cp2Var2) {
        if (cp2Var2 == null) {
            d97.b(new NullPointerException("next is null"));
            return false;
        }
        if (cp2Var == null) {
            return true;
        }
        cp2Var2.dispose();
        d97.b(new ProtocolViolationException("Disposable already set!"));
        return false;
    }

    public static ip2 valueOf(String str) {
        return (ip2) Enum.valueOf(ip2.class, str);
    }

    public static ip2[] values() {
        return (ip2[]) $VALUES.clone();
    }

    @Override // defpackage.cp2
    public final void dispose() {
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return true;
    }
}

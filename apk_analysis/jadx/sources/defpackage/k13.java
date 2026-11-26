package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class k13 {
    public static final a a = new a("No further exceptions");

    public static final class a extends Throwable {
        @Override // java.lang.Throwable
        public final Throwable fillInStackTrace() {
            return this;
        }
    }

    public static <T> boolean a(AtomicReference<Throwable> atomicReference, Throwable th) {
        while (true) {
            Throwable th2 = atomicReference.get();
            if (th2 == a) {
                return false;
            }
            Throwable compositeException = th2 == null ? th : new CompositeException(th2, th);
            while (!atomicReference.compareAndSet(th2, compositeException)) {
                if (atomicReference.get() != th2) {
                }
            }
            return true;
        }
    }

    public static <T> Throwable b(AtomicReference<Throwable> atomicReference) {
        Throwable th = atomicReference.get();
        a aVar = a;
        return th != aVar ? atomicReference.getAndSet(aVar) : th;
    }

    public static String c(long j, TimeUnit timeUnit) {
        StringBuilder sbF = xp.f(j, "The source did not signal an event for ", " ");
        sbF.append(timeUnit.toString().toLowerCase());
        sbF.append(" and has been terminated.");
        return sbF.toString();
    }

    public static RuntimeException d(Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        }
        return th instanceof RuntimeException ? (RuntimeException) th : new RuntimeException(th);
    }
}

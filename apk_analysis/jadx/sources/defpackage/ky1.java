package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class ky1 {
    public static final Logger a = Logger.getLogger(ky1.class.getName());
    public static final ky1 b = new ky1();

    public static final class a {
        public static final b a;

        static {
            b nt8Var;
            AtomicReference atomicReference = new AtomicReference();
            try {
                nt8Var = (b) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(b.class).getConstructor(null).newInstance(null);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                nt8Var = new nt8();
            } catch (Exception e2) {
                mg.e("Storage override failed to initialize", e2);
                return;
            }
            a = nt8Var;
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                ky1.a.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }
    }

    public static abstract class b {
        public abstract ky1 a();

        public abstract void b(ky1 ky1Var, ky1 ky1Var2);

        public abstract ky1 c(ky1 ky1Var);
    }

    public static ky1 b() {
        ky1 ky1VarA = a.a.a();
        return ky1VarA == null ? b : ky1VarA;
    }

    public final ky1 a() {
        ky1 ky1VarC = a.a.c(this);
        return ky1VarC == null ? b : ky1VarC;
    }

    public final void c(ky1 ky1Var) {
        if (ky1Var != null) {
            a.a.b(this, ky1Var);
        } else {
            o2.d("toAttach");
        }
    }
}

package defpackage;

import io.grpc.StatusException;
import io.grpc.StatusRuntimeException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class ul1 {
    public static final Logger a = Logger.getLogger(ul1.class.getName());
    public static final boolean b;
    public static final io.grpc.b.C0204b<c> c;

    public static final class a<RespT> extends l0<RespT> {
        public final rl1<?, RespT> i;

        public a(rl1<?, RespT> rl1Var) {
            this.i = rl1Var;
        }

        @Override // defpackage.l0
        public final void j() {
            this.i.a("GrpcFuture was cancelled", null);
        }

        @Override // defpackage.l0
        public final String k() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.i, "clientCall");
            return aVarB.toString();
        }
    }

    public static abstract class b<T> extends rl1.a<T> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes4.dex */
    public static final class c {
        private static final /* synthetic */ c[] $VALUES;
        public static final c ASYNC;
        public static final c BLOCKING;
        public static final c FUTURE;

        static {
            c cVar = new c("BLOCKING", 0);
            BLOCKING = cVar;
            c cVar2 = new c("FUTURE", 1);
            FUTURE = cVar2;
            c cVar3 = new c("ASYNC", 2);
            ASYNC = cVar3;
            $VALUES = new c[]{cVar, cVar2, cVar3};
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class d extends ConcurrentLinkedQueue<Runnable> implements Executor {
        public static final Logger c = Logger.getLogger(d.class.getName());
        public static final Object d = new Object();
        public volatile Object b;

        public final void a() throws InterruptedException {
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            Runnable runnablePoll = poll();
            if (runnablePoll == null) {
                this.b = Thread.currentThread();
                while (true) {
                    try {
                        Runnable runnablePoll2 = poll();
                        if (runnablePoll2 != null) {
                            this.b = null;
                            runnablePoll = runnablePoll2;
                            break;
                        } else {
                            LockSupport.park(this);
                            if (Thread.interrupted()) {
                                throw new InterruptedException();
                            }
                        }
                    } catch (Throwable th) {
                        this.b = null;
                        throw th;
                    }
                }
            }
            do {
                try {
                    runnablePoll.run();
                } catch (Throwable th2) {
                    c.log(Level.WARNING, "Runnable threw exception", th2);
                }
                runnablePoll = poll();
            } while (runnablePoll != null);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            add(runnable);
            Object obj = this.b;
            if (obj != d) {
                LockSupport.unpark((Thread) obj);
            } else if (remove(runnable) && ul1.b) {
                throw new RejectedExecutionException();
            }
        }

        public final void shutdown() {
            this.b = d;
            while (true) {
                Runnable runnablePoll = poll();
                if (runnablePoll == null) {
                    return;
                }
                try {
                    runnablePoll.run();
                } catch (Throwable th) {
                    c.log(Level.WARNING, "Runnable threw exception", th);
                }
            }
        }
    }

    public static final class e<RespT> extends b<RespT> {
        public final a<RespT> a;
        public RespT b;
        public boolean c = false;

        public e(a<RespT> aVar) {
            this.a = aVar;
        }

        @Override // rl1.a
        public final void a(h88 h88Var, la5 la5Var) {
            boolean zF = h88Var.f();
            a<RespT> aVar = this.a;
            if (!zF) {
                aVar.m(new StatusRuntimeException(h88Var, la5Var));
                return;
            }
            if (!this.c) {
                aVar.m(new StatusRuntimeException(h88.l.h("No value received for unary call"), la5Var));
            }
            aVar.l(this.b);
        }

        @Override // rl1.a
        public final void b(la5 la5Var) {
        }

        @Override // rl1.a
        public final void c(RespT respt) {
            if (this.c) {
                throw h88.l.h("More than one value received for unary call").a();
            }
            this.b = respt;
            this.c = true;
        }
    }

    static {
        b = !i13.b(System.getenv("GRPC_CLIENT_CALL_REJECT_RUNNABLE")) && Boolean.parseBoolean(System.getenv("GRPC_CLIENT_CALL_REJECT_RUNNABLE"));
        c = new io.grpc.b.C0204b<>("internal-stub-type");
    }

    public static void a(rl1 rl1Var, Throwable th) {
        try {
            rl1Var.a(null, th);
        } catch (Error | RuntimeException e2) {
            a.log(Level.SEVERE, "RuntimeException encountered while closing call", e2);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new AssertionError(th);
        }
        throw ((Error) th);
    }

    public static a b(rl1 rl1Var, e73 e73Var) {
        a aVar = new a(rl1Var);
        e eVar = new e(aVar);
        rl1Var.e(eVar, new la5());
        eVar.a.i.c();
        try {
            rl1Var.d(e73Var);
            rl1Var.b();
            return aVar;
        } catch (Error | RuntimeException e2) {
            a(rl1Var, e2);
            throw null;
        }
    }

    public static Object c(a aVar) {
        try {
            return aVar.get();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw h88.f.h("Thread interrupted").g(e2).a();
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            o8.l(cause, "t");
            for (Throwable cause2 = cause; cause2 != null; cause2 = cause2.getCause()) {
                if (cause2 instanceof StatusException) {
                    throw new StatusRuntimeException(((StatusException) cause2).b, null);
                }
                if (cause2 instanceof StatusRuntimeException) {
                    StatusRuntimeException statusRuntimeException = (StatusRuntimeException) cause2;
                    throw new StatusRuntimeException(statusRuntimeException.b, statusRuntimeException.c);
                }
            }
            throw h88.g.h("unexpected exception").g(cause).a();
        }
    }
}

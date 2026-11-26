package defpackage;

import com.google.common.collect.i;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public abstract class lb<InputT, OutputT> extends mb<OutputT> {
    public static final wn4 o = new wn4(lb.class);
    public i<? extends ListenableFuture<? extends InputT>> m;
    public final boolean n;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a ALL_INPUT_FUTURES_PROCESSED;
        public static final a OUTPUT_FUTURE_DONE;

        static {
            a aVar = new a("OUTPUT_FUTURE_DONE", 0);
            OUTPUT_FUTURE_DONE = aVar;
            a aVar2 = new a("ALL_INPUT_FUTURES_PROCESSED", 1);
            ALL_INPUT_FUTURES_PROCESSED = aVar2;
            $VALUES = new a[]{aVar, aVar2};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public lb(i iVar, boolean z) {
        int size = iVar.size();
        this.i = null;
        this.j = size;
        this.m = iVar;
        this.n = z;
    }

    @Override // defpackage.l0
    public final void d() {
        i<? extends ListenableFuture<? extends InputT>> iVar = this.m;
        u(a.OUTPUT_FUTURE_DONE);
        if ((this.b instanceof l0.a) && (iVar != null)) {
            boolean zO = o();
            y69<? extends ListenableFuture<? extends InputT>> it = iVar.iterator();
            while (it.hasNext()) {
                it.next().cancel(zO);
            }
        }
    }

    @Override // defpackage.l0
    public final String k() {
        i<? extends ListenableFuture<? extends InputT>> iVar = this.m;
        if (iVar == null) {
            return super.k();
        }
        return "futures=" + iVar;
    }

    public final void p(i<? extends ListenableFuture<? extends InputT>> iVar) {
        int iB = mb.k.b(this);
        o8.s(iB >= 0, "Less than 0 remaining futures");
        if (iB == 0) {
            if (iVar != null) {
                y69<? extends ListenableFuture<? extends InputT>> it = iVar.iterator();
                while (it.hasNext()) {
                    ListenableFuture<? extends InputT> next = it.next();
                    if (!next.isCancelled()) {
                        boolean z = false;
                        while (true) {
                            try {
                                next.get();
                                break;
                            } catch (InterruptedException unused) {
                                z = true;
                            } catch (Throwable th) {
                                if (z) {
                                    Thread.currentThread().interrupt();
                                }
                                throw th;
                            }
                        }
                        if (z) {
                            try {
                                Thread.currentThread().interrupt();
                            } catch (ExecutionException e) {
                                r(e.getCause());
                            } catch (Throwable th2) {
                                r(th2);
                            }
                        }
                    }
                }
            }
            this.i = null;
            q();
            u(a.ALL_INPUT_FUTURES_PROCESSED);
        }
    }

    public abstract void q();

    public final void r(Throwable th) {
        th.getClass();
        if (this.n && !m(th)) {
            Set<Throwable> set = this.i;
            if (set == null) {
                Set setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
                setNewSetFromMap.getClass();
                if (!(this.b instanceof l0.a)) {
                    Throwable thA = a();
                    Objects.requireNonNull(thA);
                    while (thA != null && setNewSetFromMap.add(thA)) {
                        thA = thA.getCause();
                    }
                }
                mb.k.a(this, setNewSetFromMap);
                Set<Throwable> set2 = this.i;
                Objects.requireNonNull(set2);
                set = set2;
            }
            Throwable cause = th;
            while (true) {
                if (cause == null) {
                    o.a().log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
                    return;
                } else if (!set.add(cause)) {
                    break;
                } else {
                    cause = cause.getCause();
                }
            }
        }
        if (th instanceof Error) {
            o.a().log(Level.SEVERE, "Input Future failed with Error", th);
        }
    }

    public final void s() {
        Objects.requireNonNull(this.m);
        if (this.m.isEmpty()) {
            q();
            return;
        }
        i<? extends ListenableFuture<? extends InputT>> iVar = this.m;
        final int i = 0;
        if (!this.n) {
            kb kbVar = new kb(i, (go1) this, null);
            y69<? extends ListenableFuture<? extends InputT>> it = iVar.iterator();
            while (it.hasNext()) {
                ListenableFuture<? extends InputT> next = it.next();
                if (next.isDone()) {
                    p(null);
                } else {
                    next.addListener(kbVar, jn2.INSTANCE);
                }
            }
            return;
        }
        y69<? extends ListenableFuture<? extends InputT>> it2 = iVar.iterator();
        while (it2.hasNext()) {
            final ListenableFuture<? extends InputT> next2 = it2.next();
            int i2 = i + 1;
            if (next2.isDone()) {
                t(i, next2);
            } else {
                final go1 go1Var = (go1) this;
                next2.addListener(new Runnable() { // from class: jb
                    @Override // java.lang.Runnable
                    public final void run() {
                        go1Var.t(i, next2);
                    }
                }, jn2.INSTANCE);
            }
            i = i2;
        }
    }

    public final void t(int i, ListenableFuture<? extends InputT> listenableFuture) {
        try {
            boolean z = false;
            if (listenableFuture.isCancelled()) {
                this.m = null;
                cancel(false);
            } else {
                while (true) {
                    try {
                        try {
                            listenableFuture.get();
                            break;
                        } catch (InterruptedException unused) {
                            z = true;
                        } catch (Throwable th) {
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    } catch (ExecutionException e) {
                        r(e.getCause());
                    } catch (Throwable th2) {
                        r(th2);
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
            p(null);
        } catch (Throwable th3) {
            p(null);
            throw th3;
        }
    }

    public void u(a aVar) {
        aVar.getClass();
        this.m = null;
    }
}

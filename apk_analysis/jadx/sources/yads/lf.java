package yads;

import android.os.Looper;
import defpackage.j59;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class lf {
    public static final Object j = new Object();
    public static volatile lf k;
    public final long a;
    public final long b;
    public final Set c;
    public final defpackage.y22 d;
    public final df e;
    public final Cif f;
    public final rw5 g;
    public final i90 h = new i90();
    public final AtomicBoolean i = new AtomicBoolean(false);

    public lf(long j2, long j3, Set set, defpackage.y22 y22Var, df dfVar, Cif cif, rw5 rw5Var) {
        this.a = j2;
        this.b = j3;
        this.c = set;
        this.d = y22Var;
        this.e = dfVar;
        this.f = cif;
        this.g = rw5Var;
    }

    public static final void a(lf lfVar) {
        rw5 rw5Var = lfVar.g;
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        StackTraceElement[] stackTraceElementArr = allStackTraces.get(Looper.getMainLooper().getThread());
        if (stackTraceElementArr != null) {
            Set set = cq5.a;
            if (cq5.a(stackTraceElementArr, lfVar.c)) {
                lfVar.f.a.b(allStackTraces);
            }
        }
    }

    public static final j59 a(lf lfVar, Throwable th) {
        lfVar.i.set(false);
        return j59.a;
    }

    public final void a() {
        if (this.i.getAndSet(true)) {
            return;
        }
        defpackage.av0.c(this.d, this.h, null, new kf(this, null), 2).g(new defpackage.nx1(this, 5));
    }
}

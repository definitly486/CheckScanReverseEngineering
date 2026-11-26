package yads;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes6.dex */
public final class p15 implements uk2 {
    public final ExecutorService a;
    public final bd0 b;
    public final cw c;
    public final lw d;
    public pk2 e;
    public volatile o15 f;
    public volatile boolean g;

    public p15(p04 p04Var, bw bwVar, ExecutorService executorService) {
        executorService.getClass();
        this.a = executorService;
        p04Var.c.getClass();
        Map map = Collections.EMPTY_MAP;
        k04 k04Var = p04Var.c;
        Uri uri = k04Var.a;
        String str = k04Var.c;
        zj.a(uri, "The uri must be set.");
        bd0 bd0Var = new bd0(uri, 0L, 1, null, map, 0L, -1L, str, 4, null);
        this.b = bd0Var;
        vc0 vc0Var = bwVar.c;
        cw cwVarA = bwVar.a(vc0Var != null ? vc0Var.a() : null, 1);
        this.c = cwVarA;
        this.d = new lw(cwVarA, bd0Var, null, new defpackage.wp0(this, 5));
    }

    @Override // yads.uk2
    public final void a(pk2 pk2Var) {
        this.e = pk2Var;
        this.f = new o15(this);
        try {
            if (!this.g) {
                this.a.execute(this.f);
                try {
                    o15 o15Var = this.f;
                    o15Var.c.a();
                    o15Var.c();
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    cause.getClass();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    }
                    int i = u56.a;
                    throw cause;
                }
            }
            this.f.c.b();
        } catch (Throwable th) {
            this.f.c.b();
            throw th;
        }
    }

    @Override // yads.uk2
    public final void cancel() {
        this.g = true;
        o15 o15Var = this.f;
        if (o15Var != null) {
            o15Var.cancel(true);
        }
    }

    @Override // yads.uk2
    public final void remove() {
        cw cwVar = this.c;
        yv yvVar = cwVar.a;
        iw iwVar = cwVar.e;
        bd0 bd0Var = this.b;
        ((defpackage.xp) iwVar).getClass();
        ((ok5) yvVar).c(iw.b(bd0Var));
    }

    public final void a(long j, long j2, long j3) {
        pk2 pk2Var = this.e;
        if (pk2Var == null) {
            return;
        }
        pk2Var.a(j, j2, (j == -1 || j == 0) ? -1.0f : (j2 * 100.0f) / j);
    }
}

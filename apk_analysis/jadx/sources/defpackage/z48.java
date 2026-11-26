package defpackage;

import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.data.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final class z48 implements t82, t82.a {
    public final md2<?> b;
    public final od2 c;
    public volatile int d;
    public volatile o82 e;
    public volatile Object f;
    public volatile nc5.a<?> g;
    public volatile p82 h;

    public z48(md2 md2Var, od2 od2Var) {
        this.b = md2Var;
        this.c = od2Var;
    }

    @Override // t82.a
    public final void a(kf4 kf4Var, Exception exc, s82<?> s82Var, y82 y82Var) {
        this.c.a(kf4Var, exc, s82Var, this.g.c.c());
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0020  */
    @Override // defpackage.t82
    public final boolean b() {
        boolean z;
        if (this.f == null) {
            if (this.e != null) {
            }
            this.e = null;
            this.g = null;
            z = false;
            while (!z) {
                ArrayList arrayListB = this.b.b();
                int i = this.d;
                this.d = i + 1;
                this.g = (nc5.a) arrayListB.get(i);
                if (this.g == null) {
                }
            }
            return z;
        }
        Object obj = this.f;
        this.f = null;
        try {
            if (d(obj)) {
                if (this.e != null || !this.e.b()) {
                    this.e = null;
                    this.g = null;
                    z = false;
                    while (!z && this.d < this.b.b().size()) {
                        ArrayList arrayListB2 = this.b.b();
                        int i2 = this.d;
                        this.d = i2 + 1;
                        this.g = (nc5.a) arrayListB2.get(i2);
                        if (this.g == null && (this.b.p.c(this.g.c.c()) || this.b.c(this.g.c.a()) != null)) {
                            this.g.c.f(this.b.o, new y48(this, this.g));
                            z = true;
                        }
                    }
                    return z;
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e);
            }
        }
        return true;
    }

    @Override // t82.a
    public final void c(kf4 kf4Var, Object obj, s82<?> s82Var, y82 y82Var, kf4 kf4Var2) {
        this.c.c(kf4Var, obj, s82Var, this.g.c.c(), kf4Var);
    }

    @Override // defpackage.t82
    public final void cancel() {
        nc5.a<?> aVar = this.g;
        if (aVar != null) {
            aVar.c.cancel();
        }
    }

    public final boolean d(Object obj) throws Throwable {
        Throwable th;
        int i = cv4.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        try {
            a aVarG = this.b.c.a().g(obj);
            Object objA = aVarG.a();
            vx2<X> vx2VarD = this.b.d(objA);
            q82 q82Var = new q82(vx2VarD, objA, this.b.i);
            kf4 kf4Var = this.g.a;
            md2<?> md2Var = this.b;
            p82 p82Var = new p82(kf4Var, md2Var.n);
            rn2 rn2VarA = ((kz2.c) md2Var.h).a();
            rn2VarA.a(p82Var, q82Var);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + p82Var + ", data: " + obj + ", encoder: " + vx2VarD + ", duration: " + cv4.a(jElapsedRealtimeNanos));
            }
            if (rn2VarA.b(p82Var) != null) {
                this.h = p82Var;
                this.e = new o82(Collections.singletonList(this.g.a), this.b, this);
                this.g.c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.h + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.c.c(this.g.a, aVarG.a(), this.g.c, this.g.c.c(), this.g.a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (z) {
                    throw th;
                }
                this.g.c.b();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

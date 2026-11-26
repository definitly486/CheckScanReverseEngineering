package yads;

import androidx.media3.common.C;
import androidx.media3.datasource.cache.CacheDataSink;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class aw {
    public final yv a;
    public final long b;
    public final int c;
    public bd0 d;
    public long e;
    public File f;
    public OutputStream g;
    public long h;
    public long i;
    public k95 j;

    public aw(yv yvVar) {
        yvVar.getClass();
        this.a = yvVar;
        this.b = CacheDataSink.DEFAULT_FRAGMENT_SIZE;
        this.c = CacheDataSink.DEFAULT_BUFFER_SIZE;
    }

    public final void a(bd0 bd0Var) {
        File file;
        long j = bd0Var.g;
        long jMin = j == -1 ? -1L : Math.min(j - this.i, this.e);
        yv yvVar = this.a;
        String str = bd0Var.h;
        int i = u56.a;
        long j2 = bd0Var.f + this.i;
        ok5 ok5Var = (ok5) yvVar;
        synchronized (ok5Var) {
            try {
                ok5Var.a();
                ww wwVar = (ww) ok5Var.c.a.get(str);
                wwVar.getClass();
                if (!wwVar.c(j2, jMin)) {
                    throw new IllegalStateException();
                }
                if (!ok5Var.a.exists()) {
                    ok5.a(ok5Var.a);
                    ok5Var.c();
                }
                zr3 zr3Var = ok5Var.b;
                if (jMin != -1) {
                    zr3Var.a(ok5Var, jMin);
                } else {
                    zr3Var.getClass();
                }
                File file2 = new File(ok5Var.a, Integer.toString(ok5Var.f.nextInt(10)));
                if (!file2.exists()) {
                    ok5.a(file2);
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i2 = wwVar.a;
                Pattern pattern = qk5.h;
                file = new File(file2, i2 + "." + j2 + "." + jCurrentTimeMillis + ".v3.exo");
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f = file;
        FileOutputStream fileOutputStream = new FileOutputStream(this.f);
        if (this.c > 0) {
            k95 k95Var = this.j;
            if (k95Var == null) {
                this.j = new k95(fileOutputStream, this.c);
            } else {
                k95Var.a(fileOutputStream);
            }
            this.g = this.j;
        } else {
            this.g = fileOutputStream;
        }
        this.h = 0L;
    }

    public final void a() {
        OutputStream outputStream = this.g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            u56.a(this.g);
            this.g = null;
            File file = this.f;
            this.f = null;
            yv yvVar = this.a;
            long j = this.h;
            ok5 ok5Var = (ok5) yvVar;
            synchronized (ok5Var) {
                if (file.exists()) {
                    if (j == 0) {
                        file.delete();
                        return;
                    }
                    qk5 qk5VarA = qk5.a(file, j, C.TIME_UNSET, ok5Var.c);
                    qk5VarA.getClass();
                    ax axVar = ok5Var.c;
                    ww wwVar = (ww) axVar.a.get(qk5VarA.b);
                    wwVar.getClass();
                    if (wwVar.c(qk5VarA.c, qk5VarA.d)) {
                        long jA = i60.a(wwVar.e);
                        if (jA != -1 && qk5VarA.c + qk5VarA.d > jA) {
                            throw new IllegalStateException();
                        }
                        if (ok5Var.d != null) {
                            try {
                                ok5Var.d.a(file.getName(), qk5VarA.d, qk5VarA.g);
                                ok5Var.a(qk5VarA);
                                try {
                                    ok5Var.c.a();
                                    ok5Var.notifyAll();
                                    return;
                                } catch (Throwable th) {
                                    throw new vv(th);
                                }
                            } catch (IOException e) {
                                throw new vv(e);
                            }
                        }
                        ok5Var.a(qk5VarA);
                        ok5Var.c.a();
                        ok5Var.notifyAll();
                        return;
                        throw th;
                    }
                    throw new IllegalStateException();
                }
            }
        } catch (Throwable th2) {
            u56.a(this.g);
            this.g = null;
            File file2 = this.f;
            this.f = null;
            file2.delete();
            throw th2;
        }
    }
}

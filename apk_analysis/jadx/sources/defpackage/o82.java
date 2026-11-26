package defpackage;

import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class o82 implements t82, s82.a<Object> {
    public final List<kf4> b;
    public final md2<?> c;
    public final t82.a d;
    public int e = -1;
    public kf4 f;
    public List<nc5<File, ?>> g;
    public int h;
    public volatile nc5.a<?> i;
    public File j;

    public o82(List<kf4> list, md2<?> md2Var, t82.a aVar) {
        this.b = list;
        this.c = md2Var;
        this.d = aVar;
    }

    @Override // defpackage.t82
    public final boolean b() {
        while (true) {
            List<nc5<File, ?>> list = this.g;
            boolean z = false;
            if (list != null && this.h < list.size()) {
                this.i = null;
                while (!z && this.h < this.g.size()) {
                    List<nc5<File, ?>> list2 = this.g;
                    int i = this.h;
                    this.h = i + 1;
                    nc5<File, ?> nc5Var = list2.get(i);
                    File file = this.j;
                    md2<?> md2Var = this.c;
                    this.i = nc5Var.a(file, md2Var.e, md2Var.f, md2Var.i);
                    if (this.i != null && this.c.c(this.i.c.a()) != null) {
                        this.i.c.f(this.c.o, this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.e + 1;
            this.e = i2;
            if (i2 >= this.b.size()) {
                return false;
            }
            kf4 kf4Var = this.b.get(this.e);
            md2<?> md2Var2 = this.c;
            File fileB = ((kz2.c) md2Var2.h).a().b(new p82(kf4Var, md2Var2.n));
            this.j = fileB;
            if (fileB != null) {
                this.f = kf4Var;
                this.g = this.c.c.a().f(fileB);
                this.h = 0;
            }
        }
    }

    @Override // defpackage.t82
    public final void cancel() {
        nc5.a<?> aVar = this.i;
        if (aVar != null) {
            aVar.c.cancel();
        }
    }

    @Override // s82.a
    public final void d(Object obj) {
        this.d.c(this.f, obj, this.i.c, y82.DATA_DISK_CACHE, this.f);
    }

    @Override // s82.a
    public final void e(Exception exc) {
        this.d.a(this.f, exc, this.i.c, y82.DATA_DISK_CACHE);
    }
}

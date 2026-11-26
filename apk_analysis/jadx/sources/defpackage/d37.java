package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public final class d37 extends g37 {
    public final /* synthetic */ j95 a;
    public final /* synthetic */ File b;

    public d37(j95 j95Var, File file) {
        this.a = j95Var;
        this.b = file;
    }

    @Override // defpackage.g37
    public final long a() {
        return this.b.length();
    }

    @Override // defpackage.g37
    public final j95 b() {
        return this.a;
    }

    @Override // defpackage.g37
    public final void c(vu0 vu0Var) throws IOException {
        File file = this.b;
        file.getClass();
        t54 t54Var = new t54(new FileInputStream(file), wv8.d);
        try {
            vu0Var.j0(t54Var);
            t54Var.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(t54Var, th);
                throw th2;
            }
        }
    }
}

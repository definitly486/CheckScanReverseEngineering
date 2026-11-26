package defpackage;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gj3 implements vk3 {
    public final vk3 b;

    public gj3(vk3 vk3Var) {
        o8.l(vk3Var, "delegate");
        this.b = vk3Var;
    }

    @Override // defpackage.vk3
    public final void T(int i, long j) {
        this.b.T(i, j);
    }

    @Override // defpackage.vk3
    public final int b0() {
        return this.b.b0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    @Override // defpackage.vk3
    public final void flush() {
        this.b.flush();
    }

    @Override // defpackage.vk3
    public final void g0(q03 q03Var, byte[] bArr) {
        this.b.g0(q03Var, bArr);
    }

    @Override // defpackage.vk3
    public final void u() {
        this.b.u();
    }

    @Override // defpackage.vk3
    public final void w(boolean z, int i, bu0 bu0Var, int i2) {
        this.b.w(z, i, bu0Var, i2);
    }

    @Override // defpackage.vk3
    public final void x(int i, List list, boolean z) {
        this.b.x(i, list, z);
    }

    @Override // defpackage.vk3
    public final void z(pr7 pr7Var) {
        this.b.z(pr7Var);
    }
}

package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public final class pv5 extends m1 {
    public final bu0 b;

    public pv5(bu0 bu0Var) {
        this.b = bu0Var;
    }

    @Override // defpackage.dy6
    public final void G(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int i3 = this.b.read(bArr, i, i2);
            if (i3 == -1) {
                yq.d(kv2.b(i2, "EOF trying to read ", " bytes"));
                return;
            } else {
                i2 -= i3;
                i += i3;
            }
        }
    }

    @Override // defpackage.m1, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws EOFException {
        this.b.p();
    }

    @Override // defpackage.dy6
    public final int q() {
        return (int) this.b.c;
    }

    @Override // defpackage.dy6
    public final int readUnsignedByte() {
        try {
            return this.b.readByte() & 255;
        } catch (EOFException e) {
            yq.d(e.getMessage());
            return 0;
        }
    }

    @Override // defpackage.dy6
    public final void s0(OutputStream outputStream, int i) throws IOException {
        this.b.G0(outputStream, i);
    }

    @Override // defpackage.dy6
    public final void skipBytes(int i) {
        try {
            this.b.skip(i);
        } catch (EOFException e) {
            yq.d(e.getMessage());
        }
    }

    @Override // defpackage.dy6
    public final dy6 t(int i) {
        bu0 bu0Var = new bu0();
        bu0Var.H(this.b, i);
        return new pv5(bu0Var);
    }
}

package defpackage;

import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.a0;
import com.google.protobuf.j;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class ms6 extends InputStream implements zr2, gg4 {
    public a0 b;
    public final x36<?> c;
    public ByteArrayInputStream d;

    public ms6(a0 a0Var, x36<?> x36Var) {
        this.b = a0Var;
        this.c = x36Var;
    }

    @Override // defpackage.zr2
    public final int a(OutputStream outputStream) throws IOException {
        a0 a0Var = this.b;
        if (a0Var != null) {
            int serializedSize = a0Var.getSerializedSize();
            this.b.writeTo(outputStream);
            this.b = null;
            return serializedSize;
        }
        ByteArrayInputStream byteArrayInputStream = this.d;
        if (byteArrayInputStream == null) {
            return 0;
        }
        j jVar = ns6.a;
        o8.l(outputStream, "outputStream cannot be null!");
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int i = byteArrayInputStream.read(bArr);
            if (i == -1) {
                int i2 = (int) j;
                this.d = null;
                return i2;
            }
            outputStream.write(bArr, 0, i);
            j += (long) i;
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        a0 a0Var = this.b;
        if (a0Var != null) {
            return a0Var.getSerializedSize();
        }
        ByteArrayInputStream byteArrayInputStream = this.d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.available();
        }
        return 0;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        a0 a0Var = this.b;
        if (a0Var != null) {
            int serializedSize = a0Var.getSerializedSize();
            if (serializedSize == 0) {
                this.b = null;
                this.d = null;
                return -1;
            }
            if (i2 >= serializedSize) {
                Logger logger = CodedOutputStream.p;
                CodedOutputStream.b bVar = new CodedOutputStream.b(bArr, i, serializedSize);
                this.b.writeTo(bVar);
                bVar.U();
                this.b = null;
                this.d = null;
                return serializedSize;
            }
            this.d = new ByteArrayInputStream(this.b.toByteArray());
            this.b = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read(bArr, i, i2);
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.b != null) {
            this.d = new ByteArrayInputStream(this.b.toByteArray());
            this.b = null;
        }
        ByteArrayInputStream byteArrayInputStream = this.d;
        if (byteArrayInputStream != null) {
            return byteArrayInputStream.read();
        }
        return -1;
    }
}

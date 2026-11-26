package defpackage;

import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public interface vu0 extends s18, WritableByteChannel {
    vu0 d(gx0 gx0Var);

    @Override // defpackage.s18, java.io.Flushable
    void flush();

    bu0 getBuffer();

    vu0 h(long j);

    vu0 j(int i, byte[] bArr);

    long j0(v48 v48Var);

    vu0 k(long j);

    vu0 l(String str);

    OutputStream v0();

    vu0 write(byte[] bArr);

    vu0 writeByte(int i);

    vu0 writeInt(int i);

    vu0 writeShort(int i);
}

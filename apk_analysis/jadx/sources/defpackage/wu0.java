package defpackage;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public interface wu0 extends v48, ReadableByteChannel {
    byte[] C();

    String F(Charset charset);

    long M();

    String S(long j);

    long W(gx0 gx0Var);

    String Y();

    void c(bu0 bu0Var, long j);

    void c0(long j);

    int f0(yz5 yz5Var);

    bu0 getBuffer();

    gx0 i(long j);

    long o0(s18 s18Var);

    byte readByte();

    int readInt();

    short readShort();

    boolean request(long j);

    void skip(long j);

    InputStream w0();
}

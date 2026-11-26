package yads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes6.dex */
public interface mm {
    public static final ByteBuffer a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    ByteBuffer a();

    km a(km kmVar);

    void a(ByteBuffer byteBuffer);

    void b();

    boolean c();

    void d();

    void flush();

    boolean isActive();
}

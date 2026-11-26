package yads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class vk5 {
    public final h84 a(j84 j84Var) {
        ByteBuffer byteBuffer = j84Var.d;
        byteBuffer.getClass();
        if (byteBuffer.position() != 0 || !byteBuffer.hasArray() || byteBuffer.arrayOffset() != 0) {
            defpackage.mi2.b();
            return null;
        }
        if (j84Var.b(Integer.MIN_VALUE)) {
            return null;
        }
        return a(j84Var, byteBuffer);
    }

    public abstract h84 a(j84 j84Var, ByteBuffer byteBuffer);
}

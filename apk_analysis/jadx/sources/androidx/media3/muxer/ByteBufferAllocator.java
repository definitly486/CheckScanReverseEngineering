package androidx.media3.muxer;

import defpackage.n2;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public interface ByteBufferAllocator {
    public static final ByteBufferAllocator DEFAULT = new n2();

    ByteBuffer allocate(int i);
}

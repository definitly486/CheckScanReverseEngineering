package yads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public interface qy3 {
    int a(MediaCodec.BufferInfo bufferInfo);

    MediaFormat a();

    void a(int i);

    void a(int i, int i2, long j, int i3);

    void a(int i, long j);

    void a(int i, ca0 ca0Var, long j);

    void a(int i, boolean z);

    void a(Bundle bundle);

    void a(Surface surface);

    void a(nz3 nz3Var, Handler handler);

    int b();

    ByteBuffer b(int i);

    ByteBuffer c(int i);

    void flush();

    void release();
}

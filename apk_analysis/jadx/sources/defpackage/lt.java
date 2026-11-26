package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class lt {
    public static final AtomicIntegerFieldUpdater<lt> b = AtomicIntegerFieldUpdater.newUpdater(lt.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public volatile int a;

    public final int a() {
        int iDecrementAndGet = b.decrementAndGet(this);
        jy8.a aVar = jy8.a.a;
        return iDecrementAndGet;
    }

    public final int b() {
        int iIncrementAndGet = b.incrementAndGet(this);
        jy8.a aVar = jy8.a.a;
        return iIncrementAndGet;
    }

    public final String toString() {
        return String.valueOf(this.a);
    }
}

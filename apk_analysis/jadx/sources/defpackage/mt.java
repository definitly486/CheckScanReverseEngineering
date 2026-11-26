package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class mt {
    public static final AtomicLongFieldUpdater<mt> b = AtomicLongFieldUpdater.newUpdater(mt.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public volatile long a;

    public final long a() {
        long jIncrementAndGet = b.incrementAndGet(this);
        jy8.a aVar = jy8.a.a;
        return jIncrementAndGet;
    }

    public final String toString() {
        return String.valueOf(this.a);
    }
}

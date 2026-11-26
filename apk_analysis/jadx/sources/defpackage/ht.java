package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
public final class ht {
    public static final AtomicIntegerFieldUpdater<ht> b = AtomicIntegerFieldUpdater.newUpdater(ht.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public volatile int a;

    public final boolean a() {
        boolean zCompareAndSet = b.compareAndSet(this, 0, 1);
        if (zCompareAndSet) {
            jy8.a aVar = jy8.a.a;
        }
        return zCompareAndSet;
    }

    public final boolean b() {
        return this.a != 0;
    }

    public final String toString() {
        return String.valueOf(b());
    }
}

package androidx.media3.exoplayer;

import android.os.HandlerThread;
import android.os.Looper;
import defpackage.o8;

/* JADX INFO: loaded from: classes3.dex */
public final class PlaybackLooperProvider {
    private HandlerThread internalPlaybackThread;
    private final Object lock;
    private Looper playbackLooper;
    private int referenceCount;

    public PlaybackLooperProvider(Looper looper) {
        this.lock = new Object();
        this.playbackLooper = looper;
        this.internalPlaybackThread = null;
        this.referenceCount = 0;
    }

    public Looper obtainLooper() {
        Looper looper;
        synchronized (this.lock) {
            try {
                looper = this.playbackLooper;
                if (looper == null) {
                    o8.r(this.referenceCount == 0 && this.internalPlaybackThread == null);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.internalPlaybackThread = handlerThread;
                    handlerThread.start();
                    looper = this.internalPlaybackThread.getLooper();
                    this.playbackLooper = looper;
                }
                this.referenceCount++;
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    public void releaseLooper() {
        HandlerThread handlerThread;
        synchronized (this.lock) {
            try {
                o8.r(this.referenceCount > 0);
                int i = this.referenceCount - 1;
                this.referenceCount = i;
                if (i == 0 && (handlerThread = this.internalPlaybackThread) != null) {
                    handlerThread.quit();
                    this.internalPlaybackThread = null;
                    this.playbackLooper = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PlaybackLooperProvider() {
        this(null);
    }
}

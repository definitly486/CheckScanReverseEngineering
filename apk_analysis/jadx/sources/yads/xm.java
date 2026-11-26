package yads;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.muxer.MuxerUtil;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
public final class xm {
    public long A;
    public long B;
    public long C;
    public boolean D;
    public long E;
    public long F;
    public final sj0 a;
    public final long[] b;
    public AudioTrack c;
    public int d;
    public int e;
    public wm f;
    public int g;
    public boolean h;
    public long i;
    public float j;
    public boolean k;
    public long l;
    public long m;
    public Method n;
    public long o;
    public boolean p;
    public boolean q;
    public long r;
    public long s;
    public long t;
    public long u;
    public int v;
    public int w;
    public long x;
    public long y;
    public long z;

    public xm(sj0 sj0Var) {
        this.a = sj0Var;
        if (u56.a >= 18) {
            try {
                this.n = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.b = new long[10];
    }

    public final long a() {
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        if (this.x != C.TIME_UNSET) {
            return Math.min(this.A, this.z + ((((SystemClock.elapsedRealtime() * 1000) - this.x) * ((long) this.g)) / 1000000));
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        if (this.h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.u = this.s;
            }
            playbackHeadPosition += this.u;
        }
        if (u56.a <= 29) {
            if (playbackHeadPosition == 0 && this.s > 0 && playState == 3) {
                if (this.y == C.TIME_UNSET) {
                    this.y = SystemClock.elapsedRealtime();
                }
                return this.s;
            }
            this.y = C.TIME_UNSET;
        }
        if (this.s > playbackHeadPosition) {
            this.t++;
        }
        this.s = playbackHeadPosition;
        return playbackHeadPosition + (this.t << 32);
    }

    public final boolean b(long j) {
        if (j > a()) {
            return true;
        }
        if (!this.h) {
            return false;
        }
        AudioTrack audioTrack = this.c;
        audioTrack.getClass();
        return audioTrack.getPlayState() == 2 && a() == 0;
    }

    public final long a(long j) {
        return (j * 1000000) / ((long) this.g);
    }
}

package yads;

import android.media.AudioTrack;

/* JADX INFO: loaded from: classes6.dex */
public final class wm {
    public final vm a;
    public int b;
    public long c;
    public long d;
    public long e;
    public long f;

    public wm(AudioTrack audioTrack) {
        if (u56.a >= 19) {
            this.a = new vm(audioTrack);
            a();
        } else {
            this.a = null;
            a(3);
        }
    }

    public final void a(int i) {
        this.b = i;
        if (i == 0) {
            this.e = 0L;
            this.f = -1L;
            this.c = System.nanoTime() / 1000;
            this.d = 10000L;
            return;
        }
        if (i == 1) {
            this.d = 10000L;
            return;
        }
        if (i == 2 || i == 3) {
            this.d = 10000000L;
        } else if (i == 4) {
            this.d = 500000L;
        } else {
            defpackage.ud.g();
        }
    }

    public final void a() {
        if (this.a != null) {
            a(0);
        }
    }
}

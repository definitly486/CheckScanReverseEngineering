package yads;

import android.media.AudioTrack;

/* JADX INFO: loaded from: classes6.dex */
public final class jj0 extends Thread {
    public final /* synthetic */ AudioTrack b;
    public final /* synthetic */ vj0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jj0(vj0 vj0Var, AudioTrack audioTrack) {
        super("ExoPlayer:AudioTrackReleaseThread");
        this.c = vj0Var;
        this.b = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            this.b.flush();
            this.b.release();
        } finally {
            this.c.h.d();
        }
    }
}

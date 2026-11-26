package yads;

import android.media.AudioTrack;
import android.os.Handler;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
public final class uj0 {
    public final Handler a = new Handler();
    public final tj0 b = new tj0(this);
    public final /* synthetic */ vj0 c;

    public uj0(vj0 vj0Var) {
        this.c = vj0Var;
    }

    public final void a(AudioTrack audioTrack) {
        final Handler handler = this.a;
        Objects.requireNonNull(handler);
        audioTrack.registerStreamEventCallback(new Executor() { // from class: hea
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, this.b);
    }

    public final void b(AudioTrack audioTrack) {
        audioTrack.unregisterStreamEventCallback(this.b);
        this.a.removeCallbacksAndMessages(null);
    }
}

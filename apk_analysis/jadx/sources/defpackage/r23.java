package defpackage;

import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.RenderersFactory;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r23 implements kd8 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ r23(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.kd8
    public final Object get() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ExoPlayer.Builder.lambda$setRenderersFactory$16((RenderersFactory) obj);
            default:
                return SimpleBasePlayer.lambda$mute$17((SimpleBasePlayer.State) obj);
        }
    }
}

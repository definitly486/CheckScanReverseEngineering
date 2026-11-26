package defpackage;

import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.source.MediaSource;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t23 implements kd8 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ t23(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.kd8
    public final Object get() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ExoPlayer.Builder.lambda$new$7((MediaSource.Factory) obj);
            default:
                return SimpleBasePlayer.lambda$setVideoSurface$19((SimpleBasePlayer.State) obj);
        }
    }
}

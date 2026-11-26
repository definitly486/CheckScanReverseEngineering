package defpackage;

import android.content.Context;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.exoplayer.ExoPlayer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vt implements kd8 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Context c;

    public /* synthetic */ vt(Context context, int i) {
        this.b = i;
        this.c = context;
    }

    @Override // defpackage.kd8
    public final Object get() {
        int i = this.b;
        Context context = this.c;
        switch (i) {
            case 0:
                return AudioManagerCompat.getAudioManager(context);
            default:
                return ExoPlayer.Builder.lambda$new$4(context);
        }
    }
}

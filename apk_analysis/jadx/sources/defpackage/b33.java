package defpackage;

import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b33 implements kd8 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b33(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.kd8
    public final Object get() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ExoPlayer.Builder.lambda$new$12((BandwidthMeter) obj);
            default:
                return SimpleBasePlayer.lambda$decreaseDeviceVolume$28((SimpleBasePlayer.State) obj);
        }
    }
}

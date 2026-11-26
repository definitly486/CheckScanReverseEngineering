package defpackage;

import android.media.AudioTrack;
import android.os.Handler;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.preload.BasePreloadManager;
import com.my.tracker.obfuscated.d;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yu implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ yu(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                AudioTrackAudioOutput.lambda$releaseAudioTrackAsync$1((AudioTrack) obj3, (Handler) obj2, (ListenerSet) obj);
                break;
            case 1:
                ((BasePreloadManager) obj3).lambda$onCompleted$1((MediaSource) obj2, (bf6) obj);
                break;
            default:
                ((d) obj3).a((Exception) obj2, (List) obj);
                break;
        }
    }
}

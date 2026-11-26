package defpackage;

import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.my.tracker.obfuscated.t0;
import yads.n8;
import yads.pn3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zt implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zt(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$audioCodecParametersChanged$13((CodecParameters) obj);
                break;
            case 1:
                pn3.a((pn3) obj2, (n8) obj);
                break;
            default:
                ((t0) obj2).b((ReferrerDetails) obj);
                break;
        }
    }
}

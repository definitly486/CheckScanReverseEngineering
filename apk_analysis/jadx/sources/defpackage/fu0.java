package defpackage;

import androidx.camera.video.internal.audio.BufferedAudioStream;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fu0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fu0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((BufferedAudioStream) obj).lambda$start$0();
                break;
            case 1:
                ((MaterialButton) obj).lambda$setOpticalCenterEnabled$5();
                break;
            default:
                ((f18.a) obj).invoke();
                break;
        }
    }
}

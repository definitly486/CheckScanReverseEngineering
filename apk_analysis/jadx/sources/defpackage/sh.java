package defpackage;

import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewOutcomeReceiver;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class sh implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sh(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                AndroidContentCaptureManager.contentCaptureChangeChecker$lambda$0((AndroidContentCaptureManager) obj);
                break;
            case 1:
                AudioTrackAudioOutput.lambda$releaseAudioTrackAsync$0((ListenerSet) obj);
                break;
            default:
                WebViewCompat.lambda$startUpWebView$4((WebViewOutcomeReceiver) obj);
                break;
        }
    }
}

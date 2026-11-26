package defpackage;

import androidx.camera.core.Logger;
import androidx.camera.video.Recorder;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tz6 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        Logger.d(Recorder.TAG, "The source didn't become non-streaming before timeout. Waited 1000ms");
    }
}

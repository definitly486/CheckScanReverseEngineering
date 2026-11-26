package defpackage;

import android.os.Bundle;
import android.view.ContentInfo;
import android.view.inputmethod.JoinOrSplitGesture;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.work.ListenableWorker;
import yads.cd1;
import yads.l66;
import yads.xe1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class lg implements w08, CallbackToFutureAdapter.Resolver, LoudnessCodecController.LoudnessParameterUpdateListener, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ lg(int i) {
        this.b = i;
    }

    public static /* bridge */ /* synthetic */ ContentInfo d(Object obj) {
        return (ContentInfo) obj;
    }

    public static /* bridge */ /* synthetic */ JoinOrSplitGesture e(Object obj) {
        return (JoinOrSplitGesture) obj;
    }

    public static String f(StringBuilder sb, long j, char c) {
        sb.append(j);
        sb.append(c);
        return sb.toString();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 7:
                return cd1.e(((Long) obj).longValue());
            default:
                return xe1.a((String) obj);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ListenableWorker.lambda$getForegroundInfoAsync$0(completer);
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        aVar.onSuccess(l89.a.a);
    }

    @Override // androidx.media3.exoplayer.mediacodec.LoudnessCodecController.LoudnessParameterUpdateListener
    public Bundle onLoudnessParameterUpdate(Bundle bundle) {
        return LoudnessCodecController.LoudnessParameterUpdateListener.lambda$static$0(bundle);
    }
}

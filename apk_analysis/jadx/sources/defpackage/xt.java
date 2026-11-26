package defpackage;

import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.FirebaseMessaging;
import com.tapjoy.TJSetUserIDListener;
import com.tapjoy.TJUser;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xt implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xt(int i, Object obj, Object obj2) {
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
                ((AudioRendererEventListener.EventDispatcher) obj2).lambda$enabled$0((DecoderCounters) obj);
                break;
            case 1:
                ((FirebaseMessaging) obj2).lambda$getToken$8((TaskCompletionSource) obj);
                break;
            default:
                TJUser.INSTANCE.setUserIdRequest((String) obj2, (TJSetUserIDListener) obj);
                break;
        }
    }
}

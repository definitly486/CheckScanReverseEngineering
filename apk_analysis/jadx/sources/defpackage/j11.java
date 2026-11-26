package defpackage;

import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.window.area.WindowAreaControllerImpl;
import com.google.android.material.search.SearchView;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j11 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j11(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                CameraPresenceProvider.startup$lambda$1((CameraPresenceProvider) obj);
                return;
            case 1:
                ((FirebaseMessaging) obj).lambda$new$3();
                return;
            case 2:
                ox4 ox4Var = (ox4) obj;
                Semaphore semaphore = ox4Var.O;
                ku1 ku1Var = ox4Var.q;
                if (ku1Var == null) {
                    return;
                }
                try {
                    semaphore.acquire();
                    ku1Var.s(ox4Var.c.h());
                    break;
                } catch (InterruptedException unused) {
                } finally {
                    semaphore.release();
                }
                return;
            case 3:
                ((SearchView) obj).show();
                return;
            default:
                WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionFinished$lambda$2((WindowAreaControllerImpl.RearDisplaySessionConsumer) obj);
                return;
        }
    }
}

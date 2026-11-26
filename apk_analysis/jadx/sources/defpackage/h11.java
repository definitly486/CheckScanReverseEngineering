package defpackage;

import android.view.View;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.constraintlayout.motion.widget.ViewTransition;
import androidx.lifecycle.Observer;
import com.tapjoy.TJCorePlacement;
import com.tapjoy.TJPlacement;
import yads.ji0;
import yads.ne6;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h11 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ h11(int i, Object obj, Object obj2) {
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
                CameraPresenceProvider.removeCameraStateObserver$lambda$0$0((CameraInternal) obj2, (Observer) obj);
                break;
            case 1:
                ((TJCorePlacement) obj2).b((TJPlacement) obj);
                break;
            case 2:
                ((ViewTransition) obj2).lambda$applyTransition$0((View[]) obj);
                break;
            default:
                ((ne6) obj2).d((ji0) obj);
                break;
        }
    }
}

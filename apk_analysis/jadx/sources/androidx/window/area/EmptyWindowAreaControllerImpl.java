package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import defpackage.hd3;
import defpackage.kx2;
import defpackage.rd3;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class EmptyWindowAreaControllerImpl extends WindowAreaController {
    @Override // androidx.window.area.WindowAreaController
    public hd3<List<WindowAreaInfo>> getWindowAreaInfos() {
        return new rd3(kx2.b);
    }

    @Override // androidx.window.area.WindowAreaController
    public void presentContentOnWindowArea(Binder binder, Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        binder.getClass();
        activity.getClass();
        executor.getClass();
        windowAreaPresentationSessionCallback.getClass();
        windowAreaPresentationSessionCallback.onSessionEnded(new IllegalStateException("There are no WindowAreas"));
    }

    @Override // androidx.window.area.WindowAreaController
    public void transferActivityToWindowArea(Binder binder, Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback) {
        binder.getClass();
        activity.getClass();
        executor.getClass();
        windowAreaSessionCallback.getClass();
        windowAreaSessionCallback.onSessionEnded(new IllegalStateException("There are no WindowAreas"));
    }
}

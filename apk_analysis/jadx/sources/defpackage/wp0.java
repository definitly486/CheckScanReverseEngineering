package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.view.CameraController;
import androidx.room.RxRoom;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponentDeferredProxy;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.List;
import java.util.concurrent.Callable;
import yads.kw;
import yads.p15;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wp0 implements xl3, Function, Deferred.DeferredHandler, w08, kw {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wp0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.kw
    public void a(long j, long j2, long j3) {
        ((p15) this.c).a(j, j2, j3);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((nl3) obj2).invoke(obj);
            case 1:
                return ((CameraController) obj2).enableTorch(((Boolean) obj).booleanValue());
            default:
                return (fz8) ((vc1) obj2).invoke(obj);
        }
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) throws Exception {
        RxRoom.Companion.createSingle$lambda$6((Callable) this.c, aVar);
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void handle(Provider provider) {
        ((CrashlyticsNativeComponentDeferredProxy) this.c).lambda$new$0(provider);
    }
}

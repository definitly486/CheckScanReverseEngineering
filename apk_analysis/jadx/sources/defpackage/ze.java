package defpackage;

import androidx.activity.ComponentActivity;
import androidx.camera.camera2.adapter.ZslControlImpl;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlashImpl;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.ui.unit.Density;
import androidx.navigation.NavDeepLink;
import yads.nq0;
import yads.x32;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ze implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ze(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Float.valueOf(AnchoredDraggableKt.anchoredDraggableFlingBehavior$lambda$0((Density) obj));
            case 1:
                return new jr((Object[]) obj);
            case 2:
                return ComponentActivity.defaultViewModelProviderFactory_delegate$lambda$0((ComponentActivity) obj);
            case 3:
                return new ks2.b((ks2) obj);
            case 4:
                return NavDeepLink.fragPattern_delegate$lambda$8((NavDeepLink) obj);
            case 5:
                return SaveableStateRegistryWrapper._init_$lambda$0((SaveableStateRegistryWrapper) obj);
            case 6:
                return Boolean.valueOf(UseTorchAsFlashImpl.hasUwCameraUnderexposedFlashCaptureQuirk_delegate$lambda$0((UseTorchAsFlashImpl) obj));
            case 7:
                return ZslControlImpl.streamConfigurationMap_delegate$lambda$0((ZslControlImpl) obj);
            case 8:
                return nq0.n((nq0) obj);
            default:
                return x32.a((ws6) obj);
        }
    }
}

package defpackage;

import android.webkit.PermissionRequest;
import androidx.activity.result.ActivityResultCallback;
import androidx.arch.core.util.Function;
import androidx.camera.lifecycle.LifecycleCameraProviderImpl;
import com.google.firebase.inappmessaging.internal.MetricsLoggerClient;
import com.google.firebase.inappmessaging.internal.injection.modules.TransportClientModule;
import com.warefly.checkscan.presentation.brandlink.view.BrandlinkFragment;
import com.warefly.checkscan.presentation.geolocation.view.ClarificationGeolocationFragment;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class di implements xl3, ActivityResultCallback, Function, MetricsLoggerClient.EngagementMetricsLoggerInterface {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ di(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (fm2) ((fi) obj2).invoke(obj);
            case 1:
                return ((mv) obj2).invoke(obj);
            default:
                return LifecycleCameraProviderImpl.initAsync$lambda$0$4((bp4) obj2, obj);
        }
    }

    @Override // com.google.firebase.inappmessaging.internal.MetricsLoggerClient.EngagementMetricsLoggerInterface
    public void logEvent(byte[] bArr) {
        TransportClientModule.lambda$providesMetricsLoggerClient$1((q29) this.c, bArr);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 2:
                ((Boolean) obj).getClass();
                st0.a aVar = ((BrandlinkFragment) obj2).i;
                if (aVar != null) {
                    PermissionRequest permissionRequest = aVar.a;
                    permissionRequest.grant(permissionRequest.getResources());
                }
                break;
            default:
                ClarificationGeolocationFragment clarificationGeolocationFragment = (ClarificationGeolocationFragment) obj2;
                Map map = (Map) obj;
                ze4<Object>[] ze4VarArr = ClarificationGeolocationFragment.i;
                map.getClass();
                Boolean bool = Boolean.FALSE;
                if (((Boolean) map.getOrDefault("android.permission.ACCESS_FINE_LOCATION", bool)).booleanValue()) {
                    clarificationGeolocationFragment.o().setLocationProperty(true);
                    clarificationGeolocationFragment.o().updateLocation();
                } else if (!((Boolean) map.getOrDefault("android.permission.ACCESS_COARSE_LOCATION", bool)).booleanValue()) {
                    clarificationGeolocationFragment.o().setLocationProperty(false);
                    clarificationGeolocationFragment.o().getBonusRegionByIP();
                } else {
                    clarificationGeolocationFragment.o().setLocationProperty(true);
                    clarificationGeolocationFragment.o().updateLocation();
                }
                break;
        }
    }
}

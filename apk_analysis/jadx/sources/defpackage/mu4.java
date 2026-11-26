package defpackage;

import android.location.Location;
import android.location.LocationManager;
import android.view.View;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.warefly.checkscan.products.presentation.products.view.ProductsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class mu4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ mu4(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                Location location = (Location) obj;
                ju4 ju4Var = (ju4) obj2;
                j59 j59Var = null;
                if (location != null) {
                    if (location.getLatitude() == 0.0d && location.getLongitude() == 0.0d) {
                        location = null;
                    }
                    if (location != null) {
                        ju4Var.f(location.getLatitude(), location.getLongitude());
                        j59Var = j59.a;
                    }
                }
                if (j59Var == null) {
                    Object systemService = ju4Var.c.getSystemService(FirebaseAnalytics.Param.LOCATION);
                    systemService.getClass();
                    LocationManager locationManager = (LocationManager) systemService;
                    if (locationManager.isProviderEnabled("gps")) {
                        locationManager.requestLocationUpdates("gps", 0L, 0.0f, new ku4(ju4Var, locationManager));
                    } else {
                        ju4Var.e();
                    }
                }
                break;
            case 1:
                ((View) obj).getClass();
                ((ProductsFragment) obj2).o().refreshContent();
                break;
            default:
                ((View) obj).getClass();
                ((xj9) obj2).b.onWithdrawalMoreMethodsClicked();
                break;
        }
        return j59.a;
    }
}

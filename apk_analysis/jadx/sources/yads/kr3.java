package yads;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.u96;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class kr3 implements lv3 {
    public final nv3 a = new nv3();
    public final LocationManager b;
    public final hu5 c;

    public kr3(Context context) {
        Object systemService = context.getApplicationContext().getSystemService(FirebaseAnalytics.Param.LOCATION);
        LocationManager locationManager = systemService instanceof LocationManager ? (LocationManager) systemService : null;
        this.b = locationManager;
        HashSet hashSet = hu5.c;
        this.c = new hu5(context.getApplicationContext(), locationManager);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    @Override // yads.lv3
    public final Location a() {
        List<String> allProviders;
        Location lastKnownLocation;
        try {
            LocationManager locationManager = this.b;
            allProviders = locationManager != null ? locationManager.getAllProviders() : null;
        } catch (Throwable unused) {
        }
        if (allProviders == null) {
            return null;
        }
        defpackage.ar4 ar4VarE = u96.e();
        for (String str : allProviders) {
            hu5 hu5Var = this.c;
            boolean zA = hu5Var.b.a("android.permission.ACCESS_COARSE_LOCATION");
            boolean zA2 = hu5Var.b.a("android.permission.ACCESS_FINE_LOCATION");
            boolean zContains = hu5.c.contains(str);
            if (!hu5.d.contains(str) ? zContains || !zA : !(!zContains && zA && zA2)) {
                lastKnownLocation = null;
            } else {
                try {
                    LocationManager locationManager2 = hu5Var.a;
                    if (locationManager2 != null) {
                        lastKnownLocation = locationManager2.getLastKnownLocation(str);
                    } else {
                        lastKnownLocation = null;
                    }
                } catch (Throwable unused2) {
                }
            }
            if (lastKnownLocation != null) {
                ar4VarE.add(lastKnownLocation);
            }
        }
        return this.a.a(u96.d(ar4VarE));
    }
}

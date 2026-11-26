package defpackage;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

/* JADX INFO: loaded from: classes5.dex */
public final class ku4 implements LocationListener {
    public final /* synthetic */ ju4 a;
    public final /* synthetic */ LocationManager b;

    public ku4(ju4 ju4Var, LocationManager locationManager) {
        this.a = ju4Var;
        this.b = locationManager;
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        location.getClass();
        this.a.f(location.getLatitude(), location.getLongitude());
        this.b.removeUpdates(this);
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
        str.getClass();
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
        str.getClass();
    }

    @Override // android.location.LocationListener
    @ul2
    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }
}

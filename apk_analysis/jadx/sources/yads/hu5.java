package yads;

import android.content.Context;
import android.location.LocationManager;
import defpackage.u96;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class hu5 {
    public static final HashSet c = new HashSet(u96.h("gps"));
    public static final HashSet d = new HashSet(u96.i("gps", "passive"));
    public final LocationManager a;
    public final bu4 b;

    public hu5(Context context, LocationManager locationManager) {
        bu4 bu4Var = new bu4(context);
        this.a = locationManager;
        this.b = bu4Var;
    }
}

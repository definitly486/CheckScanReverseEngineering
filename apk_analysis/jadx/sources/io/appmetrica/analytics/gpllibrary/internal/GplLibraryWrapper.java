package io.appmetrica.analytics.gpllibrary.internal;

import android.content.Context;
import android.location.LocationListener;
import android.os.Looper;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class GplLibraryWrapper implements IGplLibraryWrapper {
    public static final String FUSED_PROVIDER = "fused";
    private final FusedLocationProviderClient a;
    private final LocationListener b;
    private final LocationCallback c;
    private final Looper d;
    private final Executor e;
    private final long f;

    public static class ClientProvider {
        private final Context a;

        public ClientProvider(Context context) {
            this.a = context;
        }

        public final FusedLocationProviderClient a() {
            return LocationServices.getFusedLocationProviderClient(this.a);
        }
    }

    public enum Priority {
        PRIORITY_NO_POWER,
        PRIORITY_LOW_POWER,
        PRIORITY_BALANCED_POWER_ACCURACY,
        PRIORITY_HIGH_ACCURACY
    }

    public GplLibraryWrapper(ClientProvider clientProvider, LocationListener locationListener, Looper looper, Executor executor, long j) {
        this.a = clientProvider.a();
        this.b = locationListener;
        this.d = looper;
        this.e = executor;
        this.f = j;
        this.c = new GplLocationCallback(locationListener);
    }

    @Override // io.appmetrica.analytics.gpllibrary.internal.IGplLibraryWrapper
    public void startLocationUpdates(Priority priority) {
        int i;
        FusedLocationProviderClient fusedLocationProviderClient = this.a;
        LocationRequest interval = LocationRequest.create().setInterval(this.f);
        int iOrdinal = priority.ordinal();
        if (iOrdinal == 1) {
            i = 104;
        } else if (iOrdinal != 2) {
            i = iOrdinal != 3 ? 105 : 100;
        } else {
            i = 102;
        }
        fusedLocationProviderClient.requestLocationUpdates(interval.setPriority(i), this.c, this.d);
    }

    @Override // io.appmetrica.analytics.gpllibrary.internal.IGplLibraryWrapper
    public void stopLocationUpdates() {
        this.a.removeLocationUpdates(this.c);
    }

    @Override // io.appmetrica.analytics.gpllibrary.internal.IGplLibraryWrapper
    public void updateLastKnownLocation() {
        this.a.getLastLocation().addOnSuccessListener(this.e, new GplOnSuccessListener(this.b));
    }

    public GplLibraryWrapper(Context context, LocationListener locationListener, Looper looper, Executor executor, long j) {
        this(new ClientProvider(context), locationListener, looper, executor, j);
    }
}

package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes4.dex */
public final class zaq {
    public final SparseIntArray a;
    public final GoogleApiAvailabilityLight b;

    public zaq(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.a = new SparseIntArray();
        Preconditions.checkNotNull(googleApiAvailabilityLight);
        this.b = googleApiAvailabilityLight;
    }

    public final int zaa(Context context, Api.Client client) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(client);
        int iIsGooglePlayServicesAvailable = 0;
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int iZab = zab(context, minApkVersion);
        if (iZab != -1) {
            return iZab;
        }
        SparseIntArray sparseIntArray = this.a;
        synchronized (sparseIntArray) {
            int i = 0;
            while (true) {
                try {
                    if (i >= sparseIntArray.size()) {
                        iIsGooglePlayServicesAvailable = -1;
                        break;
                    }
                    int iKeyAt = sparseIntArray.keyAt(i);
                    if (iKeyAt > minApkVersion && sparseIntArray.get(iKeyAt) == 0) {
                        break;
                    }
                    i++;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (iIsGooglePlayServicesAvailable == -1) {
                iIsGooglePlayServicesAvailable = this.b.isGooglePlayServicesAvailable(context, minApkVersion);
            }
            sparseIntArray.put(minApkVersion, iIsGooglePlayServicesAvailable);
        }
        return iIsGooglePlayServicesAvailable;
    }

    public final int zab(Context context, int i) {
        int i2;
        SparseIntArray sparseIntArray = this.a;
        synchronized (sparseIntArray) {
            i2 = sparseIntArray.get(i, -1);
        }
        return i2;
    }

    public final void zac() {
        SparseIntArray sparseIntArray = this.a;
        synchronized (sparseIntArray) {
            sparseIntArray.clear();
        }
    }

    public zaq() {
        this(GoogleApiAvailability.getInstance());
    }
}

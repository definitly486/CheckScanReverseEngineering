package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.work.Logger;
import defpackage.qz0;
import defpackage.yr;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkRequest28 {
    public static final NetworkRequest28 INSTANCE = new NetworkRequest28();

    private NetworkRequest28() {
    }

    public static final NetworkRequest createNetworkRequest(int[] iArr, int[] iArr2) {
        iArr.getClass();
        iArr2.getClass();
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : iArr) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e) {
                Logger.get().warning(NetworkRequestCompat.Companion.getTAG(), qz0.d("Ignoring adding capability '", i, '\''), e);
            }
        }
        for (int i2 : NetworkRequestCompatKt.defaultCapabilities) {
            if (!yr.C(iArr, i2)) {
                try {
                    builder.removeCapability(i2);
                } catch (IllegalArgumentException e2) {
                    Logger.get().warning(NetworkRequestCompat.Companion.getTAG(), qz0.d("Ignoring removing default capability '", i2, '\''), e2);
                }
            }
        }
        for (int i3 : iArr2) {
            builder.addTransportType(i3);
        }
        NetworkRequest networkRequestBuild = builder.build();
        networkRequestBuild.getClass();
        return networkRequestBuild;
    }

    public final NetworkRequestCompat createNetworkRequestCompat$work_runtime_release(int[] iArr, int[] iArr2) {
        iArr.getClass();
        iArr2.getClass();
        return new NetworkRequestCompat(createNetworkRequest(iArr, iArr2));
    }

    public final boolean hasCapability$work_runtime_release(NetworkRequest networkRequest, int i) {
        networkRequest.getClass();
        return networkRequest.hasCapability(i);
    }

    public final boolean hasTransport$work_runtime_release(NetworkRequest networkRequest, int i) {
        networkRequest.getClass();
        return networkRequest.hasTransport(i);
    }
}

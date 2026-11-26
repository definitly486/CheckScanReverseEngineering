package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.NetworkType;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkTypeCompatKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.METERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.UNMETERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.NOT_ROAMING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final NetworkRequest toNetworkRequest(NetworkType networkType) {
        networkType.getClass();
        if (networkType == NetworkType.NOT_REQUIRED) {
            return null;
        }
        NetworkRequest.Builder builderRemoveCapability = new NetworkRequest.Builder().addCapability(12).addCapability(16).removeCapability(15).removeCapability(13);
        if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.TEMPORARILY_UNMETERED) {
            return builderRemoveCapability.addCapability(25).build();
        }
        int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
        if (i == 1) {
            builderRemoveCapability = builderRemoveCapability.addTransportType(0);
        } else if (i == 2) {
            builderRemoveCapability = builderRemoveCapability.addCapability(11);
        } else if (i == 3) {
            builderRemoveCapability = builderRemoveCapability.addCapability(18);
        }
        return builderRemoveCapability.build();
    }
}

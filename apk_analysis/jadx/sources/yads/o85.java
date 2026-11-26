package yads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import androidx.core.app.NotificationCompat;

/* JADX INFO: loaded from: classes3.dex */
public final class o85 implements Parcelable {
    public static final Parcelable.Creator<o85> CREATOR = new n85();
    public final int b;

    public o85(int i) {
        this.b = (i & 2) != 0 ? i | 1 : i;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004d  */
    public final int a(Context context) {
        int i;
        Intent intentRegisterReceiver;
        int intExtra;
        boolean zIsDeviceIdleMode = true;
        if ((this.b & 1) != 0) {
            Object systemService = context.getSystemService("connectivity");
            systemService.getClass();
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                i = this.b & 3;
            } else {
                if (u56.a >= 24) {
                    Network activeNetwork = connectivityManager.getActiveNetwork();
                    if (activeNetwork != null) {
                        try {
                            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                            if (networkCapabilities == null || !networkCapabilities.hasCapability(16)) {
                            }
                        } catch (SecurityException unused) {
                        }
                    }
                    i = this.b & 3;
                }
                if ((this.b & 2) == 0 || !connectivityManager.isActiveNetworkMetered()) {
                    i = 0;
                } else {
                    i = 2;
                }
            }
        } else {
            i = 0;
        }
        if ((this.b & 8) != 0 && ((intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) == null || ((intExtra = intentRegisterReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1)) != 2 && intExtra != 5))) {
            i |= 8;
        }
        if ((this.b & 4) != 0) {
            Object systemService2 = context.getSystemService("power");
            systemService2.getClass();
            PowerManager powerManager = (PowerManager) systemService2;
            int i2 = u56.a;
            if (i2 >= 23) {
                zIsDeviceIdleMode = powerManager.isDeviceIdleMode();
            } else if (i2 < 20 ? powerManager.isScreenOn() : powerManager.isInteractive()) {
                zIsDeviceIdleMode = false;
            }
            if (!zIsDeviceIdleMode) {
                i |= 4;
            }
        }
        return ((this.b & 16) == 0 || context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null) ? i : i | 16;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && o85.class == obj.getClass() && this.b == ((o85) obj).b;
    }

    public final int hashCode() {
        return this.b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
    }
}

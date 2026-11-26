package com.my.tracker.obfuscated;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;

/* JADX INFO: loaded from: classes4.dex */
public final class m1 {
    private String b(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            return networkInfo.getType() == 0 ? networkInfo.getSubtypeName() : networkInfo.getTypeName();
        }
        return null;
    }

    public l1 a(Context context) {
        NetworkInfo activeNetworkInfo;
        String strB;
        int iA = -1;
        Boolean bool = null;
        int iA2 = 0;
        if (q1.a("android.permission.ACCESS_NETWORK_STATE", context)) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    iA2 = a(connectivityManager);
                } else {
                    activeNetworkInfo = null;
                }
                iA = a(activeNetworkInfo);
                strB = b(activeNetworkInfo);
            } catch (SecurityException unused) {
                b3.a("NetworkInfoDataProvider: No permissions for access to network state");
                strB = null;
            }
        } else {
            strB = null;
        }
        if (!q1.a() && q1.a("android.permission.BLUETOOTH", context)) {
            try {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter != null) {
                    bool = defaultAdapter.isEnabled() ? Boolean.TRUE : Boolean.FALSE;
                }
            } catch (SecurityException unused2) {
                b3.a("NetworkInfoDataProvider: Permission android.permission.BLUETOOTH check was positive, but still got security exception on the bluetooth provider");
            }
        }
        return new l1(iA, strB, bool, iA2);
    }

    private int a(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return -1;
        }
        int type = networkInfo.getType();
        if (type != 0) {
            return type != 1 ? 1 : 3;
        }
        return 2;
    }

    private int a(ConnectivityManager connectivityManager) {
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null) {
                return networkCapabilities.hasTransport(4) ? 2 : 1;
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }
}

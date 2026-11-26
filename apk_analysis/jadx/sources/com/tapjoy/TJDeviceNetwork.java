package com.tapjoy;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import defpackage.jg;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class TJDeviceNetwork {
    public static final TJDeviceNetwork INSTANCE = new TJDeviceNetwork();
    public static String a = "";
    public static String b = "";
    public static String c = "";
    public static String d = "";
    public static String e = "";
    public static String f = "";
    public static String g = "";
    public static String h = "";

    static {
        Context context = TapjoyConnectCore.getInstance().getContext();
        if (context != null) {
            c(context);
            f = b(context);
            g = a(context);
        }
    }

    public static String a(Context context) {
        String subtypeName;
        String str = "";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && (subtypeName = activeNetworkInfo.getSubtypeName()) != null) {
                    str = subtypeName;
                }
                TapjoyLog.d("connection_sub_type: ".concat(str));
            }
            return str;
        } catch (Exception e2) {
            TapjoyLog.d("getConnectionSubType error: " + e2);
            return str;
        }
    }

    public static String b(Context context) {
        Network activeNetwork;
        String str = "";
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetwork = connectivityManager.getActiveNetwork()) != null) {
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                str = (networkCapabilities == null || !networkCapabilities.hasTransport(1)) ? TJDeviceNetworkKt.TJC_CONNECTION_TYPE_MOBILE : TJDeviceNetworkKt.TJC_CONNECTION_TYPE_WIFI;
                TapjoyLog.d("connectivity: " + (networkCapabilities != null ? networkCapabilities.toString() : null));
                TapjoyLog.d("connection_type: ".concat(str));
            }
            return str;
        } catch (Exception e2) {
            TapjoyLog.d("getConnectionType error: " + e2);
            return str;
        }
    }

    public static void c(Context context) {
        String upperCase;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                networkOperatorName.getClass();
                a = networkOperatorName;
                String simOperatorName = telephonyManager.getSimOperatorName();
                simOperatorName.getClass();
                b = simOperatorName;
                String networkCountryIso = telephonyManager.getNetworkCountryIso();
                networkCountryIso.getClass();
                c = networkCountryIso;
                String networkOperator = telephonyManager.getNetworkOperator();
                if (networkOperator != null && (networkOperator.length() == 5 || networkOperator.length() == 6)) {
                    d = networkOperator.substring(0, 3);
                    e = networkOperator.substring(3);
                }
                String simCountryIso = telephonyManager.getSimCountryIso();
                if (simCountryIso != null) {
                    Locale locale = Locale.US;
                    locale.getClass();
                    upperCase = simCountryIso.toUpperCase(locale);
                    upperCase.getClass();
                } else {
                    upperCase = "";
                }
                h = upperCase;
            } catch (SecurityException unused) {
                TapjoyLog.d("Error accessing network operator info");
            } catch (Exception e2) {
                jg.f("Error getting carrier info: ", e2.getMessage());
            }
        }
    }

    public final String getCarrierCountryCode() {
        return c;
    }

    public final String getCarrierName() {
        return a;
    }

    public final String getCarrierNameSim() {
        return b;
    }

    public final String getConnectionSubType() {
        return g;
    }

    public final String getConnectionType() {
        return f;
    }

    public final String getDeviceCountrySIM() {
        return h;
    }

    public final String getMobileCountryCode() {
        return d;
    }

    public final String getMobileNetworkCode() {
        return e;
    }

    public final void setCarrierCountryCode(String str) {
        str.getClass();
        c = str;
    }

    public final void setCarrierName(String str) {
        str.getClass();
        a = str;
    }

    public final void setCarrierNameSim(String str) {
        str.getClass();
        b = str;
    }

    public final void setConnectionSubType(String str) {
        str.getClass();
        g = str;
    }

    public final void setConnectionType(String str) {
        str.getClass();
        f = str;
    }

    public final void setDeviceCountrySIM(String str) {
        str.getClass();
        h = str;
    }

    public final void setMobileCountryCode(String str) {
        str.getClass();
        d = str;
    }

    public final void setMobileNetworkCode(String str) {
        str.getClass();
        e = str;
    }
}

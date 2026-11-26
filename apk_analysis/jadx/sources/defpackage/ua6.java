package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.telephony.TelephonyManager;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
public final class ua6 implements ob6 {
    public final Context a;
    public final ta6 b;
    public final fh8 c = new fh8(new jj5(this, 1));
    public final fh8 d = new fh8(new zg0(this, 2));

    public ua6(Context context, ta6 ta6Var) {
        this.a = context;
        this.b = ta6Var;
    }

    @Override // defpackage.ob6
    public final LinkedHashMap a() {
        String networkOperatorName;
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("$locale", Locale.getDefault().getLanguage() + '-' + Locale.getDefault().getCountry());
        String property = System.getProperty("http.agent");
        if (property != null) {
            linkedHashMap.put("$user_agent", property);
            linkedHashMap.put("$raw_user_agent", property);
        }
        linkedHashMap.put("$timezone", TimeZone.getDefault().getID());
        Context context = this.a;
        ConnectivityManager connectivityManagerA = za6.a(context);
        if (connectivityManagerA != null && za6.c(context) && (activeNetwork = connectivityManagerA.getActiveNetwork()) != null && (networkCapabilities = connectivityManagerA.getNetworkCapabilities(activeNetwork)) != null) {
            linkedHashMap.put("$network_wifi", Boolean.valueOf(networkCapabilities.hasTransport(1)));
            linkedHashMap.put("$network_bluetooth", Boolean.valueOf(networkCapabilities.hasTransport(2)));
            linkedHashMap.put("$network_cellular", Boolean.valueOf(networkCapabilities.hasTransport(0)));
        }
        Object systemService = context.getSystemService("phone");
        TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
        if (telephonyManager != null && (networkOperatorName = telephonyManager.getNetworkOperatorName()) != null && networkOperatorName.length() != 0) {
            linkedHashMap.put("$network_carrier", networkOperatorName);
        }
        return linkedHashMap;
    }

    @Override // defpackage.ob6
    public final Map<String, Object> b() {
        return (Map) this.c.getValue();
    }

    @Override // defpackage.ob6
    public final Map<String, Object> c() {
        return (Map) this.d.getValue();
    }
}

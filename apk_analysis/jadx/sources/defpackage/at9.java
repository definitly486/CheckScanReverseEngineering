package defpackage;

import android.app.UiModeManager;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Base64;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.my.target.t0;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class at9 {
    public static final at9 l = new at9();
    public final h0a a = new h0a();
    public final zu9 b = new zu9();
    public final iia c;
    public final lz9 d;
    public final cea e;
    public final eha f;
    public final t8a g;
    public final g4a h;
    public final ny9 i;
    public final g9a j;
    public final pz9 k;

    public at9() {
        iia iiaVar = new iia();
        iiaVar.o = new iia.a(0L, new HashMap());
        this.c = iiaVar;
        this.d = new lz9();
        this.e = new cea();
        this.f = new eha();
        this.g = new t8a();
        g4a g4aVar = new g4a();
        try {
            g4aVar.o = BluetoothDevice.class.getMethod("isConnected", null);
        } catch (Throwable unused) {
        }
        this.h = g4aVar;
        this.i = new ny9();
        this.j = new g9a();
        this.k = new pz9();
    }

    public static long a(t0 t0Var, int i, long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        t0Var.a(i, jCurrentTimeMillis - j);
        return jCurrentTimeMillis;
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0267  */
    /* JADX WARN: Code duplicated, block: B:151:0x0104 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0113 A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:43:0x0109, B:45:0x0113, B:48:0x011c, B:50:0x012f, B:52:0x0135, B:53:0x0139, B:68:0x0168, B:54:0x013d, B:56:0x0143, B:57:0x0147, B:58:0x014a, B:60:0x0154, B:66:0x0162), top: B:148:0x0109, outer: #2, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0118  */
    /* JADX WARN: Code duplicated, block: B:48:0x011c A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:43:0x0109, B:45:0x0113, B:48:0x011c, B:50:0x012f, B:52:0x0135, B:53:0x0139, B:68:0x0168, B:54:0x013d, B:56:0x0143, B:57:0x0147, B:58:0x014a, B:60:0x0154, B:66:0x0162), top: B:148:0x0109, outer: #2, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x012f A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:43:0x0109, B:45:0x0113, B:48:0x011c, B:50:0x012f, B:52:0x0135, B:53:0x0139, B:68:0x0168, B:54:0x013d, B:56:0x0143, B:57:0x0147, B:58:0x014a, B:60:0x0154, B:66:0x0162), top: B:148:0x0109, outer: #2, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0135 A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:43:0x0109, B:45:0x0113, B:48:0x011c, B:50:0x012f, B:52:0x0135, B:53:0x0139, B:68:0x0168, B:54:0x013d, B:56:0x0143, B:57:0x0147, B:58:0x014a, B:60:0x0154, B:66:0x0162), top: B:148:0x0109, outer: #2, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x013d A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:43:0x0109, B:45:0x0113, B:48:0x011c, B:50:0x012f, B:52:0x0135, B:53:0x0139, B:68:0x0168, B:54:0x013d, B:56:0x0143, B:57:0x0147, B:58:0x014a, B:60:0x0154, B:66:0x0162), top: B:148:0x0109, outer: #2, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0143 A[Catch: all -> 0x0180, TryCatch #0 {all -> 0x0180, blocks: (B:43:0x0109, B:45:0x0113, B:48:0x011c, B:50:0x012f, B:52:0x0135, B:53:0x0139, B:68:0x0168, B:54:0x013d, B:56:0x0143, B:57:0x0147, B:58:0x014a, B:60:0x0154, B:66:0x0162), top: B:148:0x0109, outer: #2, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0154 A[Catch: all -> 0x015e, TryCatch #11 {all -> 0x015e, blocks: (B:58:0x014a, B:60:0x0154, B:66:0x0162), top: B:166:0x014a, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x015b  */
    /* JADX WARN: Code duplicated, block: B:65:0x0160  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:77:0x01af  */
    /* JADX WARN: Instruction removed from duplicated block: B:48:0x011c, please report this as an issue */
    public final Map b(nh5 nh5Var, tk2 tk2Var, t0 t0Var, Context context) {
        HashMap map;
        Intent intentRegisterReceiver;
        HashMap map2;
        Map map3;
        Map map4;
        Object obj;
        HashMap map5;
        iia.a aVar;
        iia.a aVar2;
        Map mapU;
        HashMap map6;
        Map mapU2;
        Method method;
        int iCheckCallingOrSelfPermission;
        BluetoothAdapter defaultAdapter;
        HashMap map7;
        Object objInvoke;
        UiModeManager uiModeManager;
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        NetworkCapabilities networkCapabilities;
        String str;
        if (w4a.b()) {
            y14.r(null, "FingerprintDataProvider: You must not call collectData method from main thread");
            return Collections.EMPTY_MAP;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map mapU3 = this.a.U(context);
        a(t0Var, 23, jCurrentTimeMillis);
        Map mapV = this.b.V(context);
        long jA = a(t0Var, 10, jCurrentTimeMillis);
        this.j.getClass();
        HashMap map8 = new HashMap();
        Point pointQ = l3a.q(context);
        int i = pointQ.x;
        int i2 = pointQ.y;
        if (i != 0 && i2 != 0) {
            map8.put("vpw", String.valueOf(i));
            map8.put("vph", String.valueOf(i2));
        }
        a(t0Var, 21, jA);
        synchronized (this.i) {
            try {
                map = new HashMap();
                try {
                    intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                } catch (NoSuchMethodError unused) {
                    intentRegisterReceiver = null;
                }
                if (intentRegisterReceiver != null) {
                    int intExtra = intentRegisterReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
                    int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
                    int intExtra3 = intentRegisterReceiver.getIntExtra(NotificationCompat.CATEGORY_STATUS, 1);
                    if (intExtra >= 0 && intExtra2 > 0) {
                        map.put(CmcdConfiguration.KEY_BUFFER_LENGTH, String.valueOf((intExtra * 100) / intExtra2));
                    }
                    map.put(CmcdConfiguration.KEY_BUFFER_STARVATION, String.valueOf(intExtra3));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        long jA2 = a(t0Var, 16, jA);
        this.k.getClass();
        HashMap map9 = new HashMap();
        String str2 = pz9.a.a;
        if (str2 != null) {
            map9.put("mtr_id", str2);
        }
        a(t0Var, 22, jA2);
        HashMap map10 = new HashMap();
        if (tk2Var.g()) {
            iia iiaVar = this.c;
            synchronized (iiaVar) {
                synchronized (iiaVar) {
                    aVar2 = iiaVar.o;
                }
                long jA3 = a(t0Var, 15, jA2);
                mapU = this.d.U(context);
                long jA4 = a(t0Var, 11, jA3);
                synchronized (this.e) {
                    map6 = new HashMap();
                    try {
                        connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                        if (connectivityManager != null) {
                            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        } else {
                            activeNetworkInfo = null;
                        }
                        if (activeNetworkInfo != null) {
                            map6.put("connection", activeNetworkInfo.getTypeName());
                            if (activeNetworkInfo.getType() == 0) {
                                map6.put("connection_type", activeNetworkInfo.getSubtypeName() != null ? activeNetworkInfo.getSubtypeName() : "");
                            } else {
                                map6.put("connection_type", activeNetworkInfo.getTypeName() != null ? activeNetworkInfo.getTypeName() : "");
                            }
                            try {
                                networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                                if (networkCapabilities != null) {
                                    if (networkCapabilities.hasTransport(4)) {
                                        str = "1";
                                    } else {
                                        str = CommonUrlParts.Values.FALSE_INTEGER;
                                    }
                                    map6.put("vpn_connected", str);
                                }
                            } catch (Throwable th2) {
                                y14.u(null, "NetworkInfoDataProvider: " + th2.getMessage());
                            }
                        }
                    } catch (Throwable unused2) {
                        y14.r(null, "NetworkInfoDataProvider: No permissions for access to network state");
                    }
                }
                long jA5 = a(t0Var, 14, jA4);
                mapU2 = this.f.U(context);
                long jA6 = a(t0Var, 13, jA5);
                g4a g4aVar = this.h;
                g4aVar.getClass();
                HashMap map11 = new HashMap();
                method = g4aVar.o;
                if (method == null) {
                    mapU2 = mapU2;
                    mapU = mapU;
                } else {
                    try {
                        iCheckCallingOrSelfPermission = context.checkCallingOrSelfPermission("android.permission.BLUETOOTH");
                    } catch (Throwable th3) {
                        fg.e(null, new StringBuilder("FPDataProvider: Unable to check android.permission.BLUETOOTH permission! Unexpected throwable in Context.checkCallingOrSelfPermission() method - "), th3);
                        iCheckCallingOrSelfPermission = -1;
                    }
                    if (iCheckCallingOrSelfPermission != 0 && (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) != null && defaultAdapter.isEnabled()) {
                        ArrayList arrayList = new ArrayList();
                        try {
                            Iterator<BluetoothDevice> it = defaultAdapter.getBondedDevices().iterator();
                            while (it.hasNext()) {
                                BluetoothDevice next = it.next();
                                Iterator<BluetoothDevice> it2 = it;
                                map7 = map6;
                                try {
                                    if (Arrays.binarySearch(g4a.p, next.getBluetoothClass().getDeviceClass()) < 0 && (objInvoke = method.invoke(next, null)) != null && ((Boolean) objInvoke).booleanValue()) {
                                        String name = next.getName();
                                        if (TextUtils.isEmpty(name)) {
                                            continue;
                                        } else {
                                            arrayList.add(new String(Base64.encode(name.getBytes(), 2), StandardCharsets.UTF_8));
                                        }
                                    }
                                    it = it2;
                                    map6 = map7;
                                } catch (Throwable unused3) {
                                }
                            }
                        } catch (Throwable unused4) {
                        }
                        map7 = map6;
                        if (!arrayList.isEmpty()) {
                            map11.put("bdn", TextUtils.join(StringUtils.COMMA, arrayList));
                        }
                    }
                    long jA7 = a(t0Var, 17, jA6);
                    this.g.getClass();
                    map10 = new HashMap();
                    uiModeManager = (UiModeManager) context.getSystemService("uimode");
                    if (uiModeManager != null && uiModeManager.getCurrentModeType() == 3) {
                        map10.put("isc", "1");
                    }
                    a(t0Var, 18, jA7);
                    map3 = mapU2;
                    map4 = mapU;
                    map2 = map7;
                    obj = map11;
                }
                map7 = map6;
                long jA8 = a(t0Var, 17, jA6);
                this.g.getClass();
                map10 = new HashMap();
                uiModeManager = (UiModeManager) context.getSystemService("uimode");
                if (uiModeManager != null) {
                    map10.put("isc", "1");
                }
                a(t0Var, 18, jA8);
                map3 = mapU2;
                map4 = mapU;
                map2 = map7;
                obj = map11;
            }
            w4a.d.execute(new a52(iiaVar, nh5Var, context));
            aVar2.getClass();
            new HashMap(aVar2.a);
            long jA9 = a(t0Var, 15, jA2);
            mapU = this.d.U(context);
            long jA10 = a(t0Var, 11, jA9);
            synchronized (this.e) {
                map6 = new HashMap();
                connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                } else {
                    activeNetworkInfo = null;
                }
                if (activeNetworkInfo != null) {
                    map6.put("connection", activeNetworkInfo.getTypeName());
                    if (activeNetworkInfo.getType() == 0) {
                        map6.put("connection_type", activeNetworkInfo.getSubtypeName() != null ? activeNetworkInfo.getSubtypeName() : "");
                    } else {
                        map6.put("connection_type", activeNetworkInfo.getTypeName() != null ? activeNetworkInfo.getTypeName() : "");
                    }
                    networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                    if (networkCapabilities != null) {
                        if (networkCapabilities.hasTransport(4)) {
                            str = "1";
                        } else {
                            str = CommonUrlParts.Values.FALSE_INTEGER;
                        }
                        map6.put("vpn_connected", str);
                    }
                }
                long jA11 = a(t0Var, 14, jA10);
                mapU2 = this.f.U(context);
                long jA12 = a(t0Var, 13, jA11);
                g4a g4aVar2 = this.h;
                g4aVar2.getClass();
                HashMap map12 = new HashMap();
                method = g4aVar2.o;
                if (method == null) {
                    mapU2 = mapU2;
                    mapU = mapU;
                } else {
                    iCheckCallingOrSelfPermission = context.checkCallingOrSelfPermission("android.permission.BLUETOOTH");
                    if (iCheckCallingOrSelfPermission != 0) {
                    }
                    long jA13 = a(t0Var, 17, jA12);
                    this.g.getClass();
                    map10 = new HashMap();
                    uiModeManager = (UiModeManager) context.getSystemService("uimode");
                    if (uiModeManager != null) {
                        map10.put("isc", "1");
                    }
                    a(t0Var, 18, jA13);
                    map3 = mapU2;
                    map4 = mapU;
                    map2 = map7;
                    obj = map12;
                }
                map7 = map6;
                long jA14 = a(t0Var, 17, jA12);
                this.g.getClass();
                map10 = new HashMap();
                uiModeManager = (UiModeManager) context.getSystemService("uimode");
                if (uiModeManager != null) {
                    map10.put("isc", "1");
                }
                a(t0Var, 18, jA14);
                map3 = mapU2;
                map4 = mapU;
                map2 = map7;
                obj = map12;
            }
        } else {
            map2 = map10;
            map3 = map2;
            map4 = map3;
            obj = map4;
        }
        synchronized (this) {
            map5 = new HashMap();
            map5.putAll(mapU3);
            map5.putAll(mapV);
            map5.putAll(map8);
            map5.putAll(map);
            map5.putAll(map9);
            if (tk2Var.g()) {
                iia iiaVar2 = this.c;
                synchronized (iiaVar2) {
                    aVar = iiaVar2.o;
                }
                t0Var.a(15, aVar.b);
                aVar.getClass();
                map5.putAll(new HashMap(aVar.a));
                map5.putAll(map4);
                map5.putAll(map2);
                map5.putAll(map3);
                map5.putAll(obj);
                map5.putAll(map10);
            }
        }
        return map5;
    }
}

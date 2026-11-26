package yads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.SystemClock;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tapjoy.TJAdUnitConstants;
import com.tapjoy.TJDeviceNetworkKt;
import com.tapjoy.TapjoyConstants;
import defpackage.ca8;
import defpackage.j59;
import defpackage.qa8;
import defpackage.ra8;
import defpackage.ta8;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes6.dex */
public final class tw2 {
    /* JADX WARN: Code duplicated, block: B:101:0x020b  */
    /* JADX WARN: Code duplicated, block: B:108:0x0290  */
    /* JADX WARN: Code duplicated, block: B:109:0x029d  */
    /* JADX WARN: Code duplicated, block: B:112:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:113:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:116:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:117:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:120:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:124:0x02dc A[Catch: all -> 0x02e3, TryCatch #0 {all -> 0x02e3, blocks: (B:122:0x02d8, B:124:0x02dc, B:127:0x02e5), top: B:207:0x02d8 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x02ef  */
    /* JADX WARN: Code duplicated, block: B:136:0x0331  */
    /* JADX WARN: Code duplicated, block: B:137:0x0336  */
    /* JADX WARN: Code duplicated, block: B:142:0x0356 A[Catch: all -> 0x038e, TryCatch #8 {all -> 0x038e, blocks: (B:139:0x0349, B:140:0x0350, B:142:0x0356, B:143:0x0363, B:145:0x0369, B:147:0x0373, B:149:0x037c, B:153:0x0388), top: B:223:0x0349 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:165:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:171:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:177:0x040f A[LOOP:5: B:175:0x0409->B:177:0x040f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x0438  */
    /* JADX WARN: Code duplicated, block: B:185:0x045d  */
    /* JADX WARN: Code duplicated, block: B:189:0x047e  */
    /* JADX WARN: Code duplicated, block: B:193:0x049b  */
    /* JADX WARN: Code duplicated, block: B:197:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:199:0x04bd  */
    /* JADX WARN: Code duplicated, block: B:207:0x02d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:242:0x03d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:247:? A[LOOP:3: B:163:0x03c4->B:247:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x03f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:0x03e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:89:0x01b2  */
    public static sw2 a(Context context, qi5 qi5Var, c40 c40Var, v85 v85Var, uq4 uq4Var) {
        String libraryVersion;
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        String string;
        kv3 kv3VarA;
        Location locationA;
        Integer numO;
        Integer numO2;
        String networkOperatorName;
        sp0 sp0VarA;
        List list;
        String strA0;
        String str;
        String str2;
        sw2 sw2VarB;
        w10 w10Var;
        boolean zA;
        Boolean boolValueOf;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Iterator it;
        sw2 sw2VarA;
        List list2;
        Iterator it2;
        Enumeration<NetworkInterface> networkInterfaces;
        Enumeration<InetAddress> inetAddresses;
        InetAddress inetAddressNextElement;
        byte[] address;
        int i;
        vn2 vn2Var = c40Var.a;
        ed edVar = c40Var.b;
        sw2 sw2VarC = new sw2(qi5Var.b(context)).c(context);
        sw2VarC.c.getClass();
        String hostAddress = null;
        try {
            dg.a(context).b.getClass();
            libraryVersion = AppMetrica.getLibraryVersion();
        } catch (Throwable unused) {
            libraryVersion = null;
        }
        sw2VarC.G0 = libraryVersion;
        id idVar = edVar.a;
        boolean z = edVar.c;
        if (idVar != null) {
            sw2VarC.S = Boolean.valueOf(idVar.b);
            sw2VarC.T = Boolean.valueOf(z);
            String str3 = idVar.a;
            sw2VarC.e.getClass();
            boolean z2 = (str3 == null || str3.length() == 0 || "00000000-0000-0000-0000-000000000000".equals(str3)) ? false : true;
            if (!sw2VarC.a && defpackage.aa4.e(sw2VarC.S, Boolean.FALSE) && z2) {
                sw2VarC.U = str3;
            }
        }
        String str4 = edVar.d;
        if (str4 != null && !ta8.M(str4)) {
            sw2VarC.q = str4;
        }
        id idVar2 = edVar.b;
        if (idVar2 != null) {
            sw2VarC.V = Boolean.valueOf(idVar2.b);
            String str5 = idVar2.a;
            sw2VarC.e.getClass();
            boolean z3 = (str5 == null || str5.length() == 0 || "00000000-0000-0000-0000-000000000000".equals(str5)) ? false : true;
            if (!sw2VarC.a && defpackage.aa4.e(sw2VarC.V, Boolean.FALSE) && z3) {
                sw2VarC.W = str5;
            }
        }
        try {
            Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null) {
                int intExtra = intentRegisterReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1);
                int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
                if (intExtra <= -1 || intExtra2 <= 0) {
                    numValueOf = null;
                } else {
                    numValueOf = Integer.valueOf(defpackage.w65.b((intExtra / intExtra2) * 100.0f));
                }
            } else {
                numValueOf = null;
            }
        } catch (Exception unused2) {
        }
        sw2VarC.X = numValueOf;
        sw2VarC.e0 = "UTF-8";
        try {
            Object systemService = context.getSystemService("phone");
            systemService.getClass();
            CellLocation cellLocation = ((TelephonyManager) systemService).getCellLocation();
            cellLocation.getClass();
            int cid = ((GsmCellLocation) cellLocation).getCid();
            numValueOf2 = -1 != cid ? Integer.valueOf(cid & 65535) : null;
        } catch (Exception unused3) {
        }
        sw2VarC.P = numValueOf2;
        try {
            Object systemService2 = context.getSystemService("phone");
            systemService2.getClass();
            CellLocation cellLocation2 = ((TelephonyManager) systemService2).getCellLocation();
            cellLocation2.getClass();
            int lac = ((GsmCellLocation) cellLocation2).getLac();
            numValueOf3 = -1 != lac ? Integer.valueOf(lac & 65535) : null;
        } catch (Exception unused4) {
        }
        sw2VarC.Q = numValueOf3;
        try {
            try {
                try {
                    Object systemService3 = context.getApplicationContext().getSystemService(TJDeviceNetworkKt.TJC_CONNECTION_TYPE_WIFI);
                    systemService3.getClass();
                    WifiManager wifiManager = (WifiManager) systemService3;
                    try {
                        try {
                            if (wifiManager.isWifiEnabled()) {
                                List<ScanResult> scanResults = wifiManager.getScanResults();
                                if (scanResults == null) {
                                    scanResults = defpackage.kx2.b;
                                }
                                List listN0 = defpackage.qn1.n0(scanResults, new vu4());
                                if (!listN0.isEmpty()) {
                                    StringBuilder sb = new StringBuilder();
                                    int iMin = Math.min(3, listN0.size());
                                    int i2 = 0;
                                    while (i2 < iMin) {
                                        sb.append(((ScanResult) listN0.get(i2)).BSSID);
                                        sb.append(StringUtils.COMMA);
                                        sb.append(((ScanResult) listN0.get(i2)).level);
                                        i2++;
                                        sb.append(i2 < iMin ? ";" : "");
                                    }
                                    string = sb.toString();
                                }
                                sw2VarC.R = string;
                                kv3VarA = jv3.a(context);
                                if (sw2VarC.a) {
                                    locationA = null;
                                } else {
                                    locationA = kv3VarA.a();
                                }
                                sw2VarC.G = locationA;
                                Object systemService4 = context.getSystemService("phone");
                                systemService4.getClass();
                                numO = qa8.o(10, ((TelephonyManager) systemService4).getNetworkOperator().substring(0, 3));
                                sw2VarC.K = numO;
                                Object systemService5 = context.getSystemService("phone");
                                systemService5.getClass();
                                numO2 = qa8.o(10, ((TelephonyManager) systemService5).getNetworkOperator().substring(3));
                                sw2VarC.L = numO2;
                                sw2VarC.M = wu4.a(context);
                                Object systemService6 = context.getSystemService("phone");
                                systemService6.getClass();
                                networkOperatorName = ((TelephonyManager) systemService6).getNetworkOperatorName();
                                if (networkOperatorName.length() == 0) {
                                    networkOperatorName = null;
                                }
                                sw2VarC.N = networkOperatorName;
                                sw2VarC.H = Integer.valueOf(eh6.d(context));
                                sw2VarC.I = Integer.valueOf(eh6.b(context));
                                sw2VarC.J = Float.valueOf(context.getResources().getDisplayMetrics().density);
                                sw2VarC.v0 = eh6.a(context);
                                sp0VarA = xk6.a(context);
                                sw2VarC.w0 = sp0VarA.a;
                                sw2VarC.x0 = sp0VarA.b;
                                sw2VarC.y0 = sp0VarA.c;
                                sw2VarC.z0 = sp0VarA.d;
                                sw2VarC.A0 = sp0VarA.e;
                                sw2VarC.B0 = sp0VarA.f;
                                sw2VarC.E0 = sw2VarC.d.a("%d.%d%d");
                                sw2VarC.F0 = sw2VarC.d.a("%d.%d.%d");
                                sw2VarC.l = qi5.a(context);
                                sw2VarC.d0 = Long.valueOf(ya.a);
                                vn2Var.getClass();
                                sw2 sw2VarA2 = sw2VarC.a(context, vn2Var.a);
                                sw2VarA2.z = vn2Var.a();
                                sw2VarA2.r = vn2Var.d;
                                list = c40Var.c;
                                if (list != null) {
                                    strA0 = defpackage.qn1.a0(list, StringUtils.COMMA, null, null, 0, null, 62);
                                } else {
                                    strA0 = null;
                                }
                                sw2VarA2.b0 = strA0;
                                if (new jc0(context).a()) {
                                    i85 i85Var = i85.LIGHT;
                                    str = TapjoyConstants.TJC_THEME_DARK;
                                } else {
                                    i85 i85Var2 = i85.LIGHT;
                                    str = TapjoyConstants.TJC_THEME_LIGHT;
                                }
                                sw2VarA2.I0 = str;
                                sw2 sw2VarC2 = sw2VarA2.c();
                                if (1 == context.getResources().getConfiguration().orientation) {
                                    str2 = TJAdUnitConstants.String.PORTRAIT;
                                } else {
                                    str2 = TJAdUnitConstants.String.LANDSCAPE;
                                }
                                sw2VarC2.F = str2;
                                sw2VarB = sw2VarC2.b();
                                if (u10.a == null) {
                                    synchronized (u10.b) {
                                        try {
                                            if (u10.a == null) {
                                                u10.a = v10.a(context);
                                            }
                                            j59 j59Var = j59.a;
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                                w10Var = u10.a;
                                if (w10Var != null) {
                                    defpackage.fg.c("Required value was null.");
                                    return null;
                                }
                                sw2VarB.u = w10Var.c();
                                sw2 sw2VarB2 = sw2VarB.e(context).d(context).f(context).i(context).b(context);
                                sw2VarB2.K0 = Boolean.valueOf(ya.a(context));
                                sw2 sw2VarG = sw2VarB2.h(context).g(context);
                                sw2VarG.S0 = Boolean.valueOf(vn2Var.f);
                                zA = ((av3) uq4Var.a).a("OPT_OUT_ENABLED", false);
                                if (zA) {
                                    boolValueOf = Boolean.valueOf(zA);
                                } else {
                                    boolValueOf = null;
                                }
                                sw2VarG.T0 = boolValueOf;
                                sw2VarG.P0 = ((av3) wi5.a(context).a).c("ServerSideClientIP");
                                try {
                                    networkInterfaces = NetworkInterface.getNetworkInterfaces();
                                    networkInterfaces.getClass();
                                    loop0: while (networkInterfaces.hasMoreElements()) {
                                        inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                                        inetAddresses.getClass();
                                        while (inetAddresses.hasMoreElements()) {
                                            inetAddressNextElement = inetAddresses.nextElement();
                                            if (!(inetAddressNextElement instanceof Inet6Address) && (address = ((Inet6Address) inetAddressNextElement).getAddress()) != null && ((i = address[0] & 240) == 32 || i == 48)) {
                                                hostAddress = ((Inet6Address) inetAddressNextElement).getHostAddress();
                                                break loop0;
                                            }
                                        }
                                    }
                                } catch (Throwable unused5) {
                                }
                                sw2VarG.Q0 = hostAddress;
                                ArrayList arrayListA = new z64().a(u54.a());
                                arrayList = new ArrayList();
                                for (Object obj : arrayListA) {
                                    list2 = ((m64) obj).d;
                                    if ((list2 instanceof Collection) || !list2.isEmpty()) {
                                        it2 = list2.iterator();
                                        while (it2.hasNext()) {
                                            if (((l64) it2.next()).c) {
                                                arrayList.add(obj);
                                                break;
                                            }
                                        }
                                    }
                                }
                                arrayList2 = new ArrayList();
                                for (Object obj2 : arrayList) {
                                    if (!defpackage.aa4.e(((m64) obj2).b, StringUtils.UNDEFINED)) {
                                        arrayList2.add(obj2);
                                    }
                                }
                                arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
                                it = arrayList2.iterator();
                                while (it.hasNext()) {
                                    arrayList3.add(((m64) it.next()).b);
                                }
                                xb4.a aVar = defpackage.xb4.d;
                                aVar.getClass();
                                sw2VarG.i0 = aVar.b(new defpackage.mr(ca8.a), arrayList3);
                                sw2VarA = sw2VarG.a();
                                if (sw2.a(context)) {
                                    sw2VarA.f.getClass();
                                    sw2VarA.U0 = o83.a(context);
                                    sw2VarA.f.getClass();
                                    sw2VarA.V0 = Integer.valueOf(Runtime.getRuntime().availableProcessors());
                                }
                                if (sw2.a(context)) {
                                    sw2VarA.g.getClass();
                                    sw2VarA.W0 = TimeZone.getDefault().getID();
                                    sw2VarA.g.getClass();
                                    sw2VarA.X0 = iu5.a(context);
                                }
                                if (sw2.a(context)) {
                                    sw2VarA.h.getClass();
                                    sw2VarA.Y0 = qp0.a();
                                    sw2VarA.h.getClass();
                                    sw2VarA.Z0 = qp0.b();
                                }
                                if (sw2.a(context)) {
                                    sw2VarA.i.getClass();
                                    sw2VarA.a1 = Long.valueOf(SystemClock.elapsedRealtime());
                                }
                                if (sw2.a(context)) {
                                    sw2VarA.j.getClass();
                                    sw2VarA.b1 = dd6.a();
                                }
                                return sw2VarA;
                            }
                            Object systemService7 = context.getSystemService("phone");
                            systemService7.getClass();
                            numO = qa8.o(10, ((TelephonyManager) systemService7).getNetworkOperator().substring(0, 3));
                        } catch (Exception unused6) {
                            numO = null;
                        }
                        sp0VarA = xk6.a(context);
                    } catch (Throwable unused7) {
                        sp0VarA = sp0.g;
                    }
                } catch (Exception unused8) {
                }
                Object systemService8 = context.getSystemService("phone");
                systemService8.getClass();
                networkOperatorName = ((TelephonyManager) systemService8).getNetworkOperatorName();
                if (networkOperatorName.length() == 0) {
                    networkOperatorName = null;
                }
            } catch (Exception unused9) {
            }
            Object systemService9 = context.getSystemService("phone");
            systemService9.getClass();
            numO2 = qa8.o(10, ((TelephonyManager) systemService9).getNetworkOperator().substring(3));
        } catch (Exception unused10) {
            numO2 = null;
        }
        string = null;
        sw2VarC.R = string;
        kv3VarA = jv3.a(context);
        if (sw2VarC.a) {
            locationA = null;
        } else {
            locationA = kv3VarA.a();
        }
        sw2VarC.G = locationA;
        sw2VarC.K = numO;
        sw2VarC.L = numO2;
        sw2VarC.M = wu4.a(context);
        sw2VarC.N = networkOperatorName;
        sw2VarC.H = Integer.valueOf(eh6.d(context));
        sw2VarC.I = Integer.valueOf(eh6.b(context));
        sw2VarC.J = Float.valueOf(context.getResources().getDisplayMetrics().density);
        sw2VarC.v0 = eh6.a(context);
        sw2VarC.w0 = sp0VarA.a;
        sw2VarC.x0 = sp0VarA.b;
        sw2VarC.y0 = sp0VarA.c;
        sw2VarC.z0 = sp0VarA.d;
        sw2VarC.A0 = sp0VarA.e;
        sw2VarC.B0 = sp0VarA.f;
        sw2VarC.E0 = sw2VarC.d.a("%d.%d%d");
        sw2VarC.F0 = sw2VarC.d.a("%d.%d.%d");
        sw2VarC.l = qi5.a(context);
        sw2VarC.d0 = Long.valueOf(ya.a);
        vn2Var.getClass();
        sw2 sw2VarA3 = sw2VarC.a(context, vn2Var.a);
        sw2VarA3.z = vn2Var.a();
        sw2VarA3.r = vn2Var.d;
        list = c40Var.c;
        if (list != null) {
            strA0 = defpackage.qn1.a0(list, StringUtils.COMMA, null, null, 0, null, 62);
        } else {
            strA0 = null;
        }
        sw2VarA3.b0 = strA0;
        if (new jc0(context).a()) {
            i85 i85Var3 = i85.LIGHT;
            str = TapjoyConstants.TJC_THEME_DARK;
        } else {
            i85 i85Var4 = i85.LIGHT;
            str = TapjoyConstants.TJC_THEME_LIGHT;
        }
        sw2VarA3.I0 = str;
        sw2 sw2VarC3 = sw2VarA3.c();
        if (1 == context.getResources().getConfiguration().orientation) {
            str2 = TJAdUnitConstants.String.PORTRAIT;
        } else {
            str2 = TJAdUnitConstants.String.LANDSCAPE;
        }
        sw2VarC3.F = str2;
        sw2VarB = sw2VarC3.b();
        if (u10.a == null) {
            synchronized (u10.b) {
                if (u10.a == null) {
                    u10.a = v10.a(context);
                }
                j59 j59Var2 = j59.a;
            }
        }
        w10Var = u10.a;
        if (w10Var != null) {
            defpackage.fg.c("Required value was null.");
            return null;
        }
        sw2VarB.u = w10Var.c();
        sw2 sw2VarB3 = sw2VarB.e(context).d(context).f(context).i(context).b(context);
        sw2VarB3.K0 = Boolean.valueOf(ya.a(context));
        sw2 sw2VarG2 = sw2VarB3.h(context).g(context);
        sw2VarG2.S0 = Boolean.valueOf(vn2Var.f);
        zA = ((av3) uq4Var.a).a("OPT_OUT_ENABLED", false);
        if (zA) {
            boolValueOf = Boolean.valueOf(zA);
        } else {
            boolValueOf = null;
        }
        sw2VarG2.T0 = boolValueOf;
        sw2VarG2.P0 = ((av3) wi5.a(context).a).c("ServerSideClientIP");
        networkInterfaces = NetworkInterface.getNetworkInterfaces();
        networkInterfaces.getClass();
        loop0: while (networkInterfaces.hasMoreElements()) {
            inetAddresses = networkInterfaces.nextElement().getInetAddresses();
            inetAddresses.getClass();
            while (true) {
                inetAddressNextElement = inetAddresses.nextElement();
                if (!(inetAddressNextElement instanceof Inet6Address)) {
                }
            }
        }
        sw2VarG2.Q0 = hostAddress;
        ArrayList arrayListA2 = new z64().a(u54.a());
        arrayList = new ArrayList();
        while (r2.hasNext()) {
            list2 = ((m64) obj).d;
            if (list2 instanceof Collection) {
            }
            it2 = list2.iterator();
            while (it2.hasNext()) {
                if (((l64) it2.next()).c) {
                    arrayList.add(obj);
                    break;
                    break;
                }
            }
        }
        arrayList2 = new ArrayList();
        while (r3.hasNext()) {
            if (!defpackage.aa4.e(((m64) obj2).b, StringUtils.UNDEFINED)) {
                arrayList2.add(obj2);
            }
        }
        arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
        it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((m64) it.next()).b);
        }
        xb4.a aVar2 = defpackage.xb4.d;
        aVar2.getClass();
        sw2VarG2.i0 = aVar2.b(new defpackage.mr(ca8.a), arrayList3);
        sw2VarA = sw2VarG2.a();
        if (sw2.a(context)) {
            sw2VarA.f.getClass();
            sw2VarA.U0 = o83.a(context);
            sw2VarA.f.getClass();
            sw2VarA.V0 = Integer.valueOf(Runtime.getRuntime().availableProcessors());
        }
        if (sw2.a(context)) {
            sw2VarA.g.getClass();
            sw2VarA.W0 = TimeZone.getDefault().getID();
            sw2VarA.g.getClass();
            sw2VarA.X0 = iu5.a(context);
        }
        if (sw2.a(context)) {
            sw2VarA.h.getClass();
            sw2VarA.Y0 = qp0.a();
            sw2VarA.h.getClass();
            sw2VarA.Z0 = qp0.b();
        }
        if (sw2.a(context)) {
            sw2VarA.i.getClass();
            sw2VarA.a1 = Long.valueOf(SystemClock.elapsedRealtime());
        }
        if (sw2.a(context)) {
            sw2VarA.j.getClass();
            sw2VarA.b1 = dd6.a();
        }
        return sw2VarA;
    }

    public static sw2 a(Context context, e4 e4Var, qi5 qi5Var) {
        String str;
        String string;
        String strDecode;
        String strDecode2;
        sw2 sw2VarA = a(context, qi5Var, e4Var.b, new v85(), new uq4(context));
        n8 n8Var = e4Var.e;
        if (n8Var != null) {
            sw2VarA.O = sw2VarA.a ? null : n8Var;
            String str2 = n8Var.d;
            if (str2 == null || str2.length() == 0) {
                strDecode = null;
            } else {
                String strEncode = Uri.encode(str2);
                if (strEncode != null && strEncode.length() > 1024) {
                    d35.a("Exceeded the length of the parameter! The maximum size of the parameter is %s bytes. First %s bytes of the parameter will be used", 1024, 1024);
                    String strEncode2 = Uri.encode(" ");
                    String strSubstring = strEncode.substring(0, 1024);
                    boolean zB = ra8.B(1024, strEncode, strEncode2, false);
                    int iN = ta8.N(6, strSubstring, strEncode2);
                    strEncode = (zB || iN < 0) ? strSubstring : strSubstring.substring(0, iN);
                }
                strDecode = Uri.decode(strEncode);
            }
            sw2VarA.Z = strDecode;
            List list = n8Var.e;
            String string2 = "";
            if (list != null) {
                StringBuilder sb = new StringBuilder();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    defpackage.n1.d(sb, string2, (String) it.next(), "\n");
                    string2 = ExifInterface.GPS_MEASUREMENT_3D;
                }
                string2 = sb.toString();
            }
            if (string2.length() == 0) {
                strDecode2 = null;
            } else {
                String strEncode3 = Uri.encode(string2);
                if (strEncode3 != null && strEncode3.length() > 2048) {
                    d35.a("Exceeded the length of the parameter! The maximum size of the parameter is %s bytes. First %s bytes of the parameter will be used", 2048, 2048);
                    String strEncode4 = Uri.encode("\n");
                    strEncode3 = strEncode3.substring(0, 2048);
                    int iN2 = ta8.N(6, strEncode3, strEncode4);
                    if (!ra8.u(strEncode3, strEncode4, false) && iN2 >= 0) {
                        strEncode3 = strEncode3.substring(0, iN2);
                    }
                }
                strDecode2 = Uri.decode(strEncode3);
            }
            sw2VarA.a0 = strDecode2;
            sw2VarA.C0 = t8.a(n8Var.b);
            sw2VarA.D0 = t8.a(n8Var.c);
            sw2VarA.f0 = n8Var.h;
            i85 i85Var = n8Var.j;
            if (i85Var != null) {
                sw2VarA.H0 = t8.a(i85Var.b);
            }
            HashMap mapA = t8.a(n8Var.g);
            if (mapA != null) {
                sw2VarA.m.putAll(mapA);
            }
        }
        n70 n70Var = e4Var.a;
        if (n70Var != null) {
            sw2VarA.B = n70Var.b;
        }
        sw2VarA.s = e4Var.j;
        sw2VarA.A = e4Var.c.a;
        hk4 hk4Var = e4Var.f;
        if (hk4Var != null) {
            sw2VarA.c0 = hk4Var.b;
        }
        sl5 sl5Var = e4Var.d.a;
        if (sl5Var != null) {
            sw2VarA.E = sl5Var.b().b;
            sw2VarA.C = Integer.valueOf(sl5Var.c(context));
            sw2VarA.D = Integer.valueOf(sl5Var.a(context));
        }
        sw2VarA.g0 = e4Var.h;
        sw2VarA.h0 = e4Var.i;
        int i = e4Var.n;
        if (1 == i) {
            str = TJAdUnitConstants.String.PORTRAIT;
        } else {
            str = TJAdUnitConstants.String.LANDSCAPE;
        }
        sw2VarA.F = str;
        String str3 = e4Var.c.a;
        if (str3 != null && (string = bk5.a(context, "ViewSizeInfoStorage", new bk5()).getString(yg6.a(new zg6(str3, i)), null)) != null) {
            sw2VarA.J0 = string;
        }
        return sw2VarA;
    }
}

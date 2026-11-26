package com.my.tracker.obfuscated;

import android.text.TextUtils;
import com.my.tracker.MyTracker;
import com.my.tracker.MyTrackerParams;
import com.my.tracker.ads.AdEvent;
import com.my.tracker.config.AntiFraudConfig;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class k1 extends u1 {
    public synchronized int a(v1 v1Var, c3.a aVar, boolean z, f3 f3Var, String str, j0 j0Var, long j, long j2, b2 b2Var, d2 d2Var) {
        String str2;
        String str3;
        try {
            if (a(v1Var, b2Var, this.a) + a(v1Var, d2Var, this.a, this.b) == 0) {
                b3.a("No events to send");
                return 3;
            }
            v1Var.a(1, MyTracker.VERSION);
            v1Var.a(2, aVar.a);
            if (j != -1) {
                v1Var.a(3, j);
            }
            if (j2 > 0) {
                v1Var.a(5, (int) j2);
            }
            Map map = aVar.k.e;
            v1Var.a(43, map, this.b);
            if (z || map.isEmpty()) {
                str2 = null;
                str3 = null;
            } else {
                str2 = (String) map.get("android_id");
                str3 = (String) map.get("mac");
            }
            u1.a(v1Var, j0Var.a, j0Var.c, this.a, this.b);
            u1.a(v1Var, z, f3Var, this.a);
            u1.a(v1Var, str2, str3, j0Var, this.a, this.b);
            if (!z) {
                a(v1Var, aVar.k, this.a);
            }
            u1.a(v1Var, j0Var.f, j0Var.b, j0Var.c, this.a);
            a(v1Var, aVar, this.a);
            if (!z) {
                u1.a(v1Var, j0Var.g, this.a);
            }
            a(v1Var, j0Var.h, this.a);
            if (!z) {
                a(v1Var, j0Var.i.a, this.a);
                a(v1Var, j0Var.i.b, this.a);
            }
            if (!TextUtils.isEmpty(str)) {
                v1Var.a(44, str.length() > 255 ? str.substring(0, 255) : str);
            }
            a();
            return 1;
        } catch (Exception e) {
            b3.a("Create packet error: " + e, e);
            a();
            return 2;
        }
    }

    public synchronized byte[] b(String str, String str2, long j, long j2) {
        try {
            this.a.a();
            this.a.a(1, str);
            if (!TextUtils.isEmpty(str2)) {
                this.a.a(2, str2);
            }
            this.a.a(3, j2);
            this.a.a(4, j);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 31", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] c(long j) {
        try {
            this.a.a();
            this.a.a(2, j);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 29", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] b(boolean z, String str, String str2, Map map) {
        return a(8, z, str, str2, map);
    }

    public synchronized byte[] b(Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 13", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] b(String str, String str2) {
        try {
            this.a.a();
            this.a.a(1, str);
            if (!TextUtils.isEmpty(str2)) {
                this.a.a(2, str2);
            }
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 2", th);
            return null;
        }
        return this.a.c();
    }

    public static k1 b() {
        return new k1();
    }

    public synchronized byte[] b(long j, long j2, long j3) {
        try {
            this.a.a();
            this.a.a(2, j);
            this.a.a(3, j2);
            this.a.a(4, j3);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 26", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] b(long j) {
        try {
            this.a.a();
            this.a.a(2, j);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 28", th);
            return null;
        }
        return this.a.c();
    }

    public static void a(v1 v1Var, MyTrackerParams.a aVar, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, aVar.a);
        qVar.a(2, aVar.c);
        qVar.a(3, aVar.b);
        if (qVar.b() > 0) {
            v1Var.a(24, qVar);
        }
    }

    public static void a(v1 v1Var, c3.a aVar, q qVar) throws IOException {
        qVar.a();
        int i = aVar.b;
        if (i >= 0) {
            qVar.a(1, i);
        }
        if (aVar.e == 0) {
            qVar.a(2, 0);
        }
        if (!aVar.g) {
            qVar.a(3, 0);
        }
        if (!aVar.f) {
            qVar.a(4, 0);
        }
        int i2 = aVar.c;
        if (i2 != 900) {
            qVar.a(5, i2);
        }
        int i3 = aVar.d;
        if (i3 != 0) {
            qVar.a(6, i3);
        }
        if (!aVar.h) {
            qVar.a(7, 0);
        }
        if (!aVar.i) {
            qVar.a(8, 0);
        }
        if (!aVar.j) {
            qVar.a(9, 0);
        }
        AntiFraudConfig antiFraudConfig = aVar.l;
        if (!antiFraudConfig.useLightSensor) {
            qVar.a(11, 0);
        }
        if (!antiFraudConfig.useMagneticFieldSensor) {
            qVar.a(12, 0);
        }
        if (!antiFraudConfig.useGyroscope) {
            qVar.a(13, 0);
        }
        if (!antiFraudConfig.usePressureSensor) {
            qVar.a(14, 0);
        }
        if (!antiFraudConfig.useProximitySensor) {
            qVar.a(15, 0);
        }
        if (qVar.b() > 0) {
            v1Var.a(27, qVar);
        }
    }

    public static void a(v1 v1Var, j jVar, q qVar) throws IOException {
        if (jVar.a.isEmpty()) {
            return;
        }
        for (j.a aVar : jVar.a) {
            qVar.a();
            qVar.a(1, aVar.a);
            qVar.a(2, aVar.b);
            v1Var.a(31, qVar);
        }
    }

    public static void a(v1 v1Var, List list, q qVar) throws IOException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            g0.b bVar = (g0.b) it.next();
            if (bVar instanceof g0.c) {
                a(v1Var, (g0.c) bVar, qVar);
            } else if (bVar instanceof g0.d) {
                a(v1Var, (g0.d) bVar, qVar);
            } else if (bVar instanceof g0.e) {
                a(v1Var, (g0.e) bVar, qVar);
            } else if (bVar instanceof g0.i) {
                a(v1Var, (g0.i) bVar, qVar);
            } else if (bVar instanceof g0.g) {
                a(v1Var, (g0.g) bVar, qVar);
            } else if (bVar instanceof g0.f) {
                a(v1Var, (g0.f) bVar, qVar);
            } else if (bVar instanceof g0.h) {
                a(v1Var, (g0.h) bVar, qVar);
            } else {
                b3.a("Unknown cell-info");
            }
        }
    }

    private static int a(q qVar, int i, int i2) {
        if (i2 != Integer.MAX_VALUE) {
            return qVar.a(i, i2);
        }
        return 0;
    }

    private static int a(q qVar, int i, long j) {
        if (j != Long.MAX_VALUE) {
            return qVar.a(i, j);
        }
        return 0;
    }

    private static void a(v1 v1Var, g0.c cVar, q qVar) throws IOException {
        qVar.a();
        a(qVar, 1, cVar.a);
        a(qVar, 2, cVar.b);
        a(qVar, 3, cVar.c);
        a(qVar, 4, cVar.d);
        a(qVar, 5, cVar.e);
        a(qVar, 6, cVar.f);
        a(qVar, 7, cVar.g);
        a(qVar, 8, cVar.h);
        a(qVar, 9, cVar.i);
        a(qVar, 10, cVar.j);
        a(qVar, 11, cVar.k);
        a(qVar, 12, cVar.l);
        v1Var.a(32, qVar);
    }

    private static void a(v1 v1Var, g0.d dVar, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, dVar.a);
        qVar.a(2, dVar.b);
        a(qVar, 3, dVar.c);
        a(qVar, 4, dVar.d);
        a(qVar, 5, dVar.e);
        a(qVar, 6, dVar.f);
        a(qVar, 7, dVar.g);
        a(qVar, 8, dVar.h);
        a(qVar, 9, dVar.i);
        a(qVar, 10, dVar.j);
        v1Var.a(33, qVar);
    }

    private static void a(v1 v1Var, g0.e eVar, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, eVar.a);
        qVar.a(2, eVar.b);
        a(qVar, 3, eVar.c);
        a(qVar, 4, eVar.d);
        a(qVar, 5, eVar.e);
        a(qVar, 6, eVar.f);
        a(qVar, 7, eVar.g);
        a(qVar, 8, eVar.h);
        a(qVar, 9, eVar.i);
        a(qVar, 10, eVar.j);
        v1Var.a(34, qVar);
    }

    private static void a(v1 v1Var, g0.i iVar, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, iVar.a);
        qVar.a(2, iVar.b);
        a(qVar, 3, iVar.c);
        a(qVar, 4, iVar.d);
        a(qVar, 5, iVar.e);
        a(qVar, 6, iVar.f);
        a(qVar, 7, iVar.g);
        a(qVar, 8, iVar.h);
        a(qVar, 9, iVar.i);
        v1Var.a(35, qVar);
    }

    private static void a(v1 v1Var, g0.g gVar, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, gVar.a);
        qVar.a(2, gVar.b);
        a(qVar, 3, gVar.c);
        a(qVar, 4, gVar.d);
        a(qVar, 5, gVar.e);
        a(qVar, 6, gVar.f);
        a(qVar, 7, gVar.g);
        a(qVar, 8, gVar.h);
        a(qVar, 9, gVar.i);
        v1Var.a(36, qVar);
    }

    private static void a(v1 v1Var, g0.f fVar, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, fVar.a);
        qVar.a(2, fVar.b);
        a(qVar, 3, fVar.c);
        a(qVar, 4, fVar.d);
        a(qVar, 5, fVar.e);
        a(qVar, 6, fVar.f);
        a(qVar, 7, fVar.g);
        a(qVar, 8, fVar.h);
        a(qVar, 9, fVar.i);
        v1Var.a(37, qVar);
    }

    private static void a(v1 v1Var, g0.h hVar, q qVar) throws IOException {
        qVar.a();
        qVar.a(1, hVar.a);
        qVar.a(2, hVar.b);
        a(qVar, 3, hVar.c);
        a(qVar, 4, hVar.d);
        v1Var.a(33, qVar);
    }

    public static void a(v1 v1Var, g0.k kVar, q qVar) throws IOException {
        if (kVar.a != null) {
            qVar.a();
            qVar.a(1, kVar.a.b);
            qVar.a(2, kVar.a.a);
            qVar.a(3, kVar.a.c);
            qVar.a(5, kVar.a.d);
            qVar.a(6, kVar.a.e);
            v1Var.a(28, qVar);
        }
        for (g0.a aVar : kVar.b) {
            qVar.a();
            qVar.a(1, aVar.b);
            qVar.a(2, aVar.a);
            qVar.a(3, aVar.c);
            v1Var.a(29, qVar);
        }
    }

    public static int a(v1 v1Var, b2 b2Var, q qVar) {
        int iA;
        int i = 0;
        try {
            b2.a aVarA = b2Var.a();
            iA = 0;
            while (aVarA.b()) {
                try {
                    try {
                        int iG = (int) aVarA.g();
                        try {
                            qVar.a();
                            b2.b bVarD = aVarA.d();
                            while (bVarD.b()) {
                                try {
                                    qVar.a(2, (int) bVarD.e());
                                } catch (Throwable th) {
                                    if (bVarD != null) {
                                        try {
                                            bVarD.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                    }
                                    throw th;
                                }
                            }
                            bVarD.close();
                            if (qVar.b() == 0) {
                                b3.b("Error: no timestamps for event " + iG + ", event ignored");
                            } else {
                                qVar.a(1, iG);
                                long jC = aVarA.c();
                                if (jC > 0) {
                                    qVar.a(3, (int) jC);
                                }
                                byte[] bArrL = aVarA.l();
                                if (bArrL.length > 0) {
                                    int iA2 = a(iG);
                                    if (iA2 == -1) {
                                        b3.b("Error: unrecognized eventType " + iG + ", event ignored");
                                    } else {
                                        qVar.a(iA2, bArrL);
                                    }
                                }
                                iA += v1Var.a(41, qVar);
                                i++;
                            }
                        } catch (Throwable th3) {
                            b3.b("Error: failed to pack event " + iG, th3);
                        }
                    } catch (Throwable th4) {
                        if (aVarA != null) {
                            try {
                                aVarA.close();
                            } catch (Throwable th5) {
                                th4.addSuppressed(th5);
                            }
                        }
                        throw th4;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    b3.b("Error: failed to get stored events", th);
                    b3.a("Written: events=" + i + ", bytes=" + iA);
                    return iA;
                }
            }
            aVarA.close();
        } catch (Throwable th7) {
            th = th7;
            iA = 0;
        }
        b3.a("Written: events=" + i + ", bytes=" + iA);
        return iA;
    }

    public static int a(v1 v1Var, d2 d2Var, q qVar, q qVar2) {
        int i;
        int iA = 0;
        try {
            d2.a aVarA = d2Var.a();
            i = 0;
            while (aVarA.b()) {
                try {
                    try {
                        String strK = aVarA.k();
                        qVar.a();
                        try {
                            d2.b bVarD = aVarA.d();
                            while (bVarD.b()) {
                                try {
                                    qVar2.a();
                                    qVar2.a(1, (int) bVarD.h());
                                    if (!bVarD.f()) {
                                        qVar2.a(2, (int) bVarD.j());
                                    }
                                    qVar.a(1, qVar2);
                                } catch (Throwable th) {
                                    if (bVarD != null) {
                                        try {
                                            bVarD.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                    }
                                    throw th;
                                }
                            }
                            bVarD.close();
                        } catch (Throwable th3) {
                            b3.b("Error: failed to read session " + strK + ": ", th3);
                        }
                        if (qVar.b() == 0) {
                            b3.a("No periods for session " + strK + ", id=" + aVarA.a() + ", session ignored");
                        } else {
                            int iC = (int) aVarA.c();
                            if (iC > 0) {
                                qVar.a(2, iC);
                            }
                            iA += v1Var.a(42, qVar);
                            i++;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        b3.b("Error: failed to get stored sessions", th);
                    }
                } catch (Throwable th5) {
                    if (aVarA != null) {
                        try {
                            aVarA.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                    }
                    throw th5;
                }
            }
            aVarA.close();
        } catch (Throwable th7) {
            th = th7;
            i = 0;
        }
        b3.a("Written: sessions=" + i + ", bytes=" + iA);
        return iA;
    }

    public synchronized boolean a(v1 v1Var, long j) {
        if (j > 0) {
            try {
                v1Var.a(4, j);
            } catch (Exception e) {
                b3.a("Write timestamp send error: " + e, e);
                return false;
            }
        }
        return true;
    }

    private static int a(int i) {
        switch (i) {
            case 1:
                return 12;
            case 2:
                return 13;
            case 3:
                return 11;
            case 4:
            case 11:
            case 12:
            case 16:
            case 30:
            default:
                return -1;
            case 5:
                return 17;
            case 6:
                return 22;
            case 7:
                return 18;
            case 8:
                return 19;
            case 9:
                return 20;
            case 10:
                return 23;
            case 13:
                return 21;
            case 14:
                return 14;
            case 15:
                return 16;
            case 17:
                return 25;
            case 18:
                return 26;
            case 19:
                return 27;
            case 20:
                return 28;
            case 21:
                return 29;
            case 22:
                return 30;
            case 23:
                return 31;
            case 24:
                return 32;
            case 25:
                return 33;
            case 26:
                return 34;
            case 27:
                return 35;
            case 28:
                return 36;
            case 29:
                return 37;
            case 31:
                return 39;
            case 32:
                return 40;
            case 33:
                return 41;
        }
    }

    public synchronized byte[] a(String str, Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
            this.a.a(2, str);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 6", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(boolean z, String str, String str2, Map map) {
        return a(7, z, str, str2, map);
    }

    public synchronized byte[] a(Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 9", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(int i, Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
            this.a.a(2, i);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 13", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(long j, String str, s1.a aVar) {
        try {
            this.a.a();
            this.a.a(1, j);
            this.b.a();
            if (!TextUtils.isEmpty(str)) {
                this.b.a(1, str);
            }
            if (aVar != null) {
                this.b.a(2, aVar.a);
            }
            if (aVar != null) {
                this.b.a(3, aVar.b);
            }
            if (aVar != null) {
                this.b.a(4, aVar.c);
            }
            if (this.b.b() > 0) {
                this.a.a(2, this.b);
            }
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 1", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(String str, String str2, long j, long j2) {
        try {
            this.a.a();
            this.a.a(1, str);
            if (!TextUtils.isEmpty(str2)) {
                this.a.a(2, str2);
            }
            this.a.a(3, j2);
            this.a.a(4, j);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 14", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(String str) {
        try {
            this.a.a();
            this.a.a(1, str);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 33", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(String str, String str2, String str3, String str4, String str5) {
        try {
            this.a.a();
            this.a.a(1, str3);
            this.a.a(2, str4);
            this.a.a(3, str);
            this.a.a(4, str2);
            if (!TextUtils.isEmpty(str5)) {
                this.b.a();
                this.b.a(1, str5);
                if (this.b.b() > 0) {
                    this.a.a(5, this.b);
                }
            }
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 5", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(String str, String str2, String str3, String str4, String str5, Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
            this.b.a();
            this.b.a(1, str2);
            this.b.a(2, str);
            this.b.a(3, str3);
            if (this.b.b() > 0) {
                this.a.a(2, this.b);
            }
            if (str3 != null) {
                this.a.a(4, str4);
                this.a.a(5, str5);
            }
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 10", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(String str, String str2, String str3, String str4, int i, String str5, String str6, Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
            this.a.a(2, str2);
            this.a.a(3, str);
            this.a.a(4, str3);
            if (str != null) {
                this.a.a(5, str5);
                this.a.a(6, str6);
            }
            this.a.a(7, str4);
            this.a.a(8, i);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 32", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(String str, String str2) {
        try {
            this.a.a();
            this.a.a(1, str);
            if (!TextUtils.isEmpty(str2)) {
                this.a.a(2, str2);
            }
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 15", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(AdEvent adEvent, String str) {
        try {
            this.a.a();
            this.a.a(1, adEvent.network);
            if (adEvent.a == 19) {
                this.a.a(2, str);
                this.a.a(3, adEvent.currency);
            }
            this.a.a(4, adEvent.source);
            this.a.a(5, adEvent.placementId);
            this.a.a(6, adEvent.adId);
            this.a.a(7, adEvent.adFormat);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: " + adEvent.a, th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(int i, String str, String str2, String str3, String str4, String str5, Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
            this.a.a(2, str2);
            this.a.a(3, str4);
            this.a.a(4, str5);
            this.a.a(5, str);
            this.a.a(6, str3);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: " + i, th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(long j) {
        try {
            this.a.a();
            this.a.a(2, j);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 25", th);
            return null;
        }
        return this.a.c();
    }

    public synchronized byte[] a(long j, long j2, long j3) {
        try {
            this.a.a();
            this.a.a(2, j);
            this.a.a(3, j2);
            this.a.a(4, j3);
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: 27", th);
            return null;
        }
        return this.a.c();
    }

    private byte[] a(int i, boolean z, String str, String str2, Map map) {
        try {
            this.a.a();
            this.a.a(1, map, this.b);
            if (!z) {
                this.a.a(2, str);
                this.a.a(3, str2);
            }
            return this.a.c();
        } catch (Throwable th) {
            b3.b("Event serialization failed, type: " + i, th);
            return null;
        }
    }
}

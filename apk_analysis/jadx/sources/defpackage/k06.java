package defpackage;

import io.grpc.h;
import io.grpc.i;
import io.grpc.l;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class k06 extends i {
    public static l.b d(Map map) {
        Long l = pl2.l("interval", map);
        Long l2 = pl2.l("baseEjectionTime", map);
        Long l3 = pl2.l("maxEjectionTime", map);
        Integer numI = pl2.i("maxEjectionPercentage", map);
        j06.f.a aVar = new j06.f.a();
        aVar.a = 10000000000L;
        aVar.b = 30000000000L;
        aVar.c = 300000000000L;
        aVar.d = 10;
        if (l != null) {
            aVar.a = l.longValue();
        }
        if (l2 != null) {
            aVar.b = l2.longValue();
        }
        if (l3 != null) {
            aVar.c = l3.longValue();
        }
        if (numI != null) {
            aVar.d = numI.intValue();
        }
        Map mapJ = pl2.j("successRateEjection", map);
        if (mapJ != null) {
            j06.f.c.a aVar2 = new j06.f.c.a();
            aVar2.a = 1900;
            aVar2.b = 100;
            aVar2.c = 5;
            aVar2.d = 100;
            Integer numI2 = pl2.i("stdevFactor", mapJ);
            Integer numI3 = pl2.i("enforcementPercentage", mapJ);
            Integer numI4 = pl2.i("minimumHosts", mapJ);
            Integer numI5 = pl2.i("requestVolume", mapJ);
            if (numI2 != null) {
                aVar2.a = numI2.intValue();
            }
            if (numI3 != null) {
                int iIntValue = numI3.intValue();
                o8.e(iIntValue >= 0 && iIntValue <= 100);
                aVar2.b = iIntValue;
            }
            if (numI4 != null) {
                int iIntValue2 = numI4.intValue();
                o8.e(iIntValue2 >= 0);
                aVar2.c = iIntValue2;
            }
            if (numI5 != null) {
                int iIntValue3 = numI5.intValue();
                o8.e(iIntValue3 >= 0);
                aVar2.d = iIntValue3;
            }
            aVar.e = new j06.f.c(aVar2);
        }
        Map mapJ2 = pl2.j("failurePercentageEjection", map);
        if (mapJ2 != null) {
            j06.f.b.a aVar3 = new j06.f.b.a();
            aVar3.a = 85;
            aVar3.b = 100;
            aVar3.c = 5;
            aVar3.d = 50;
            Integer numI6 = pl2.i("threshold", mapJ2);
            Integer numI7 = pl2.i("enforcementPercentage", mapJ2);
            Integer numI8 = pl2.i("minimumHosts", mapJ2);
            Integer numI9 = pl2.i("requestVolume", mapJ2);
            if (numI6 != null) {
                int iIntValue4 = numI6.intValue();
                o8.e(iIntValue4 >= 0 && iIntValue4 <= 100);
                aVar3.a = iIntValue4;
            }
            if (numI7 != null) {
                int iIntValue5 = numI7.intValue();
                o8.e(iIntValue5 >= 0 && iIntValue5 <= 100);
                aVar3.b = iIntValue5;
            }
            if (numI8 != null) {
                int iIntValue6 = numI8.intValue();
                o8.e(iIntValue6 >= 0);
                aVar3.c = iIntValue6;
            }
            if (numI9 != null) {
                int iIntValue7 = numI9.intValue();
                o8.e(iIntValue7 >= 0);
                aVar3.d = iIntValue7;
            }
            aVar.f = new j06.f.b(aVar3);
        }
        List listF = pl2.f("childPolicy", map);
        if (listF == null) {
            listF = null;
        } else {
            pl2.a(listF);
        }
        l.b bVarE = ir3.e(listF);
        h88 h88Var = bVarE.a;
        if (h88Var != null) {
            return new l.b(vs3.h(h88.a.UNAVAILABLE, "Failed to parse child in outlier_detection_experimental", h88Var));
        }
        Object obj = bVarE.b;
        o8.r(obj != null);
        aVar.g = obj;
        o8.r(obj != null);
        return new l.b(new j06.f(aVar));
    }

    @Override // io.grpc.h.c
    public final h a(h.e eVar) {
        return new j06(eVar, du8.a);
    }

    @Override // io.grpc.i
    public final String b() {
        return "outlier_detection_experimental";
    }

    @Override // io.grpc.i
    public final l.b c(Map<String, ?> map) {
        try {
            return d(map);
        } catch (RuntimeException e) {
            return new l.b(h88.m.g(e).h("Failed parsing configuration for outlier_detection_experimental"));
        }
    }
}

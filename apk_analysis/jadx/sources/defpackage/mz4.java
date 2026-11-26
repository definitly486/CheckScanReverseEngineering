package defpackage;

import androidx.core.app.NotificationCompat;
import io.grpc.g;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class mz4 {
    public final a a;
    public final Map<String, a> b;
    public final Map<String, a> c;
    public final k67.y d;
    public final Object e;
    public final Map<String, ?> f;

    public static final class a {
        public static final io.grpc.b.C0204b<a> g = new io.grpc.b.C0204b<>("io.grpc.internal.ManagedChannelServiceConfig.MethodInfo");
        public final Long a;
        public final Boolean b;
        public final Integer c;
        public final Integer d;
        public final q67 e;
        public final sv3 f;

        public a(Map map, int i, int i2, boolean z) {
            long j;
            boolean z2;
            q67 q67Var;
            sv3 sv3Var;
            this.a = pl2.l("timeout", map);
            this.b = pl2.c("waitForReady", map);
            Integer numI = pl2.i("maxResponseMessageBytes", map);
            this.c = numI;
            if (numI != null) {
                o8.h(numI.intValue() >= 0, "maxInboundMessageSize %s exceeds bounds", numI);
            }
            Integer numI2 = pl2.i("maxRequestMessageBytes", map);
            this.d = numI2;
            if (numI2 != null) {
                o8.h(numI2.intValue() >= 0, "maxOutboundMessageSize %s exceeds bounds", numI2);
            }
            Map mapJ = z ? pl2.j("retryPolicy", map) : null;
            if (mapJ == null) {
                j = 0;
                q67Var = null;
                z2 = true;
            } else {
                Integer numI3 = pl2.i("maxAttempts", mapJ);
                o8.l(numI3, "maxAttempts cannot be empty");
                int iIntValue = numI3.intValue();
                o8.b(iIntValue, "maxAttempts must be greater than 1: %s", iIntValue >= 2);
                int iMin = Math.min(iIntValue, i);
                Long l = pl2.l("initialBackoff", mapJ);
                o8.l(l, "initialBackoff cannot be empty");
                long jLongValue = l.longValue();
                o8.c(jLongValue, jLongValue > 0, "initialBackoffNanos must be greater than 0: %s");
                Long l2 = pl2.l("maxBackoff", mapJ);
                o8.l(l2, "maxBackoff cannot be empty");
                long jLongValue2 = l2.longValue();
                j = 0;
                z2 = true;
                o8.c(jLongValue2, jLongValue2 > 0, "maxBackoff must be greater than 0: %s");
                Double dH = pl2.h("backoffMultiplier", mapJ);
                o8.l(dH, "backoffMultiplier cannot be empty");
                double dDoubleValue = dH.doubleValue();
                o8.h(dDoubleValue > 0.0d, "backoffMultiplier must be greater than 0: %s", dH);
                Long l3 = pl2.l("perAttemptRecvTimeout", mapJ);
                o8.h(l3 == null || l3.longValue() >= 0, "perAttemptRecvTimeout cannot be negative: %s", l3);
                Set setA = sq7.a("retryableStatusCodes", mapJ);
                tc9.a("%s is required in retry policy", setA != null, "retryableStatusCodes");
                tc9.a("%s must not contain OK", !setA.contains(h88.a.OK), "retryableStatusCodes");
                o8.f((l3 == null && setA.isEmpty()) ? false : true, "retryableStatusCodes cannot be empty without perAttemptRecvTimeout");
                q67Var = new q67(iMin, jLongValue, jLongValue2, dDoubleValue, l3, setA);
            }
            this.e = q67Var;
            Map mapJ2 = z ? pl2.j("hedgingPolicy", map) : null;
            if (mapJ2 == null) {
                sv3Var = null;
            } else {
                Integer numI4 = pl2.i("maxAttempts", mapJ2);
                o8.l(numI4, "maxAttempts cannot be empty");
                int iIntValue2 = numI4.intValue();
                o8.b(iIntValue2, "maxAttempts must be greater than 1: %s", iIntValue2 >= 2 ? z2 : false);
                int iMin2 = Math.min(iIntValue2, i2);
                Long l4 = pl2.l("hedgingDelay", mapJ2);
                o8.l(l4, "hedgingDelay cannot be empty");
                long jLongValue3 = l4.longValue();
                o8.c(jLongValue3, jLongValue3 >= j ? z2 : false, "hedgingDelay must not be negative: %s");
                Set setA2 = sq7.a("nonFatalStatusCodes", mapJ2);
                if (setA2 == null) {
                    setA2 = Collections.unmodifiableSet(EnumSet.noneOf(h88.a.class));
                } else {
                    tc9.a("%s must not contain OK", !setA2.contains(h88.a.OK), "nonFatalStatusCodes");
                }
                sv3Var = new sv3(iMin2, jLongValue3, setA2);
            }
            this.f = sv3Var;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Objects.equals(this.a, aVar.a) && Objects.equals(this.b, aVar.b) && Objects.equals(this.c, aVar.c) && Objects.equals(this.d, aVar.d) && Objects.equals(this.e, aVar.e) && Objects.equals(this.f, aVar.f);
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b, this.c, this.d, this.e, this.f);
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            aVarB.d(this.a, "timeoutNanos");
            aVarB.d(this.b, "waitForReady");
            aVarB.d(this.c, "maxInboundMessageSize");
            aVarB.d(this.d, "maxOutboundMessageSize");
            aVarB.d(this.e, "retryPolicy");
            aVarB.d(this.f, "hedgingPolicy");
            return aVarB.toString();
        }
    }

    public static final class b extends g {
        public final mz4 b;

        public b(mz4 mz4Var) {
            this.b = mz4Var;
        }

        @Override // io.grpc.g
        public final g.a a() {
            mz4 mz4Var = this.b;
            o8.l(mz4Var, "config");
            return new g.a(h88.e, mz4Var);
        }
    }

    public mz4(a aVar, HashMap map, HashMap map2, k67.y yVar, Object obj, Map map3) {
        this.a = aVar;
        this.b = Collections.unmodifiableMap(new HashMap(map));
        this.c = Collections.unmodifiableMap(new HashMap(map2));
        this.d = yVar;
        this.e = obj;
        this.f = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
    }

    public static mz4 a(Map<String, ?> map, boolean z, int i, int i2, Object obj) {
        k67.y yVar;
        Map mapJ;
        k67.y yVar2;
        if (z) {
            if (map == null || (mapJ = pl2.j("retryThrottling", map)) == null) {
                yVar2 = null;
            } else {
                float fFloatValue = pl2.h("maxTokens", mapJ).floatValue();
                float fFloatValue2 = pl2.h("tokenRatio", mapJ).floatValue();
                o8.s(fFloatValue > 0.0f, "maxToken should be greater than zero");
                o8.s(fFloatValue2 > 0.0f, "tokenRatio should be greater than zero");
                yVar2 = new k67.y(fFloatValue, fFloatValue2);
            }
            yVar = yVar2;
        } else {
            yVar = null;
        }
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        Map mapJ2 = map == null ? null : pl2.j("healthCheckConfig", map);
        List<Map> listF = pl2.f("methodConfig", map);
        if (listF == null) {
            listF = null;
        } else {
            pl2.a(listF);
        }
        if (listF == null) {
            return new mz4(null, map2, map3, yVar, obj, mapJ2);
        }
        a aVar = null;
        for (Map map4 : listF) {
            a aVar2 = new a(map4, i, i2, z);
            List<Map> listF2 = pl2.f("name", map4);
            if (listF2 == null) {
                listF2 = null;
            } else {
                pl2.a(listF2);
            }
            if (listF2 != null && !listF2.isEmpty()) {
                for (Map map5 : listF2) {
                    String strK = pl2.k(NotificationCompat.CATEGORY_SERVICE, map5);
                    String strK2 = pl2.k("method", map5);
                    if (i13.b(strK)) {
                        o8.h(i13.b(strK2), "missing service name for method %s", strK2);
                        o8.h(aVar == null, "Duplicate default method config in service config %s", map);
                        aVar = aVar2;
                    } else if (i13.b(strK2)) {
                        o8.h(!map3.containsKey(strK), "Duplicate service %s", strK);
                        map3.put(strK, aVar2);
                    } else {
                        o8.l(strK, "fullServiceName");
                        StringBuilder sb = new StringBuilder(strK);
                        sb.append("/");
                        o8.l(strK2, "methodName");
                        sb.append(strK2);
                        String string = sb.toString();
                        o8.h(!map2.containsKey(string), "Duplicate method name %s", string);
                        map2.put(string, aVar2);
                    }
                }
            }
        }
        return new mz4(aVar, map2, map3, yVar, obj, mapJ2);
    }

    public final b b() {
        if (this.c.isEmpty() && this.b.isEmpty() && this.a == null) {
            return null;
        }
        return new b(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && mz4.class == obj.getClass()) {
            mz4 mz4Var = (mz4) obj;
            if (Objects.equals(this.a, mz4Var.a) && Objects.equals(this.b, mz4Var.b) && Objects.equals(this.c, mz4Var.c) && Objects.equals(this.d, mz4Var.d) && Objects.equals(this.e, mz4Var.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, this.e);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.d(this.a, "defaultMethodConfig");
        aVarB.d(this.b, "serviceMethodMap");
        aVarB.d(this.c, "serviceMap");
        aVarB.d(this.d, "retryThrottling");
        aVarB.d(this.e, "loadBalancingConfig");
        return aVarB.toString();
    }
}

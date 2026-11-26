package yads;

import defpackage.v39;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class u8 {
    public final ib a;
    public final kx4 b;
    public final gi0 c;
    public final rd5 d;

    public u8() {
        ib ibVar = new ib();
        kx4 kx4Var = new kx4();
        gi0 gi0Var = new gi0();
        rd5 rd5Var = new rd5();
        this.a = ibVar;
        this.b = kx4Var;
        this.c = gi0Var;
        this.d = rd5Var;
    }

    public final h75 a(n8 n8Var) {
        String str;
        Map mapSingletonMap;
        boolean z;
        String str2;
        h75 h75Var = new h75((Map) null, 3);
        if (n8Var != null) {
            Map map = n8Var.g;
            this.a.getClass();
            HashMap map2 = new HashMap();
            if (!v39.e(map2)) {
                map2 = null;
            }
            if (map2 == null) {
                map2 = new LinkedHashMap();
            }
            if (map != null) {
                String str3 = (String) map.get("adapter_network_name");
                String str4 = (String) map.get("adapter_version");
                String str5 = (String) map.get("adapter_network_sdk_version");
                if (str3 != null) {
                    map2.put("adapter_network_name", str3);
                }
                if (str4 != null) {
                    map2.put("adapter_version", str4);
                }
                if (str5 != null) {
                    map2.put("adapter_network_sdk_version", str5);
                }
            }
            this.b.getClass();
            ix4 ix4Var = (ix4) jx4.a.getValue();
            if (ix4Var != null) {
                int iOrdinal = ix4Var.ordinal();
                if (iOrdinal == 0) {
                    str = PluginErrorDetails.Platform.FLUTTER;
                } else if (iOrdinal == 1) {
                    str = "react-native";
                } else {
                    if (iOrdinal != 2) {
                        defpackage.me0.e();
                        return null;
                    }
                    str = "unity";
                }
            } else {
                str = map != null ? (String) map.get("plugin_type") : null;
            }
            String str6 = map != null ? (String) map.get("plugin_version") : null;
            defpackage.uz4 uz4Var = new defpackage.uz4();
            if (str != null) {
                uz4Var.put("plugin_type", str);
            }
            if (str6 != null) {
                uz4Var.put("plugin_version", str6);
            }
            defpackage.uz4 uz4VarB = uz4Var.b();
            this.c.getClass();
            if (map == null || (str2 = (String) map.get("ui_framework")) == null) {
                mapSingletonMap = defpackage.mx2.b;
            } else {
                mapSingletonMap = Collections.singletonMap("ui_framework", str2);
                mapSingletonMap.getClass();
            }
            String str7 = n8Var.l;
            rd5 rd5Var = this.d;
            rd5Var.getClass();
            HashMap map3 = new HashMap();
            if (!v39.e(map3)) {
                map3 = null;
            }
            if (map3 == null) {
                map3 = new LinkedHashMap();
            }
            zg5 zg5Var = rd5Var.a;
            synchronized (zg5.k) {
                z = zg5Var.h;
            }
            map3.put("app_ad_analytics_enabled", Boolean.valueOf(z));
            h75Var.a.putAll(map2);
            h75Var.a.putAll(uz4VarB);
            h75Var.a.putAll(mapSingletonMap);
            h75Var.a(str7, "preload_type");
            h75Var.a.putAll(map3);
        }
        String str8 = n8Var != null ? n8Var.h : null;
        if (str8 != null && str8.length() != 0) {
            h75Var.a("openbidding", "integration_type");
        }
        return h75Var;
    }
}

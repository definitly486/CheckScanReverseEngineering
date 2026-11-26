package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import yads.i36;
import yads.j36;
import yads.u66;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yy2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ yy2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                db6 db6Var = (db6) obj3;
                List list = (List) obj;
                list.getClass();
                Map map = (Map) ((fh8) obj2).getValue();
                map.getClass();
                ta6 ta6Var = db6Var.a;
                String str = ta6Var.y;
                String str2 = ta6Var.z;
                str.getClass();
                str2.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.putAll(map);
                linkedHashMap.put("telemetry.sdk.name", str);
                linkedHashMap.put("telemetry.sdk.version", str2);
                List<gc6> list2 = list;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                for (gc6 gc6Var : list2) {
                    gc6Var.getClass();
                    hc6 hc6Var = gc6Var.b;
                    List<String> list3 = gc6Var.j;
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    String str3 = gc6Var.g;
                    if (str3 != null) {
                        linkedHashMap2.put("posthogDistinctId", str3);
                    }
                    String str4 = gc6Var.h;
                    if (str4 != null) {
                        linkedHashMap2.put("sessionId", str4);
                    }
                    String str5 = gc6Var.i;
                    if (str5 != null) {
                        linkedHashMap2.put("screen.name", str5);
                    }
                    String str6 = gc6Var.k;
                    if (str6 != null) {
                        linkedHashMap2.put("app.state", str6);
                    }
                    if (!list3.isEmpty()) {
                        linkedHashMap2.put("feature_flags", list3);
                    }
                    linkedHashMap2.putAll(gc6Var.c);
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    linkedHashMap3.put("timeUnixNano", gc6Var.l);
                    linkedHashMap3.put("observedTimeUnixNano", gc6Var.m);
                    linkedHashMap3.put("severityNumber", Integer.valueOf(hc6Var.d()));
                    linkedHashMap3.put("severityText", hc6Var.e());
                    Map mapSingletonMap = Collections.singletonMap("stringValue", gc6Var.a);
                    mapSingletonMap.getClass();
                    linkedHashMap3.put(TtmlNode.TAG_BODY, mapSingletonMap);
                    if (!linkedHashMap2.isEmpty()) {
                        linkedHashMap3.put("attributes", jc6.c(linkedHashMap2));
                    }
                    String str7 = gc6Var.d;
                    if (str7 != null) {
                        linkedHashMap3.put("traceId", str7);
                    }
                    String str8 = gc6Var.e;
                    if (str8 != null) {
                        linkedHashMap3.put("spanId", str8);
                    }
                    Integer num = gc6Var.f;
                    if (num != null) {
                        linkedHashMap3.put("flags", Integer.valueOf(num.intValue()));
                    }
                    arrayList.add(linkedHashMap3);
                }
                Map mapSingletonMap2 = Collections.singletonMap("attributes", jc6.c(linkedHashMap));
                mapSingletonMap2.getClass();
                Map mapSingletonMap3 = Collections.singletonMap("resourceLogs", u96.h(n05.e(new b36("resource", mapSingletonMap2), new b36("scopeLogs", u96.h(n05.e(new b36("scope", n05.e(new b36("name", str), new b36("version", str2))), new b36("logRecords", arrayList)))))));
                mapSingletonMap3.getClass();
                String str9 = db6Var.f() + "/i/v1/logs?token=" + ta6Var.t;
                db6Var.d(db6Var.g(str9, new ry1(db6Var, mapSingletonMap3, str9)));
                return j59.a;
            default:
                return j36.a((r07) obj3, (i36) obj2, (u66) obj);
        }
    }
}

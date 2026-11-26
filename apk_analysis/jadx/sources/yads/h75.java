package yads;

import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class h75 {
    public final Map a;
    public c b;

    public h75(Map map, c cVar) {
        map = v39.e(map) ? map : null;
        this.a = map == null ? new LinkedHashMap() : map;
        this.b = cVar;
    }

    public final void a(Object obj, String str) {
        if (obj != null) {
            this.a.put(str, obj);
        }
    }

    public final void b(Object obj, String str) {
        Map map = this.a;
        if (obj == null) {
            map.put(str, StringUtils.UNDEFINED);
        } else {
            map.put(str, obj);
        }
    }

    public /* synthetic */ h75(Map map, int i) {
        this((i & 1) != 0 ? defpackage.mx2.b : map, (c) null);
    }
}

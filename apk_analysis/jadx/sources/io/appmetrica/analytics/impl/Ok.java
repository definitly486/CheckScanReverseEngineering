package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.modulesapi.internal.common.TableDescription;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Ok {
    public final C1120n7 a;
    public C1068l7 b;
    public C0909f3 c;
    public C0935g3 d;
    public Gb e;
    public Hb f;
    public Fn g;
    public Gn h;
    public final LinkedHashMap i = new LinkedHashMap();
    public final LinkedHashMap j = new LinkedHashMap();
    public final LinkedHashMap k = new LinkedHashMap();

    public Ok(File file) {
        this.a = new C1120n7(file);
    }

    public final synchronized IBinaryDataHelper a(Context context, C0808b5 c0808b5) {
        Object c0909f3;
        try {
            String str = new S4(c0808b5).a;
            LinkedHashMap linkedHashMap = this.k;
            c0909f3 = linkedHashMap.get(str);
            if (c0909f3 == null) {
                c0909f3 = new C0909f3(new Jl(c(context, c0808b5)), "binary_data");
                linkedHashMap.put(str, c0909f3);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (IBinaryDataHelper) c0909f3;
    }

    public final synchronized Va b(Context context, C0808b5 c0808b5) {
        Object gb;
        try {
            String str = new S4(c0808b5).a;
            LinkedHashMap linkedHashMap = this.j;
            gb = linkedHashMap.get(str);
            if (gb == null) {
                gb = new Gb("preferences", new Jl(c(context, c0808b5)), Fa.I.d.e());
                linkedHashMap.put(str, gb);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (Va) gb;
    }

    public final synchronized C1068l7 c(Context context, C0808b5 c0808b5) {
        Object c1068l7;
        try {
            String str = new S4(c0808b5).a;
            LinkedHashMap linkedHashMap = this.i;
            c1068l7 = linkedHashMap.get(str);
            if (c1068l7 == null) {
                C1120n7 c1120n7 = this.a;
                String strA = new C1094m7(c1120n7.a, c1120n7.b, false).a(context, new S4(c0808b5));
                Z6 z6 = H5.c;
                z6.getClass();
                String str2 = c0808b5.b;
                if (str2 == null) {
                    str2 = "main";
                }
                String strConcat = "component-".concat(str2);
                C1291tn c1291tn = z6.c;
                C1016j7 c1016j7 = z6.a;
                C0810b7 c0810b7 = c1016j7.a;
                C0836c7 c0836c7 = c1016j7.b;
                Ka ka = new Ka(false);
                ka.a(112, new V4());
                C1367wn c1367wn = new C1367wn(strConcat, z6.b.a);
                c1291tn.getClass();
                c1068l7 = new C1068l7(context, strA, new C1317un(c0810b7, c0836c7, ka, c1367wn), PublicLogger.getAnonymousInstance());
                linkedHashMap.put(str, c1068l7);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (C1068l7) c1068l7;
    }

    public final synchronized Va d(Context context) {
        Hb hb;
        try {
            hb = this.f;
            if (hb == null) {
                Gb gb = this.e;
                if (gb == null) {
                    gb = new Gb("preferences", new Jl(f(context)), Fa.I.d.e());
                    this.e = gb;
                }
                hb = new Hb(gb);
                this.f = hb;
            }
        } catch (Throwable th) {
            throw th;
        }
        return hb;
    }

    public final synchronized Va e(Context context) {
        Gb gb;
        gb = this.e;
        if (gb == null) {
            gb = new Gb("preferences", new Jl(f(context)), Fa.I.d.e());
            this.e = gb;
        }
        return gb;
    }

    public final synchronized C1068l7 f(Context context) {
        C1068l7 c1068l7;
        try {
            c1068l7 = this.b;
            if (c1068l7 == null) {
                C1120n7 c1120n7 = this.a;
                String strA = new C1094m7(c1120n7.a, c1120n7.b, true).a(context, new C1339vk());
                Z6 z6 = H5.c;
                z6.getClass();
                HashMap map = new HashMap();
                map.put("preferences", E5.a);
                map.put("binary_data", C5.a);
                map.put("temp_cache", Jn.a);
                Iterator<ModuleServicesDatabase> it = Fa.I.p().a().iterator();
                while (it.hasNext()) {
                    for (TableDescription tableDescription : it.next().getTables()) {
                        map.put(tableDescription.getTableName(), tableDescription.getColumnNames());
                    }
                }
                C1291tn c1291tn = z6.c;
                C1016j7 c1016j7 = z6.a;
                C0965h7 c0965h7 = c1016j7.e;
                C0991i7 c0991i7 = c1016j7.f;
                Ka ka = new Ka(false);
                ka.a(114, new C1364wk());
                Iterator<ModuleServicesDatabase> it2 = Fa.I.p().a().iterator();
                while (it2.hasNext()) {
                    Iterator<TableDescription> it3 = it2.next().getTables().iterator();
                    while (it3.hasNext()) {
                        for (Map.Entry<Integer, DatabaseScript> entry : it3.next().getDatabaseProviderUpgradeScript().entrySet()) {
                            ka.a(entry.getKey(), entry.getValue());
                        }
                    }
                }
                C1367wn c1367wn = new C1367wn("service database", map);
                c1291tn.getClass();
                c1068l7 = new C1068l7(context, strA, new C1317un(c0965h7, c0991i7, ka, c1367wn), PublicLogger.getAnonymousInstance());
                this.b = c1068l7;
            }
        } catch (Throwable th) {
            throw th;
        }
        return c1068l7;
    }

    public final IBinaryDataHelper a(Context context) {
        C0909f3 c0909f3 = this.c;
        if (c0909f3 != null) {
            return c0909f3;
        }
        C0909f3 c0909f4 = new C0909f3(new Jl(f(context)), "binary_data");
        this.c = c0909f4;
        return c0909f4;
    }

    public final synchronized IBinaryDataHelper b(Context context) {
        C0935g3 c0935g3;
        c0935g3 = this.d;
        if (c0935g3 == null) {
            c0935g3 = new C0935g3(a(context));
            this.d = c0935g3;
        }
        return c0935g3;
    }

    public final synchronized IBinaryDataHelper c(Context context) {
        return a(context);
    }
}

package yads;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class l1 {
    public final q84 a;
    public final e4 b;
    public final d9 c;
    public final e40 d;

    public l1(q84 q84Var, e4 e4Var, d9 d9Var) {
        e40 e40Var = new e40();
        this.a = q84Var;
        this.b = e4Var;
        this.c = d9Var;
        this.d = e40Var;
    }

    public final void a(String str) {
        Object obj;
        h75 h75VarA = this.d.a(this.b, this.c);
        ix4 ix4Var = (ix4) jx4.a.getValue();
        if (ix4Var != null) {
            int iOrdinal = ix4Var.ordinal();
            if (iOrdinal == 0) {
                obj = PluginErrorDetails.Platform.FLUTTER;
            } else if (iOrdinal == 1) {
                obj = "react-native";
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return;
                }
                obj = "unity";
            }
        } else {
            obj = h75VarA.a.get("plugin_type");
        }
        e75 e75Var = e75.AD_LOADING_RESULT;
        LinkedHashMap linkedHashMapG = defpackage.n05.g(h75VarA.a, defpackage.n05.e(new defpackage.b36("activity_event", str), new defpackage.b36("plugin_type", obj)));
        this.a.a(new g75("activity_action", new LinkedHashMap(linkedHashMapG), h75VarA.b));
    }

    public final void b() {
        a("on_resume");
    }

    public final void a() {
        a("on_pause");
    }
}

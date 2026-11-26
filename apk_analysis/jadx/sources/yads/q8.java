package yads;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class q8 implements g85 {
    public final e4 a;
    public final u8 b;

    public q8(e4 e4Var) {
        u8 u8Var = new u8();
        this.a = e4Var;
        this.b = u8Var;
    }

    @Override // yads.g85
    public final Map a() {
        LinkedHashMap linkedHashMapF = defpackage.n05.f(new defpackage.b36("ad_type", this.a.a.b));
        String str = this.a.c.a;
        if (str != null) {
            linkedHashMapF.put("ad_unit_id", str);
        }
        linkedHashMapF.putAll(this.b.a(this.a.e).a);
        return linkedHashMapF;
    }
}

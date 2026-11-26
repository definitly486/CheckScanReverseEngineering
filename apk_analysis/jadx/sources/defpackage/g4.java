package defpackage;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class g4 extends gh4 implements nl3<Boolean, qq1> {
    public final /* synthetic */ c4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g4(c4 c4Var) {
        super(1);
        this.f = c4Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(Boolean bool) {
        Boolean bool2 = bool;
        bool2.getClass();
        if (!bool2.booleanValue()) {
            return new bq1(new Throwable("Account not locked by unknown reason"));
        }
        c4 c4Var = this.f;
        Map mapSingletonMap = Collections.singletonMap("user_id", Long.valueOf(c4Var.a.T0()));
        mapSingletonMap.getClass();
        Map mapSingletonMap2 = Collections.singletonMap("Delete", mapSingletonMap);
        mapSingletonMap2.getClass();
        new kd.a.d.C0224a("Account", mapSingletonMap2).a();
        return c4Var.b();
    }
}

package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class sv2 extends gh4 implements nl3<mr4, j59> {
    public final /* synthetic */ uv2 f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sv2(uv2 uv2Var, String str) {
        super(1);
        this.f = uv2Var;
        this.g = str;
    }

    @Override // defpackage.nl3
    public final j59 invoke(mr4 mr4Var) throws Exception {
        final mr4 mr4Var2 = mr4Var;
        final uv2 uv2Var = this.f;
        uv2Var.c.j0(true);
        if (!mr4Var2.a().isEmpty()) {
            hh4 hh4Var = uv2Var.f;
            if (hh4Var != null) {
                ip2.a(hh4Var);
            }
            List<oz6> listA = mr4Var2.a();
            nq5.a(listA, "source is null");
            wr5 wr5VarD = new jr5(listA).g(ne7.c).d(new f7(new ab1(1, uv2Var, this.g), 2));
            uk1 uk1Var = new uk1(new bn(uv2Var, 1), 1);
            vk1 vk1Var = new vk1(new rv2(uv2Var), 1);
            h6 h6Var = new h6() { // from class: qv2
                @Override // defpackage.h6
                public final void run() {
                    uv2 uv2Var2 = uv2Var;
                    Map mapSingletonMap = Collections.singletonMap("Percent", Integer.valueOf(uv2Var2.d / mr4Var2.a().size()));
                    mapSingletonMap.getClass();
                    Map mapSingletonMap2 = Collections.singletonMap("Sent Receipts", mapSingletonMap);
                    mapSingletonMap2.getClass();
                    new kd.t.a.C0291a("Nalog", mapSingletonMap2).a();
                    uv2Var2.a.b(uv2Var2.e).i(ne7.c).g(rm3.d, rm3.e);
                }
            };
            wr5VarD.getClass();
            hh4 hh4Var2 = new hh4(uk1Var, vk1Var, h6Var);
            wr5VarD.a(hh4Var2);
            uv2Var.f = hh4Var2;
        }
        return j59.a;
    }
}

package defpackage;

import com.google.gson.Gson;
import com.warefly.checkscan.data.db.CheckscanDatabase;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ih1 implements zg1 {
    public final CheckscanDatabase a;
    public final af1 b;

    public ih1(CheckscanDatabase checkscanDatabase, af1 af1Var) {
        this.a = checkscanDatabase;
        this.b = af1Var;
    }

    @Override // defpackage.zg1
    public final rp1 a(String str) {
        str.getClass();
        return this.b.a(str).c(this.a.f().d(str));
    }

    @Override // defpackage.zg1
    public final qp1 b(String str, String str2) {
        str.getClass();
        return this.a.f().b(str, str2);
    }

    @Override // defpackage.zg1
    public final hd3<kg1> c(long j) {
        return this.a.f().c(j);
    }

    @Override // defpackage.zg1
    public final mz7<Long> d(hv6 hv6Var) {
        return this.a.f().g(new kg1(0L, hv6Var.b(), "WAITING", new Gson().j(hv6Var), null));
    }

    @Override // defpackage.zg1
    public final qp1 e() {
        return this.a.f().h();
    }

    @Override // defpackage.zg1
    public final p08 f(String str) {
        mz7<kg1> mz7VarI = this.a.f().i(str);
        bh1 bh1Var = new bh1(iq0.h, 0);
        mz7VarI.getClass();
        return new p08(mz7VarI, bh1Var);
    }

    @Override // defpackage.zg1
    public final dh3 g() {
        gg3<List<kg1>> gg3VarL = this.a.f().l();
        ah1 ah1Var = new ah1(kq0.h, 0);
        gg3VarL.getClass();
        return new dh3(gg3VarL, ah1Var);
    }

    @Override // defpackage.zg1
    public final h08 h() {
        mz7<List<String>> mz7VarF = this.a.f().f();
        int i = 0;
        dh1 dh1Var = new dh1(new hh1(this, i), i);
        mz7VarF.getClass();
        return new h08(mz7VarF, dh1Var);
    }

    @Override // defpackage.zg1
    public final p08 i(String str) {
        mz7<kg1> mz7VarI = this.a.f().i(str);
        ch1 ch1Var = new ch1(jq0.h, 0);
        mz7VarI.getClass();
        return new p08(mz7VarI, ch1Var);
    }

    @Override // defpackage.zg1
    public final qp1 j(kg1 kg1Var) {
        return this.a.f().e(kg1Var);
    }

    @Override // defpackage.zg1
    public final mz7<List<kg1>> k() {
        return this.a.f().n();
    }
}

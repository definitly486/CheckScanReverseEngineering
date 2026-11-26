package defpackage;

import com.warefly.checkscan.profile.domain.entities.PromocodeBlock;

/* JADX INFO: loaded from: classes5.dex */
public final class qm6 implements om6 {
    public final mk6 a;
    public final k5 b;

    public qm6(mk6 mk6Var, k5 k5Var) {
        this.a = mk6Var;
        this.b = k5Var;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:46:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:49:0x0103  */
    /* JADX WARN: Code duplicated, block: B:50:0x0133  */
    /* JADX WARN: Code duplicated, block: B:53:0x0167  */
    /* JADX WARN: Code duplicated, block: B:54:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:57:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:58:0x01de  */
    /* JADX WARN: Code duplicated, block: B:61:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:63:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:66:0x0205  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // defpackage.om6
    public final Object a(f02 f02Var) {
        pm6 pm6Var;
        rm6 rm6Var;
        rm6.n nVarE;
        vm6 vm6Var;
        rm6.n nVarE2;
        vm6 vm6Var2;
        kw2 kw2Var;
        hl6.a aVar;
        rm6.f fVarC;
        String strA;
        zp6 zp6VarL;
        rl6.a aVar2;
        String strB;
        rm6.i iVarB;
        rm6.b bVarA;
        if (f02Var instanceof pm6) {
            pm6Var = (pm6) f02Var;
            int i = pm6Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                pm6Var.o = i - Integer.MIN_VALUE;
            } else {
                pm6Var = new pm6(this, f02Var);
            }
        } else {
            pm6Var = new pm6(this, f02Var);
        }
        Object objA = pm6Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = pm6Var.o;
        rl6.a aVar3 = null;
        if (i2 == 0) {
            r57.b(objA);
            pm6Var.o = 1;
            objA = this.a.a(pm6Var);
            if (objA != a32Var) {
            }
            return a32Var;
        }
        if (i2 == 1) {
            r57.b(objA);
        } else {
            if (i2 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            rm6Var = pm6Var.l;
            r57.b(objA);
        }
        ba9 ba9Var = (ba9) objA;
        rm6Var.getClass();
        nVarE = rm6Var.e();
        if (nVarE != null || (bVarA = nVarE.a()) == null) {
            vm6Var = null;
        } else {
            vm6Var = new vm6(bVarA.c(), bVarA.e(), bVarA.d(), null, rm6Var.d().b().c(), bVarA.a() != null ? new vm6.a(bVarA.a().b(), bVarA.a().c(), bVarA.a().a()) : null, bVarA.b());
        }
        nVarE2 = rm6Var.e();
        if (nVarE2 != null || (iVarB = nVarE2.b()) == null) {
            vm6Var2 = null;
        } else {
            String strC = iVarB.c();
            String strE = iVarB.e();
            String strD = iVarB.d();
            rm6.a aVarA = iVarB.a();
            String strA2 = aVarA != null ? aVarA.a() : null;
            rm6.a aVarA2 = iVarB.a();
            vm6Var2 = new vm6(strC, strE, strD, strA2, aVarA2 != null ? aVarA2.b() : null, null, iVarB.b());
        }
        if (rm6Var.a() != null) {
            kw2Var = new kw2(rm6Var.a().c(), rm6Var.a().d(), rm6Var.a().b(), rm6Var.a().a(), rm6Var.a().e());
        } else {
            kw2Var = null;
        }
        String strA3 = rm6Var.d().a().a();
        String strE2 = rm6Var.d().e();
        String strD2 = rm6Var.d().d();
        String strC2 = rm6Var.d().c();
        if (rm6Var.d().b().a() != null) {
            aVar = new hl6.a(rm6Var.d().b().a().b(), rm6Var.d().b().a().c(), rm6Var.d().b().a().a(), rm6Var.d().b().b());
        } else {
            aVar = null;
        }
        hl6 hl6Var = new hl6(strA3, strD2, strC2, strE2, aVar, vm6Var, vm6Var2, kw2Var);
        String strD3 = rm6Var.c().d();
        String strA4 = rm6Var.c().a();
        String strA5 = rm6Var.c().b().a();
        fVarC = rm6Var.c().c();
        if (fVarC != null) {
            strA = fVarC.a();
        } else {
            strA = null;
        }
        pl6 pl6Var = new pl6(strD3, strA4, strA5, strA, false);
        zp6VarL = ba9Var.l();
        if (zp6VarL != null) {
            String strD4 = zp6VarL.d();
            strB = zp6VarL.b();
            if (strB == null) {
                strB = "";
            }
            aVar2 = new rl6.a(new PromocodeBlock(strD4, strB));
            if (!zp6VarL.a()) {
                aVar3 = aVar2;
            }
        }
        return u96.i(hl6Var, pl6Var, new em6(yr.G(new rl6[]{aVar3, rl6.b.c, rl6.c.c, rl6.d.c, rl6.e.c, rl6.f.c})), new km6(rm6Var.b().c().a(), rm6Var.b().c().b()), new yl6(rm6Var.b().b().a()), new dl6(rm6Var.b().a().a()));
        rm6 rm6Var2 = (rm6) objA;
        pm6Var.l = rm6Var2;
        pm6Var.o = 2;
        Object objD = this.b.d(pm6Var);
        if (objD != a32Var) {
            objA = objD;
            rm6Var = rm6Var2;
            ba9 ba9Var2 = (ba9) objA;
            rm6Var.getClass();
            nVarE = rm6Var.e();
            if (nVarE != null) {
                vm6Var = null;
            } else {
                vm6Var = null;
            }
            nVarE2 = rm6Var.e();
            if (nVarE2 != null) {
                vm6Var2 = null;
            } else {
                vm6Var2 = null;
            }
            if (rm6Var.a() != null) {
                kw2Var = new kw2(rm6Var.a().c(), rm6Var.a().d(), rm6Var.a().b(), rm6Var.a().a(), rm6Var.a().e());
            } else {
                kw2Var = null;
            }
            String strA6 = rm6Var.d().a().a();
            String strE3 = rm6Var.d().e();
            String strD5 = rm6Var.d().d();
            String strC3 = rm6Var.d().c();
            if (rm6Var.d().b().a() != null) {
                aVar = new hl6.a(rm6Var.d().b().a().b(), rm6Var.d().b().a().c(), rm6Var.d().b().a().a(), rm6Var.d().b().b());
            } else {
                aVar = null;
            }
            hl6 hl6Var2 = new hl6(strA6, strD5, strC3, strE3, aVar, vm6Var, vm6Var2, kw2Var);
            String strD6 = rm6Var.c().d();
            String strA7 = rm6Var.c().a();
            String strA8 = rm6Var.c().b().a();
            fVarC = rm6Var.c().c();
            if (fVarC != null) {
                strA = fVarC.a();
            } else {
                strA = null;
            }
            pl6 pl6Var2 = new pl6(strD6, strA7, strA8, strA, false);
            zp6VarL = ba9Var2.l();
            if (zp6VarL != null) {
                String strD7 = zp6VarL.d();
                strB = zp6VarL.b();
                if (strB == null) {
                    strB = "";
                }
                aVar2 = new rl6.a(new PromocodeBlock(strD7, strB));
                if (!zp6VarL.a()) {
                    aVar3 = aVar2;
                }
            }
            return u96.i(hl6Var2, pl6Var2, new em6(yr.G(new rl6[]{aVar3, rl6.b.c, rl6.c.c, rl6.d.c, rl6.e.c, rl6.f.c})), new km6(rm6Var.b().c().a(), rm6Var.b().c().b()), new yl6(rm6Var.b().b().a()), new dl6(rm6Var.b().a().a()));
        }
        return a32Var;
    }
}

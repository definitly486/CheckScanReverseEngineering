package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s68;

/* JADX INFO: loaded from: classes6.dex */
public final class bk4 extends pg8 implements defpackage.bm3 {
    public defpackage.mk2 b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ Context e;
    public final /* synthetic */ ye4 f;
    public final /* synthetic */ af4 g;
    public final /* synthetic */ ck4 h;
    public final /* synthetic */ e4 i;
    public final /* synthetic */ ee4 j;
    public final /* synthetic */ jd0 k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk4(Context context, ye4 ye4Var, af4 af4Var, ck4 ck4Var, e4 e4Var, ee4 ee4Var, jd0 jd0Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = context;
        this.f = ye4Var;
        this.g = af4Var;
        this.h = ck4Var;
        this.i = e4Var;
        this.j = ee4Var;
        this.k = jd0Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        bk4 bk4Var = new bk4(this.e, this.f, this.g, this.h, this.i, this.j, this.k, e02Var);
        bk4Var.d = obj;
        return bk4Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((bk4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0077  */
    /* JADX WARN: Code duplicated, block: B:21:0x007f  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.mk2 mk2VarA;
        b05 b05Var;
        b05 b05Var2;
        ee4 ee4Var;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.c;
        if (i == 0) {
            r57.b(obj);
            defpackage.y22 y22Var = (defpackage.y22) this.d;
            b05 b05Var3 = new b05(this.e);
            mk2VarA = defpackage.av0.a(y22Var, null, null, new ak4(this.h, this.i, this.e, this.j, b05Var3, this.k, null), 3);
            s68 s68VarC = defpackage.av0.c(y22Var, null, null, new zj4(this.h, this.j, null), 3);
            this.d = b05Var3;
            this.b = mk2VarA;
            this.c = 1;
            if (s68VarC.e0(this) != a32Var) {
                b05Var = b05Var3;
            }
            return a32Var;
        }
        if (i == 1) {
            mk2VarA = this.b;
            b05Var = (b05) this.d;
            r57.b(obj);
        } else {
            if (i != 2) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            b05 b05Var4 = (b05) this.d;
            r57.b(obj);
            b05Var2 = b05Var4;
        }
        ee4Var = (ee4) obj;
        if (ee4Var == null) {
            this.f.a(o8.w);
        } else {
            af4 af4Var = this.g;
            af4Var.b.a(s5.RESOURCES_LOADING);
            bf4 bf4Var = af4Var.c;
            df4 df4Var = bf4Var.g;
            defpackage.av0.c(df4Var.d, null, null, new ze4(df4Var, ee4Var, b05Var2, bf4Var, af4Var, null), 3);
        }
        return j59.a;
        this.d = b05Var;
        this.b = null;
        this.c = 2;
        obj = mk2VarA.Z(this);
        if (obj != a32Var) {
            b05Var2 = b05Var;
            ee4Var = (ee4) obj;
            if (ee4Var == null) {
                this.f.a(o8.w);
            } else {
                af4 af4Var2 = this.g;
                af4Var2.b.a(s5.RESOURCES_LOADING);
                bf4 bf4Var2 = af4Var2.c;
                df4 df4Var2 = bf4Var2.g;
                defpackage.av0.c(df4Var2.d, null, null, new ze4(df4Var2, ee4Var, b05Var2, bf4Var2, af4Var2, null), 3);
            }
            return j59.a;
        }
        return a32Var;
    }
}

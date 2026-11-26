package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s68;

/* JADX INFO: loaded from: classes6.dex */
public final class wj4 extends pg8 implements defpackage.bm3 {
    public defpackage.mk2 b;
    public int c;
    public /* synthetic */ Object d;
    public final /* synthetic */ e4 e;
    public final /* synthetic */ xj4 f;
    public final /* synthetic */ Context g;
    public final /* synthetic */ ee4 h;
    public final /* synthetic */ jd0 i;
    public final /* synthetic */ b05 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wj4(e4 e4Var, xj4 xj4Var, Context context, ee4 ee4Var, jd0 jd0Var, b05 b05Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.e = e4Var;
        this.f = xj4Var;
        this.g = context;
        this.h = ee4Var;
        this.i = jd0Var;
        this.j = b05Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        wj4 wj4Var = new wj4(this.e, this.f, this.g, this.h, this.i, this.j, e02Var);
        wj4Var.d = obj;
        return wj4Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((wj4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0096 A[RETURN] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.mb4 mb4VarC;
        defpackage.mk2 mk2Var;
        Object objZ;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.c;
        if (i != 0) {
            if (i == 1) {
                mk2Var = this.b;
                mb4VarC = (defpackage.mb4) this.d;
                r57.b(obj);
            } else {
                if (i != 2) {
                    if (i == 3) {
                        r57.b(obj);
                        return obj;
                    }
                    if (i == 4) {
                        r57.b(obj);
                        return obj;
                    }
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mk2Var = (defpackage.mk2) this.d;
                r57.b(obj);
            }
            this.d = null;
            this.c = 3;
            objZ = mk2Var.Z(this);
            if (objZ != a32Var) {
                return a32Var;
            }
            return objZ;
        }
        r57.b(obj);
        defpackage.y22 y22Var = (defpackage.y22) this.d;
        boolean z = this.e.m;
        xj4 xj4Var = this.f;
        if (z) {
            s68 s68VarC = defpackage.av0.c(y22Var, null, null, new tj4(xj4Var, this.h, this.j, null), 3);
            mb4VarC = defpackage.av0.c(y22Var, null, null, new vj4(this.f, this.g, this.h, null), 3);
            defpackage.nk2 nk2VarA = defpackage.av0.a(y22Var, null, null, new uj4(this.f, this.g, this.h, this.i, null), 3);
            this.d = mb4VarC;
            this.b = nk2VarA;
            this.c = 1;
            if (s68VarC.e0(this) != a32Var) {
                mk2Var = nk2VarA;
            }
        } else {
            il4 il4Var = xj4Var.c;
            Context context = this.g;
            ee4 ee4Var = this.h;
            jd0 jd0Var = this.i;
            this.c = 4;
            Object objA = il4Var.a(false, context, ee4Var, jd0Var, (defpackage.f02) this);
            if (objA != a32Var) {
                return objA;
            }
        }
        return a32Var;
        this.d = mk2Var;
        this.b = null;
        this.c = 2;
        if (mb4VarC.e0(this) != a32Var) {
            this.d = null;
            this.c = 3;
            objZ = mk2Var.Z(this);
            if (objZ != a32Var) {
                return objZ;
            }
        }
        return a32Var;
    }
}

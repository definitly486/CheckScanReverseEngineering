package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bz4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ fz4 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ n70 e;
    public final /* synthetic */ sl5 f;
    public final /* synthetic */ List g;
    public final /* synthetic */ long h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bz4(long j, Context context, List list, defpackage.e02 e02Var, n70 n70Var, fz4 fz4Var, sl5 sl5Var) {
        super(2, e02Var);
        this.c = fz4Var;
        this.d = context;
        this.e = n70Var;
        this.f = sl5Var;
        this.g = list;
        this.h = j;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        fz4 fz4Var = this.c;
        Context context = this.d;
        n70 n70Var = this.e;
        sl5 sl5Var = this.f;
        return new bz4(this.h, context, this.g, e02Var, n70Var, fz4Var, sl5Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((bz4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        fz4 fz4Var = this.c;
        Context context = this.d;
        n70 n70Var = this.e;
        sl5 sl5Var = this.f;
        List list = this.g;
        long j = this.h;
        this.b = 1;
        Object objA = fz4.a(fz4Var, context, n70Var, sl5Var, list, j, this);
        return objA == a32Var ? a32Var : objA;
    }
}

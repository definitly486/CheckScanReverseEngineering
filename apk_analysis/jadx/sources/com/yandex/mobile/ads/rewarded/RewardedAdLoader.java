package com.yandex.mobile.ads.rewarded;

import android.content.Context;
import com.yandex.mobile.ads.common.AdRequest;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.me0;
import defpackage.r57;
import yads.ao6;
import yads.do6;
import yads.ha5;
import yads.ia5;
import yads.im6;
import yads.j70;
import yads.ja5;
import yads.k70;
import yads.km6;
import yads.l70;
import yads.m4;
import yads.n8;
import yads.x80;

/* JADX INFO: loaded from: classes6.dex */
public final class RewardedAdLoader {
    private final x80 a;
    private final im6 b = new im6();
    private final ha5 c = new ha5();

    public RewardedAdLoader(Context context) {
        this.a = new x80(context, new do6(context));
    }

    public final void cancelLoading() {
        this.a.a.a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object loadAd(AdRequest adRequest, e02 e02Var) {
        ia5 ia5Var;
        if (e02Var instanceof ia5) {
            ia5Var = (ia5) e02Var;
            int i = ia5Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ia5Var.d = i - Integer.MIN_VALUE;
            } else {
                ia5Var = new ia5(this, e02Var);
            }
        } else {
            ia5Var = new ia5(this, e02Var);
        }
        Object objA = ia5Var.b;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = ia5Var.d;
        if (i2 == 0) {
            r57.b(objA);
            n8 n8VarA = this.b.a(adRequest);
            x80 x80Var = this.a;
            ia5Var.d = 1;
            objA = x80Var.a.a(n8VarA, ia5Var);
            if (objA == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objA);
        }
        l70 l70Var = (l70) objA;
        this.c.getClass();
        if (l70Var instanceof k70) {
            return new RewardedAdLoadResult.Success(new ao6((ja5) ((k70) l70Var).a));
        }
        if (l70Var instanceof j70) {
            return new RewardedAdLoadResult.Failure(km6.a((m4) ((j70) l70Var).a));
        }
        me0.e();
        return null;
    }
}

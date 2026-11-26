package com.warefly.checkscan.personalform.presentation.form.presenter;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.w66;
import defpackage.y22;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.presentation.form.presenter.PersonalDataFormPresenter$getFirstClosestRegions$1$1", f = "PersonalDataFormPresenter.kt", l = {153}, m = "invokeSuspend")
public final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ PersonalDataFormPresenter m;
    public final /* synthetic */ int n;
    public final /* synthetic */ String o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(PersonalDataFormPresenter personalDataFormPresenter, int i, String str, e02<? super a> e02Var) {
        super(2, e02Var);
        this.m = personalDataFormPresenter;
        this.n = i;
        this.o = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new a(this.m, this.n, this.o, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((a) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            w66 w66Var = this.m.interactor;
            this.l = 1;
            if (w66Var.g(this.n, this.o, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}

package com.warefly.checkscan.presentation.upridWeb.presenter;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.zl2;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.upridWeb.presenter.UpridWebPresenter$sendLink$1$1$1", f = "UpridWebPresenter.kt", l = {35}, m = "invokeSuspend")
public final class a extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public final /* synthetic */ UpridWebPresenter m;
    public final /* synthetic */ String n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(UpridWebPresenter upridWebPresenter, String str, e02<? super a> e02Var) {
        super(2, e02Var);
        this.m = upridWebPresenter;
        this.n = str;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new a(this.m, this.n, e02Var);
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
            zl2 zl2Var = this.m.desktopInteractor;
            zl2.a.C0373a c0373a = new zl2.a.C0373a(this.n);
            this.l = 1;
            if (zl2Var.a(c0373a, this) == a32Var) {
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

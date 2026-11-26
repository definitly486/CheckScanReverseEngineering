package com.warefly.checkscan.presentation.balance.promocodes.presenter;

import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter$setUpPaginator$1$1", f = "SelectPromocodePresenter.kt", l = {}, m = "invokeSuspend")
public final class a extends pg8 implements bm3<j59, e02<? super j59>, Object> {
    public final /* synthetic */ SelectPromocodePresenter l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(SelectPromocodePresenter selectPromocodePresenter, e02<? super a> e02Var) {
        super(2, e02Var);
        this.l = selectPromocodePresenter;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new a(this.l, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(j59 j59Var, e02<? super j59> e02Var) {
        return ((a) create(j59Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        SelectPromocodeView selectPromocodeView = (SelectPromocodeView) this.l.getViewState();
        if (selectPromocodeView != null) {
            selectPromocodeView.showErrorLoading(false);
        }
        return j59.a;
    }
}

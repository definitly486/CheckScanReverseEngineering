package com.warefly.checkscan.presentation.balance.promocodes.presenter;

import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView;
import defpackage.a32;
import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter$setUpPaginator$1$2", f = "SelectPromocodePresenter.kt", l = {}, m = "invokeSuspend")
public final class b extends pg8 implements dm3<id3<? super j59>, Throwable, e02<? super j59>, Object> {
    public final /* synthetic */ SelectPromocodePresenter l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(SelectPromocodePresenter selectPromocodePresenter, e02<? super b> e02Var) {
        super(3, e02Var);
        this.l = selectPromocodePresenter;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<? super j59> id3Var, Throwable th, e02<? super j59> e02Var) {
        return new b(this.l, e02Var).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        SelectPromocodeView selectPromocodeView = (SelectPromocodeView) this.l.getViewState();
        if (selectPromocodeView != null) {
            selectPromocodeView.showErrorLoading(true);
        }
        return j59.a;
    }
}

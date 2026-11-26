package com.warefly.checkscan.products.presentation.main.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.products.presentation.main.view.MainProductsView;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.r86;

/* JADX INFO: loaded from: classes5.dex */
public final class MainProductsPresenter extends BasePresenter<MainProductsView> {
    private final r86 placeholderState;

    @bd2(c = "com.warefly.checkscan.products.presentation.main.presenter.MainProductsPresenter$onFirstViewAttach$1", f = "MainProductsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        public /* synthetic */ boolean l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = MainProductsPresenter.this.new a(e02Var);
            aVar.l = ((Boolean) obj).booleanValue();
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(Boolean bool, e02<? super j59> e02Var) {
            Boolean bool2 = bool;
            bool2.booleanValue();
            return ((a) create(bool2, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            boolean z = this.l;
            MainProductsView mainProductsView = (MainProductsView) MainProductsPresenter.this.getViewState();
            if (mainProductsView != null) {
                mainProductsView.showPlaceholder(z);
            }
            return j59.a;
        }
    }

    public MainProductsPresenter(r86 r86Var) {
        r86Var.getClass();
        this.placeholderState = r86Var;
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        launchInPresenter(new df3(bf3.b(this.placeholderState.a), new a(null)));
    }
}

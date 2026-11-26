package com.warefly.checkscan.presentation.balance.promocodes.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b40;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.de3;
import defpackage.df3;
import defpackage.e02;
import defpackage.em7;
import defpackage.fr6;
import defpackage.gh4;
import defpackage.gm7;
import defpackage.i57;
import defpackage.j59;
import defpackage.jm7;
import defpackage.kd;
import defpackage.km7;
import defpackage.lm7;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.q40;
import defpackage.r57;
import defpackage.se3;
import defpackage.tf3;
import defpackage.ud;
import defpackage.uf3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SelectPromocodePresenter extends BasePresenter<SelectPromocodeView> implements gm7.a, lm7 {
    private final b40 balanceInteractor;
    private final uf3 flowRouter;
    private final int promocodesId;
    private tf3<fr6> promocodesPaginator;

    public final class a implements tf3.d<fr6> {
        public a() {
        }

        @Override // tf3.d
        public final void a(Throwable th) {
            th.getClass();
        }

        @Override // tf3.d
        public final void b() {
        }

        @Override // tf3.d
        public final void showData(List list) {
            SelectPromocodeView selectPromocodeView;
            list.getClass();
            SelectPromocodePresenter selectPromocodePresenter = SelectPromocodePresenter.this;
            SelectPromocodeView selectPromocodeView2 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
            if (selectPromocodeView2 != null) {
                selectPromocodeView2.showErrorLoading(false);
            }
            if (list.isEmpty() || (selectPromocodeView = (SelectPromocodeView) selectPromocodePresenter.getViewState()) == null) {
                return;
            }
            selectPromocodeView.showPromocodes(list);
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter$onConfirmExchangeClicked$1", f = "SelectPromocodePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class b extends pg8 implements bm3<i57<? extends jm7>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public b(e02<? super b> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            b bVar = SelectPromocodePresenter.this.new b(e02Var);
            bVar.l = obj;
            return bVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends jm7> i57Var, e02<? super j59> e02Var) {
            return ((b) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            SelectPromocodeView selectPromocodeView;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            SelectPromocodePresenter selectPromocodePresenter = SelectPromocodePresenter.this;
            SelectPromocodeView selectPromocodeView2 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
            if (selectPromocodeView2 != null) {
                selectPromocodeView2.showLoading(false);
            }
            if (i57Var instanceof i57.a) {
                SelectPromocodeView selectPromocodeView3 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
                if (selectPromocodeView3 != null) {
                    selectPromocodeView3.showErrorSheet(jm7.a.e);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                SelectPromocodeView selectPromocodeView4 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
                if (selectPromocodeView4 != null) {
                    selectPromocodeView4.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                jm7 jm7Var = (jm7) ((i57.c) i57Var).a;
                if (jm7Var instanceof jm7.a) {
                    SelectPromocodeView selectPromocodeView5 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
                    if (selectPromocodeView5 != null) {
                        selectPromocodeView5.showErrorSheet((jm7.a) jm7Var);
                    }
                } else if ((jm7Var instanceof jm7.b) && (selectPromocodeView = (SelectPromocodeView) selectPromocodePresenter.getViewState()) != null) {
                    selectPromocodeView.showSuccessSheet((jm7.b) jm7Var);
                }
            }
            return j59.a;
        }
    }

    @bd2(c = "com.warefly.checkscan.presentation.balance.promocodes.presenter.SelectPromocodePresenter$onSelectPromocodeClicked$1", f = "SelectPromocodePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class c extends pg8 implements bm3<i57<? extends km7>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;
        public final /* synthetic */ int n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i, e02<? super c> e02Var) {
            super(2, e02Var);
            this.n = i;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            c cVar = SelectPromocodePresenter.this.new c(this.n, e02Var);
            cVar.l = obj;
            return cVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends km7> i57Var, e02<? super j59> e02Var) {
            return ((c) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            SelectPromocodePresenter selectPromocodePresenter = SelectPromocodePresenter.this;
            SelectPromocodeView selectPromocodeView = (SelectPromocodeView) selectPromocodePresenter.getViewState();
            if (selectPromocodeView != null) {
                selectPromocodeView.showLoading(false);
            }
            if (i57Var instanceof i57.a) {
                SelectPromocodeView selectPromocodeView2 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
                if (selectPromocodeView2 != null) {
                    selectPromocodeView2.showErrorSheet(jm7.a.e);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                SelectPromocodeView selectPromocodeView3 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
                if (selectPromocodeView3 != null) {
                    selectPromocodeView3.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                new kd.k0.b(ud.c(this.n, "Click_promocode")).c();
                SelectPromocodeView selectPromocodeView4 = (SelectPromocodeView) selectPromocodePresenter.getViewState();
                if (selectPromocodeView4 != null) {
                    selectPromocodeView4.showSelectingSheet((km7) ((i57.c) i57Var).a);
                }
            }
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<Integer, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            int iIntValue = num.intValue();
            SelectPromocodePresenter selectPromocodePresenter = SelectPromocodePresenter.this;
            b40 b40Var = selectPromocodePresenter.balanceInteractor;
            selectPromocodePresenter.launchInPresenter(new de3(new df3(se3.a(b40Var.a.z(selectPromocodePresenter.promocodesId, iIntValue), new q40(b40Var, null)), new com.warefly.checkscan.presentation.balance.promocodes.presenter.a(selectPromocodePresenter, null)), new com.warefly.checkscan.presentation.balance.promocodes.presenter.b(selectPromocodePresenter, null)));
            return j59.a;
        }
    }

    public SelectPromocodePresenter(int i, b40 b40Var, uf3 uf3Var) {
        b40Var.getClass();
        uf3Var.getClass();
        this.promocodesId = i;
        this.balanceInteractor = b40Var;
        this.flowRouter = uf3Var;
    }

    private final void setUpPaginator() {
        tf3<fr6> tf3Var = new tf3<>(new d(), getPresenterScope(), new a(), bf3.b(this.balanceInteractor.h));
        tf3Var.b();
        this.promocodesPaginator = tf3Var;
    }

    public final void loadNextPage() {
        tf3<fr6> tf3Var = this.promocodesPaginator;
        if (tf3Var != null) {
            tf3Var.a();
        }
    }

    public final void onBackPressed() {
        this.flowRouter.c();
    }

    @Override // defpackage.lm7
    public void onConfirmExchangeClicked(int i) {
        launchInPresenter(new df3(this.balanceInteractor.a.f(i), new b(null)));
    }

    @Override // defpackage.lm7
    public void onExchangeClicked(em7 em7Var) {
        em7Var.getClass();
        SelectPromocodeView selectPromocodeView = (SelectPromocodeView) getViewState();
        if (selectPromocodeView != null) {
            selectPromocodeView.showApproveSheet(em7Var);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new kd.k0.a("Click_block").c();
        setUpPaginator();
    }

    @Override // defpackage.lm7
    public void onOrdClicked(b06 b06Var) {
        b06Var.getClass();
        SelectPromocodeView selectPromocodeView = (SelectPromocodeView) getViewState();
        if (selectPromocodeView != null) {
            selectPromocodeView.showOrdDialog(b06Var);
        }
    }

    @Override // defpackage.lm7
    public void onPromocodeCopyClicked(String str) {
        str.getClass();
        SelectPromocodeView selectPromocodeView = (SelectPromocodeView) getViewState();
        if (selectPromocodeView != null) {
            selectPromocodeView.copyPromocode(str);
        }
    }

    @Override // defpackage.lm7
    public void onPromocodeUseClicked(String str, String str2) {
        SelectPromocodeView selectPromocodeView;
        str2.getClass();
        if (str != null && (selectPromocodeView = (SelectPromocodeView) getViewState()) != null) {
            selectPromocodeView.openUrl(str);
        }
        SelectPromocodeView selectPromocodeView2 = (SelectPromocodeView) getViewState();
        if (selectPromocodeView2 != null) {
            selectPromocodeView2.copyPromocode(str2);
        }
    }

    @Override // gm7.a
    public void onSelectPromocodeClicked(int i) {
        launchInPresenter(new df3(this.balanceInteractor.a.y(i), new c(i, null)));
    }

    public final void refreshPromocodes() {
        tf3<fr6> tf3Var = this.promocodesPaginator;
        if (tf3Var != null) {
            tf3Var.b();
        }
    }
}

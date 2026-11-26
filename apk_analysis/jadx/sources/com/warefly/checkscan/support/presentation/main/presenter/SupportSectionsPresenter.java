package com.warefly.checkscan.support.presentation.main.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.support.presentation.main.view.SupportSectionsView;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ag8;
import defpackage.al7;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.i57;
import defpackage.j59;
import defpackage.kn1;
import defpackage.kr7;
import defpackage.l83;
import defpackage.m83;
import defpackage.pg8;
import defpackage.qf8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.s57;
import defpackage.tb7;
import defpackage.u96;
import defpackage.wf8;
import defpackage.yf8;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportSectionsPresenter extends BasePresenter<SupportSectionsView> implements yf8.a {
    private final m83 fetchSupportSectionsUseCase;
    private final kr7 setSupportQuestionsUseCase;
    private final qf8 supportRouter;

    @bd2(c = "com.warefly.checkscan.support.presentation.main.presenter.SupportSectionsPresenter$loadContent$1", f = "SupportSectionsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<i57<? extends List<? extends wf8>>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = SupportSectionsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(i57<? extends List<? extends wf8>> i57Var, e02<? super j59> e02Var) {
            return ((a) create(i57Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            i57 i57Var = (i57) this.l;
            boolean z = i57Var instanceof i57.a;
            SupportSectionsPresenter supportSectionsPresenter = SupportSectionsPresenter.this;
            if (z) {
                SupportSectionsView supportSectionsView = (SupportSectionsView) supportSectionsPresenter.getViewState();
                if (supportSectionsView != null) {
                    supportSectionsView.showError(true);
                }
                SupportSectionsView supportSectionsView2 = (SupportSectionsView) supportSectionsPresenter.getViewState();
                if (supportSectionsView2 != null) {
                    supportSectionsView2.showLoading(false);
                }
            } else if (aa4.e(i57Var, i57.b.a)) {
                SupportSectionsView supportSectionsView3 = (SupportSectionsView) supportSectionsPresenter.getViewState();
                if (supportSectionsView3 != null) {
                    supportSectionsView3.showError(false);
                }
                SupportSectionsView supportSectionsView4 = (SupportSectionsView) supportSectionsPresenter.getViewState();
                if (supportSectionsView4 != null) {
                    supportSectionsView4.showLoading(true);
                }
            } else if (i57Var instanceof i57.c) {
                SupportSectionsView supportSectionsView5 = (SupportSectionsView) supportSectionsPresenter.getViewState();
                if (supportSectionsView5 != null) {
                    supportSectionsView5.showError(false);
                }
                SupportSectionsView supportSectionsView6 = (SupportSectionsView) supportSectionsPresenter.getViewState();
                if (supportSectionsView6 != null) {
                    supportSectionsView6.showLoading(false);
                }
                SupportSectionsView supportSectionsView7 = (SupportSectionsView) supportSectionsPresenter.getViewState();
                if (supportSectionsView7 != null) {
                    List listH = u96.h(al7.a);
                    Iterable<wf8> iterable = (Iterable) ((i57.c) i57Var).a;
                    ArrayList arrayList = new ArrayList(kn1.q(iterable, 10));
                    for (wf8 wf8Var : iterable) {
                        wf8Var.getClass();
                        arrayList.add(new ag8(wf8Var));
                    }
                    supportSectionsView7.showContent(qn1.h0(arrayList, listH));
                }
            }
            return j59.a;
        }
    }

    public SupportSectionsPresenter(m83 m83Var, kr7 kr7Var, qf8 qf8Var) {
        m83Var.getClass();
        kr7Var.getClass();
        qf8Var.getClass();
        this.fetchSupportSectionsUseCase = m83Var;
        this.setSupportQuestionsUseCase = kr7Var;
        this.supportRouter = qf8Var;
    }

    public final void loadContent() {
        m83 m83Var = this.fetchSupportSectionsUseCase;
        m83Var.getClass();
        launchInPresenter(new df3(s57.a(new tb7(new l83(m83Var, null))), new a(null)));
    }

    public final void onBackPressed() {
        this.supportRouter.a();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        loadContent();
    }

    @Override // yf8.a
    public void onSectionClicked(ag8 ag8Var) {
        ag8Var.getClass();
        kr7 kr7Var = this.setSupportQuestionsUseCase;
        wf8 wf8Var = ag8Var.a;
        ArrayList arrayList = wf8Var.c;
        kr7Var.getClass();
        kr7Var.a.e(arrayList);
        this.supportRouter.b(wf8Var.b);
    }
}

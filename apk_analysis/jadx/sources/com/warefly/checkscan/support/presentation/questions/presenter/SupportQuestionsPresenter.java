package com.warefly.checkscan.support.presentation.questions.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsView;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.ff8;
import defpackage.j59;
import defpackage.jf8;
import defpackage.k83;
import defpackage.kn1;
import defpackage.mr7;
import defpackage.ox2;
import defpackage.pg8;
import defpackage.px;
import defpackage.pz3;
import defpackage.qf8;
import defpackage.r57;
import defpackage.sv6;
import defpackage.xg5;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class SupportQuestionsPresenter extends BasePresenter<SupportQuestionsView> implements sv6 {
    private final qf8 router;
    private final xg5<List<jf8>> supportQuestions;
    private final String toolbarText;

    @bd2(c = "com.warefly.checkscan.support.presentation.questions.presenter.SupportQuestionsPresenter$onFirstViewAttach$1", f = "SupportQuestionsPresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a extends pg8 implements bm3<List<? extends jf8>, e02<? super j59>, Object> {
        public /* synthetic */ Object l;

        public a(e02<? super a> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            a aVar = SupportQuestionsPresenter.this.new a(e02Var);
            aVar.l = obj;
            return aVar;
        }

        @Override // defpackage.bm3
        public final Object invoke(List<? extends jf8> list, e02<? super j59> e02Var) {
            return ((a) create(list, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            List<? extends pz3> list = (List) this.l;
            SupportQuestionsView supportQuestionsView = (SupportQuestionsView) SupportQuestionsPresenter.this.getViewState();
            if (supportQuestionsView != null) {
                supportQuestionsView.showContent(list);
            }
            return j59.a;
        }
    }

    public SupportQuestionsPresenter(k83 k83Var, String str, qf8 qf8Var) {
        k83Var.getClass();
        qf8Var.getClass();
        this.toolbarText = str;
        this.router = qf8Var;
        List<ff8> listA = k83Var.a.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        for (ff8 ff8Var : listA) {
            ff8Var.getClass();
            arrayList.add(new jf8(ff8Var, true, ox2.b));
        }
        this.supportQuestions = px.a(arrayList);
    }

    public final void onBackClicked() {
        this.router.a();
    }

    @Override // zd8.a
    public void onChildQuestionClicked(int i, int i2) {
        List<jf8> value;
        ArrayList arrayList;
        xg5<List<jf8>> xg5Var = this.supportQuestions;
        do {
            value = xg5Var.getValue();
            List<jf8> list = value;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (jf8 jf8VarD : list) {
                if (jf8VarD.a.a == i) {
                    Set<Integer> set = jf8VarD.c;
                    jf8VarD = jf8.d(jf8VarD, false, set.contains(Integer.valueOf(i2)) ? mr7.i(set, Integer.valueOf(i2)) : mr7.m(set, Integer.valueOf(i2)), 3);
                }
                arrayList.add(jf8VarD);
            }
        } while (!xg5Var.a(value, arrayList));
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        SupportQuestionsView supportQuestionsView;
        super.onFirstViewAttach();
        launchInPresenter(new df3(this.supportQuestions, new a(null)));
        String str = this.toolbarText;
        if (str == null || (supportQuestionsView = (SupportQuestionsView) getViewState()) == null) {
            return;
        }
        supportQuestionsView.setToolbarText(str);
    }

    @Override // hf8.a
    public void onQuestionActionClicked(String str) {
        str.getClass();
        SupportQuestionsView supportQuestionsView = (SupportQuestionsView) getViewState();
        if (supportQuestionsView != null) {
            supportQuestionsView.openUrlInCustomTab(str);
        }
    }

    @Override // hf8.a
    public void onQuestionCollapseClicked(int i, boolean z) {
        List<jf8> value;
        ArrayList arrayList;
        xg5<List<jf8>> xg5Var = this.supportQuestions;
        do {
            value = xg5Var.getValue();
            List<jf8> list = value;
            arrayList = new ArrayList(kn1.q(list, 10));
            for (jf8 jf8Var : list) {
                arrayList.add(jf8.d(jf8Var, jf8Var.a.a == i ? z : true, ox2.b, 1));
            }
        } while (!xg5Var.a(value, arrayList));
    }

    @Override // hf8.a
    public void onQuestionTextLinkClicked(String str) {
        str.getClass();
        SupportQuestionsView supportQuestionsView = (SupportQuestionsView) getViewState();
        if (supportQuestionsView != null) {
            supportQuestionsView.openUrlInCustomTab(str);
        }
    }
}

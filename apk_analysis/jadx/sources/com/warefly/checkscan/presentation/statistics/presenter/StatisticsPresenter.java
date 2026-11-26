package com.warefly.checkscan.presentation.statistics.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.statistics.view.StatisticsView;
import defpackage.fh1;
import defpackage.gh4;
import defpackage.ld5;
import defpackage.ll3;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.p08;
import defpackage.q78;
import defpackage.qn1;
import defpackage.rj;
import defpackage.s26;
import defpackage.uf3;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class StatisticsPresenter extends BasePresenter<StatisticsView> {
    private final uf3 flowRouter;
    private final q78 interactor;
    private s26<ld5> monthPaginator;
    private String selectedMonth;

    public static final class a implements s26.m<ld5> {
        public final c a;
        public List<ld5> b;

        public a(c cVar) {
            this.a = cVar;
        }

        @Override // s26.m
        public final void a(Throwable th) {
        }

        @Override // s26.m
        public final void b() {
        }

        @Override // s26.m
        public final void c(boolean z) {
        }

        @Override // s26.m
        public final void d(List list, boolean z) {
            list.getClass();
            if (z) {
                this.b = list;
                c cVar = this.a;
                StatisticsView statisticsView = (StatisticsView) cVar.invoke();
                if (statisticsView != null) {
                    statisticsView.showLoadMonth(false);
                }
                StatisticsView statisticsView2 = (StatisticsView) cVar.invoke();
                if (statisticsView2 != null) {
                    statisticsView2.showMonth(list);
                }
            }
        }

        @Override // s26.m
        public final void e(boolean z) {
        }

        @Override // s26.m
        public final void f(boolean z) {
        }

        @Override // s26.m
        public final void g(boolean z) {
        }

        @Override // s26.m
        public final void h(boolean z) {
        }
    }

    public static final class b extends gh4 implements nl3<Integer, mz7<List<? extends ld5>>> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final mz7<List<? extends ld5>> invoke(Integer num) {
            int iIntValue = num.intValue();
            StatisticsPresenter statisticsPresenter = StatisticsPresenter.this;
            statisticsPresenter.getInteractor().getClass();
            ArrayList arrayList = new ArrayList();
            Calendar calendar = Calendar.getInstance();
            if (iIntValue == 0) {
                calendar.add(2, (iIntValue + 1) * (-6));
            } else {
                calendar.add(2, (iIntValue * (-12)) - 6);
            }
            for (int i = 0; i < 12; i++) {
                arrayList.add(Long.valueOf(calendar.getTimeInMillis()));
                calendar.add(2, 1);
            }
            return new p08(mz7.e(qn1.j0(arrayList)), new fh1(new com.warefly.checkscan.presentation.statistics.presenter.a(statisticsPresenter), 4)).i(ne7.c).f(rj.a());
        }
    }

    public static final class c extends gh4 implements ll3<StatisticsView> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final StatisticsView invoke() {
            return (StatisticsView) StatisticsPresenter.this.getViewState();
        }
    }

    public StatisticsPresenter(q78 q78Var, uf3 uf3Var) {
        q78Var.getClass();
        uf3Var.getClass();
        this.interactor = q78Var;
        this.flowRouter = uf3Var;
    }

    private final void initMonthsPaginator() {
        s26<ld5> s26Var = new s26<>(new b(), new a(new c()));
        this.monthPaginator = s26Var;
        s26Var.c();
    }

    public final q78 getInteractor() {
        return this.interactor;
    }

    public final String getSelectedMonth() {
        return this.selectedMonth;
    }

    public final void onBackPressed() {
        this.flowRouter.i();
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        initMonthsPaginator();
    }

    public final void onLoadMoreHots() {
        StatisticsView statisticsView = (StatisticsView) getViewState();
        if (statisticsView != null) {
            statisticsView.showLoadMonth(true);
        }
        s26<ld5> s26Var = this.monthPaginator;
        if (s26Var != null) {
            s26Var.a();
        }
    }

    public final void setSelectedMonth(String str) {
        this.selectedMonth = str;
    }
}

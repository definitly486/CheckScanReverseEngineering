package com.warefly.checkscan.presentation.statistics.sectionStatistics.presenter;

import com.warefly.checkscan.core.ui.base.architecture.BasePresenter;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.presenter.StatisticsPagePresenter;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageView;
import defpackage.gh4;
import defpackage.h6;
import defpackage.ha3;
import defpackage.j59;
import defpackage.k78;
import defpackage.ne7;
import defpackage.nl3;
import defpackage.pb2;
import defpackage.q78;
import defpackage.rj;
import defpackage.uz7;
import defpackage.yb8;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes5.dex */
public final class StatisticsPagePresenter extends BasePresenter<StatisticsPageView> {
    private final ArrayList<Integer> categoriesFilters;
    private Date fromDateFilter;
    private final Boolean futureMonth;
    private final q78 interactor;
    private final long month;
    private final ArrayList<Integer> retailersFilters;
    private k78 statistics;
    private Date toDateFilter;
    private final ArrayList<Integer> weekdaysFilters;

    public static final class a extends gh4 implements nl3<Throwable, j59> {
        public static final a f = new a(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            th.getClass();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<k78, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(k78 k78Var) {
            k78 k78Var2 = k78Var;
            StatisticsPagePresenter statisticsPagePresenter = StatisticsPagePresenter.this;
            if (!statisticsPagePresenter.categoriesFilters.isEmpty()) {
                k78Var2.d();
            }
            if (!statisticsPagePresenter.retailersFilters.isEmpty()) {
                k78Var2.e();
            }
            if (!statisticsPagePresenter.weekdaysFilters.isEmpty()) {
                k78Var2.f(null);
            }
            statisticsPagePresenter.statistics = k78Var2;
            StatisticsPageView statisticsPageView = (StatisticsPageView) statisticsPagePresenter.getViewState();
            if (statisticsPageView != null) {
                statisticsPageView.showStatistics(k78Var2);
            }
            return j59.a;
        }
    }

    public StatisticsPagePresenter(long j, Boolean bool, q78 q78Var) {
        q78Var.getClass();
        this.month = j;
        this.futureMonth = bool;
        this.interactor = q78Var;
        this.categoriesFilters = new ArrayList<>();
        this.weekdaysFilters = new ArrayList<>();
        this.retailersFilters = new ArrayList<>();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002c  */
    /* JADX WARN: Code duplicated, block: B:9:0x0016  */
    private final ha3 getFilter(boolean z) {
        String strH;
        String strH2;
        Date date = this.fromDateFilter;
        if (date == null) {
            strH = null;
        } else {
            if (!z) {
                date = null;
            }
            if (date != null) {
                pb2.a.getClass();
                strH = pb2.h(date);
            } else {
                strH = null;
            }
        }
        Date date2 = this.toDateFilter;
        if (date2 == null) {
            strH2 = null;
        } else {
            if (!z) {
                date2 = null;
            }
            if (date2 != null) {
                pb2.a.getClass();
                strH2 = pb2.h(date2);
            } else {
                strH2 = null;
            }
        }
        ArrayList<Integer> arrayList = this.categoriesFilters;
        ArrayList<Integer> arrayList2 = !arrayList.isEmpty() ? arrayList : null;
        ArrayList<Integer> arrayList3 = this.retailersFilters;
        ArrayList<Integer> arrayList4 = !arrayList3.isEmpty() ? arrayList3 : null;
        ArrayList<Integer> arrayList5 = this.weekdaysFilters;
        return new ha3(strH, strH2, arrayList2, arrayList4, !arrayList5.isEmpty() ? arrayList5 : null);
    }

    public static /* synthetic */ ha3 getFilter$default(StatisticsPagePresenter statisticsPagePresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return statisticsPagePresenter.getFilter(z);
    }

    private final void setSelectDate() {
        pb2 pb2Var = pb2.a;
        Date date = new Date(this.month);
        pb2Var.getClass();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        Date time = new GregorianCalendar(calendar.get(1), calendar.get(2), 1, 0, 0, 0).getTime();
        time.getClass();
        this.fromDateFilter = time;
        Date date2 = new Date(this.month);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date2);
        Date time2 = new GregorianCalendar(calendar2.get(1), calendar2.get(2), calendar2.getActualMaximum(5), 0, 0, 0).getTime();
        time2.getClass();
        this.toDateFilter = time2;
        StatisticsPageView statisticsPageView = (StatisticsPageView) getViewState();
        if (statisticsPageView != null) {
            statisticsPageView.showLoadingStatistics(true);
        }
        BasePresenter.disposeOnDestroy$default(this, yb8.d(new uz7(this.interactor.a(getFilter$default(this, false, 1, null)).i(ne7.c).f(rj.a()), new h6() { // from class: z78
            @Override // defpackage.h6
            public final void run() {
                StatisticsPagePresenter.setSelectDate$lambda$0(this.a);
            }
        }), a.f, new b()), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setSelectDate$lambda$0(StatisticsPagePresenter statisticsPagePresenter) {
        StatisticsPageView statisticsPageView = (StatisticsPageView) statisticsPagePresenter.getViewState();
        if (statisticsPageView != null) {
            statisticsPageView.showLoadingStatistics(false);
        }
    }

    @Override // defpackage.ih5
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        new SimpleDateFormat("MMMM yyyy");
        setSelectDate();
    }
}

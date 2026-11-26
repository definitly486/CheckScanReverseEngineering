package com.warefly.checkscan.presentation.statistics.sectionStatistics.view;

import defpackage.hx5;
import defpackage.k78;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class StatisticsPageView$$State extends kh5<StatisticsPageView> implements StatisticsPageView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlCommand).b(xd9Var.a, openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((StatisticsPageView) it.next()).openUrl(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlCommand).a(xd9Var2.a, openUrlCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public void openUrlInCustomTab(String str) {
        OpenUrlInCustomTabCommand openUrlInCustomTabCommand = new OpenUrlInCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openUrlInCustomTabCommand).b(xd9Var.a, openUrlInCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((StatisticsPageView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageView
    public void showLoadingStatistics(boolean z) {
        ShowLoadingStatisticsCommand showLoadingStatisticsCommand = new ShowLoadingStatisticsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingStatisticsCommand).b(xd9Var.a, showLoadingStatisticsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((StatisticsPageView) it.next()).showLoadingStatistics(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingStatisticsCommand).a(xd9Var2.a, showLoadingStatisticsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageView
    public void showStatistics(k78 k78Var) {
        ShowStatisticsCommand showStatisticsCommand = new ShowStatisticsCommand(this, k78Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showStatisticsCommand).b(xd9Var.a, showStatisticsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((StatisticsPageView) it.next()).showStatistics(k78Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showStatisticsCommand).a(xd9Var2.a, showStatisticsCommand);
    }

    public class OpenUrlCommand extends wd9<StatisticsPageView> {
        public final String arg0;

        public OpenUrlCommand(StatisticsPageView$$State statisticsPageView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsPageView statisticsPageView) {
            statisticsPageView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<StatisticsPageView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(StatisticsPageView$$State statisticsPageView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsPageView statisticsPageView) {
            statisticsPageView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowLoadingStatisticsCommand extends wd9<StatisticsPageView> {
        public final boolean show;

        public ShowLoadingStatisticsCommand(StatisticsPageView$$State statisticsPageView$$State, boolean z) {
            super("showLoadingStatistics", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsPageView statisticsPageView) {
            statisticsPageView.showLoadingStatistics(this.show);
        }
    }

    public class ShowStatisticsCommand extends wd9<StatisticsPageView> {
        public final k78 statistics;

        public ShowStatisticsCommand(StatisticsPageView$$State statisticsPageView$$State, k78 k78Var) {
            super("showStatistics", k9.class);
            this.statistics = k78Var;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsPageView statisticsPageView) {
            statisticsPageView.showStatistics(this.statistics);
        }
    }
}

package com.warefly.checkscan.presentation.statistics.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.ld5;
import defpackage.lk3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class StatisticsView$$State extends kh5<StatisticsView> implements StatisticsView {
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
            ((StatisticsView) it.next()).openUrl(str);
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
            ((StatisticsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowView
    public void setLaunchScreen(lk3... lk3VarArr) {
        SetLaunchScreenCommand setLaunchScreenCommand = new SetLaunchScreenCommand(this, lk3VarArr);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setLaunchScreenCommand).b(xd9Var.a, setLaunchScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((StatisticsView) it.next()).setLaunchScreen(lk3VarArr);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLaunchScreenCommand).a(xd9Var2.a, setLaunchScreenCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.statistics.view.StatisticsView
    public void showLoadMonth(boolean z) {
        ShowLoadMonthCommand showLoadMonthCommand = new ShowLoadMonthCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadMonthCommand).b(xd9Var.a, showLoadMonthCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((StatisticsView) it.next()).showLoadMonth(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadMonthCommand).a(xd9Var2.a, showLoadMonthCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.statistics.view.StatisticsView
    public void showMonth(List<ld5> list) {
        ShowMonthCommand showMonthCommand = new ShowMonthCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMonthCommand).b(xd9Var.a, showMonthCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((StatisticsView) it.next()).showMonth(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMonthCommand).a(xd9Var2.a, showMonthCommand);
    }

    public class OpenUrlCommand extends wd9<StatisticsView> {
        public final String arg0;

        public OpenUrlCommand(StatisticsView$$State statisticsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsView statisticsView) {
            statisticsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<StatisticsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(StatisticsView$$State statisticsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsView statisticsView) {
            statisticsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetLaunchScreenCommand extends wd9<StatisticsView> {
        public final lk3[] arg0;

        public SetLaunchScreenCommand(StatisticsView$$State statisticsView$$State, lk3[] lk3VarArr) {
            super("setLaunchScreen", hx5.class);
            this.arg0 = lk3VarArr;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsView statisticsView) {
            statisticsView.setLaunchScreen(this.arg0);
        }
    }

    public class ShowLoadMonthCommand extends wd9<StatisticsView> {
        public final boolean show;

        public ShowLoadMonthCommand(StatisticsView$$State statisticsView$$State, boolean z) {
            super("showLoadMonth", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsView statisticsView) {
            statisticsView.showLoadMonth(this.show);
        }
    }

    public class ShowMonthCommand extends wd9<StatisticsView> {
        public final List<ld5> months;

        public ShowMonthCommand(StatisticsView$$State statisticsView$$State, List<ld5> list) {
            super("showMonth", k9.class);
            this.months = list;
        }

        @Override // defpackage.wd9
        public void apply(StatisticsView statisticsView) {
            statisticsView.showMonth(this.months);
        }
    }
}

package com.warefly.checkscan.presentation.cheques.view.sortDialogs.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class SumSortView$$State extends kh5<SumSortView> implements SumSortView {

    public class OnSortCommand extends wd9<SumSortView> {
        public final String end;
        public final String start;

        public OnSortCommand(SumSortView$$State sumSortView$$State, String str, String str2) {
            super("onSort", k9.class);
            this.start = str;
            this.end = str2;
        }

        @Override // defpackage.wd9
        public void apply(SumSortView sumSortView) {
            sumSortView.onSort(this.start, this.end);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public void enableSortButton(boolean z) {
        EnableSortButtonCommand enableSortButtonCommand = new EnableSortButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableSortButtonCommand).b(xd9Var.a, enableSortButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SumSortView) it.next()).enableSortButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableSortButtonCommand).a(xd9Var2.a, enableSortButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public void onSort(String str, String str2) {
        OnSortCommand onSortCommand = new OnSortCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(onSortCommand).b(xd9Var.a, onSortCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SumSortView) it.next()).onSort(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(onSortCommand).a(xd9Var2.a, onSortCommand);
    }

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
            ((SumSortView) it.next()).openUrl(str);
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
            ((SumSortView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public void showEndSumError(boolean z) {
        ShowEndSumErrorCommand showEndSumErrorCommand = new ShowEndSumErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEndSumErrorCommand).b(xd9Var.a, showEndSumErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SumSortView) it.next()).showEndSumError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEndSumErrorCommand).a(xd9Var2.a, showEndSumErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortView
    public void showStartSumError(boolean z) {
        ShowStartSumErrorCommand showStartSumErrorCommand = new ShowStartSumErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showStartSumErrorCommand).b(xd9Var.a, showStartSumErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SumSortView) it.next()).showStartSumError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showStartSumErrorCommand).a(xd9Var2.a, showStartSumErrorCommand);
    }

    public class EnableSortButtonCommand extends wd9<SumSortView> {
        public final boolean enable;

        public EnableSortButtonCommand(SumSortView$$State sumSortView$$State, boolean z) {
            super("enableSortButton", k9.class);
            this.enable = z;
        }

        @Override // defpackage.wd9
        public void apply(SumSortView sumSortView) {
            sumSortView.enableSortButton(this.enable);
        }
    }

    public class OpenUrlCommand extends wd9<SumSortView> {
        public final String arg0;

        public OpenUrlCommand(SumSortView$$State sumSortView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SumSortView sumSortView) {
            sumSortView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<SumSortView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(SumSortView$$State sumSortView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SumSortView sumSortView) {
            sumSortView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowEndSumErrorCommand extends wd9<SumSortView> {
        public final boolean show;

        public ShowEndSumErrorCommand(SumSortView$$State sumSortView$$State, boolean z) {
            super("showEndSumError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(SumSortView sumSortView) {
            sumSortView.showEndSumError(this.show);
        }
    }

    public class ShowStartSumErrorCommand extends wd9<SumSortView> {
        public final boolean show;

        public ShowStartSumErrorCommand(SumSortView$$State sumSortView$$State, boolean z) {
            super("showStartSumError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(SumSortView sumSortView) {
            sumSortView.showStartSumError(this.show);
        }
    }
}

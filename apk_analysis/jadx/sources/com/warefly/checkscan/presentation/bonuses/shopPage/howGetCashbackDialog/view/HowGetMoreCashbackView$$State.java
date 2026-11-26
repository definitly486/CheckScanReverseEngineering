package com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view;

import defpackage.hx3;
import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class HowGetMoreCashbackView$$State extends kh5<HowGetMoreCashbackView> implements HowGetMoreCashbackView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackView
    public void closeDialog() {
        CloseDialogCommand closeDialogCommand = new CloseDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(closeDialogCommand).b(xd9Var.a, closeDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((HowGetMoreCashbackView) it.next()).closeDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(closeDialogCommand).a(xd9Var2.a, closeDialogCommand);
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
            ((HowGetMoreCashbackView) it.next()).openUrl(str);
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
            ((HowGetMoreCashbackView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackView
    public void setTitles(String str) {
        SetTitlesCommand setTitlesCommand = new SetTitlesCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTitlesCommand).b(xd9Var.a, setTitlesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((HowGetMoreCashbackView) it.next()).setTitles(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTitlesCommand).a(xd9Var2.a, setTitlesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.howGetCashbackDialog.view.HowGetMoreCashbackView
    public void showContent(List<hx3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((HowGetMoreCashbackView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    public class CloseDialogCommand extends wd9<HowGetMoreCashbackView> {
        public CloseDialogCommand(HowGetMoreCashbackView$$State howGetMoreCashbackView$$State) {
            super("closeDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(HowGetMoreCashbackView howGetMoreCashbackView) {
            howGetMoreCashbackView.closeDialog();
        }
    }

    public class OpenUrlCommand extends wd9<HowGetMoreCashbackView> {
        public final String arg0;

        public OpenUrlCommand(HowGetMoreCashbackView$$State howGetMoreCashbackView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(HowGetMoreCashbackView howGetMoreCashbackView) {
            howGetMoreCashbackView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<HowGetMoreCashbackView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(HowGetMoreCashbackView$$State howGetMoreCashbackView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(HowGetMoreCashbackView howGetMoreCashbackView) {
            howGetMoreCashbackView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetTitlesCommand extends wd9<HowGetMoreCashbackView> {
        public final String buttonTitle;

        public SetTitlesCommand(HowGetMoreCashbackView$$State howGetMoreCashbackView$$State, String str) {
            super("setTitles", i9.class);
            this.buttonTitle = str;
        }

        @Override // defpackage.wd9
        public void apply(HowGetMoreCashbackView howGetMoreCashbackView) {
            howGetMoreCashbackView.setTitles(this.buttonTitle);
        }
    }

    public class ShowContentCommand extends wd9<HowGetMoreCashbackView> {
        public final List<hx3> data;

        public ShowContentCommand(HowGetMoreCashbackView$$State howGetMoreCashbackView$$State, List<hx3> list) {
            super("showContent", i9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(HowGetMoreCashbackView howGetMoreCashbackView) {
            howGetMoreCashbackView.showContent(this.data);
        }
    }
}

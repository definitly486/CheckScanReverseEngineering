package com.warefly.checkscan.presentation.newBankCards.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.k90;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NewBankCardsView$$State extends kh5<NewBankCardsView> implements NewBankCardsView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public void handleProgress(boolean z) {
        HandleProgressCommand handleProgressCommand = new HandleProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleProgressCommand).b(xd9Var.a, handleProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewBankCardsView) it.next()).handleProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleProgressCommand).a(xd9Var2.a, handleProgressCommand);
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
            ((NewBankCardsView) it.next()).openUrl(str);
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
            ((NewBankCardsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public void setDescription(String str) {
        SetDescriptionCommand setDescriptionCommand = new SetDescriptionCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setDescriptionCommand).b(xd9Var.a, setDescriptionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewBankCardsView) it.next()).setDescription(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setDescriptionCommand).a(xd9Var2.a, setDescriptionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public void setTitle(String str) {
        SetTitleCommand setTitleCommand = new SetTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setTitleCommand).b(xd9Var.a, setTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewBankCardsView) it.next()).setTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setTitleCommand).a(xd9Var2.a, setTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public void showBankCardsInfoLoadingError() {
        ShowBankCardsInfoLoadingErrorCommand showBankCardsInfoLoadingErrorCommand = new ShowBankCardsInfoLoadingErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBankCardsInfoLoadingErrorCommand).b(xd9Var.a, showBankCardsInfoLoadingErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewBankCardsView) it.next()).showBankCardsInfoLoadingError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBankCardsInfoLoadingErrorCommand).a(xd9Var2.a, showBankCardsInfoLoadingErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public void showData(List<k90> list) {
        ShowDataCommand showDataCommand = new ShowDataCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDataCommand).b(xd9Var.a, showDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewBankCardsView) it.next()).showData(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDataCommand).a(xd9Var2.a, showDataCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView
    public void showNoCards() {
        ShowNoCardsCommand showNoCardsCommand = new ShowNoCardsCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoCardsCommand).b(xd9Var.a, showNoCardsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((NewBankCardsView) it.next()).showNoCards();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoCardsCommand).a(xd9Var2.a, showNoCardsCommand);
    }

    public class HandleProgressCommand extends wd9<NewBankCardsView> {
        public final boolean isVisible;

        public HandleProgressCommand(NewBankCardsView$$State newBankCardsView$$State, boolean z) {
            super("handleProgress", k9.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.handleProgress(this.isVisible);
        }
    }

    public class OpenUrlCommand extends wd9<NewBankCardsView> {
        public final String arg0;

        public OpenUrlCommand(NewBankCardsView$$State newBankCardsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<NewBankCardsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(NewBankCardsView$$State newBankCardsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetDescriptionCommand extends wd9<NewBankCardsView> {
        public final String value;

        public SetDescriptionCommand(NewBankCardsView$$State newBankCardsView$$State, String str) {
            super("setDescription", k9.class);
            this.value = str;
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.setDescription(this.value);
        }
    }

    public class SetTitleCommand extends wd9<NewBankCardsView> {
        public final String value;

        public SetTitleCommand(NewBankCardsView$$State newBankCardsView$$State, String str) {
            super("setTitle", k9.class);
            this.value = str;
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.setTitle(this.value);
        }
    }

    public class ShowBankCardsInfoLoadingErrorCommand extends wd9<NewBankCardsView> {
        public ShowBankCardsInfoLoadingErrorCommand(NewBankCardsView$$State newBankCardsView$$State) {
            super("showBankCardsInfoLoadingError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.showBankCardsInfoLoadingError();
        }
    }

    public class ShowDataCommand extends wd9<NewBankCardsView> {
        public final List<k90> data;

        public ShowDataCommand(NewBankCardsView$$State newBankCardsView$$State, List<k90> list) {
            super("showData", k9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.showData(this.data);
        }
    }

    public class ShowNoCardsCommand extends wd9<NewBankCardsView> {
        public ShowNoCardsCommand(NewBankCardsView$$State newBankCardsView$$State) {
            super("showNoCards", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(NewBankCardsView newBankCardsView) {
            newBankCardsView.showNoCards();
        }
    }
}

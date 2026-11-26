package com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view;

import defpackage.gw6;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class AddChequeView$$State extends kh5<AddChequeView> implements AddChequeView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void finishLoadingFNSStatus() {
        FinishLoadingFNSStatusCommand finishLoadingFNSStatusCommand = new FinishLoadingFNSStatusCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(finishLoadingFNSStatusCommand).b(xd9Var.a, finishLoadingFNSStatusCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).finishLoadingFNSStatus();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(finishLoadingFNSStatusCommand).a(xd9Var2.a, finishLoadingFNSStatusCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void loadUpdatingFNSStatus() {
        LoadUpdatingFNSStatusCommand loadUpdatingFNSStatusCommand = new LoadUpdatingFNSStatusCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(loadUpdatingFNSStatusCommand).b(xd9Var.a, loadUpdatingFNSStatusCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).loadUpdatingFNSStatus();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(loadUpdatingFNSStatusCommand).a(xd9Var2.a, loadUpdatingFNSStatusCommand);
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
            ((AddChequeView) it.next()).openUrl(str);
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
            ((AddChequeView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void setToolbarTitle(String str) {
        SetToolbarTitleCommand setToolbarTitleCommand = new SetToolbarTitleCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setToolbarTitleCommand).b(xd9Var.a, setToolbarTitleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).setToolbarTitle(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setToolbarTitleCommand).a(xd9Var2.a, setToolbarTitleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showChequeAlreadyWasScanned() {
        ShowChequeAlreadyWasScannedCommand showChequeAlreadyWasScannedCommand = new ShowChequeAlreadyWasScannedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequeAlreadyWasScannedCommand).b(xd9Var.a, showChequeAlreadyWasScannedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showChequeAlreadyWasScanned();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequeAlreadyWasScannedCommand).a(xd9Var2.a, showChequeAlreadyWasScannedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showChequeInvalid() {
        ShowChequeInvalidCommand showChequeInvalidCommand = new ShowChequeInvalidCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequeInvalidCommand).b(xd9Var.a, showChequeInvalidCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showChequeInvalid();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequeInvalidCommand).a(xd9Var2.a, showChequeInvalidCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showChequeNotCorrectFormat() {
        ShowChequeNotCorrectFormatCommand showChequeNotCorrectFormatCommand = new ShowChequeNotCorrectFormatCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showChequeNotCorrectFormatCommand).b(xd9Var.a, showChequeNotCorrectFormatCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showChequeNotCorrectFormat();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showChequeNotCorrectFormatCommand).a(xd9Var2.a, showChequeNotCorrectFormatCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showCouldntDeleteCheque() {
        ShowCouldntDeleteChequeCommand showCouldntDeleteChequeCommand = new ShowCouldntDeleteChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntDeleteChequeCommand).b(xd9Var.a, showCouldntDeleteChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showCouldntDeleteCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntDeleteChequeCommand).a(xd9Var2.a, showCouldntDeleteChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showCouldntRefreshCheque() {
        ShowCouldntRefreshChequeCommand showCouldntRefreshChequeCommand = new ShowCouldntRefreshChequeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntRefreshChequeCommand).b(xd9Var.a, showCouldntRefreshChequeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showCouldntRefreshCheque();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntRefreshChequeCommand).a(xd9Var2.a, showCouldntRefreshChequeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showFnsNotResponding() {
        ShowFnsNotRespondingCommand showFnsNotRespondingCommand = new ShowFnsNotRespondingCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFnsNotRespondingCommand).b(xd9Var.a, showFnsNotRespondingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showFnsNotResponding();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFnsNotRespondingCommand).a(xd9Var2.a, showFnsNotRespondingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showNoShopReceived() {
        ShowNoShopReceivedCommand showNoShopReceivedCommand = new ShowNoShopReceivedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoShopReceivedCommand).b(xd9Var.a, showNoShopReceivedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showNoShopReceived();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoShopReceivedCommand).a(xd9Var2.a, showNoShopReceivedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeView
    public void showReceiptData(gw6 gw6Var) {
        ShowReceiptDataCommand showReceiptDataCommand = new ShowReceiptDataCommand(this, gw6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showReceiptDataCommand).b(xd9Var.a, showReceiptDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddChequeView) it.next()).showReceiptData(gw6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showReceiptDataCommand).a(xd9Var2.a, showReceiptDataCommand);
    }

    public class FinishLoadingFNSStatusCommand extends wd9<AddChequeView> {
        public FinishLoadingFNSStatusCommand(AddChequeView$$State addChequeView$$State) {
            super("finishLoadingFNSStatus", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.finishLoadingFNSStatus();
        }
    }

    public class LoadUpdatingFNSStatusCommand extends wd9<AddChequeView> {
        public LoadUpdatingFNSStatusCommand(AddChequeView$$State addChequeView$$State) {
            super("loadUpdatingFNSStatus", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.loadUpdatingFNSStatus();
        }
    }

    public class OpenUrlCommand extends wd9<AddChequeView> {
        public final String arg0;

        public OpenUrlCommand(AddChequeView$$State addChequeView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<AddChequeView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(AddChequeView$$State addChequeView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetToolbarTitleCommand extends wd9<AddChequeView> {
        public final String toolbarTitle;

        public SetToolbarTitleCommand(AddChequeView$$State addChequeView$$State, String str) {
            super("setToolbarTitle", k9.class);
            this.toolbarTitle = str;
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.setToolbarTitle(this.toolbarTitle);
        }
    }

    public class ShowChequeAlreadyWasScannedCommand extends wd9<AddChequeView> {
        public ShowChequeAlreadyWasScannedCommand(AddChequeView$$State addChequeView$$State) {
            super("showChequeAlreadyWasScanned", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showChequeAlreadyWasScanned();
        }
    }

    public class ShowChequeInvalidCommand extends wd9<AddChequeView> {
        public ShowChequeInvalidCommand(AddChequeView$$State addChequeView$$State) {
            super("showChequeInvalid", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showChequeInvalid();
        }
    }

    public class ShowChequeNotCorrectFormatCommand extends wd9<AddChequeView> {
        public ShowChequeNotCorrectFormatCommand(AddChequeView$$State addChequeView$$State) {
            super("showChequeNotCorrectFormat", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showChequeNotCorrectFormat();
        }
    }

    public class ShowCouldntDeleteChequeCommand extends wd9<AddChequeView> {
        public ShowCouldntDeleteChequeCommand(AddChequeView$$State addChequeView$$State) {
            super("showCouldntDeleteCheque", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showCouldntDeleteCheque();
        }
    }

    public class ShowCouldntRefreshChequeCommand extends wd9<AddChequeView> {
        public ShowCouldntRefreshChequeCommand(AddChequeView$$State addChequeView$$State) {
            super("showCouldntRefreshCheque", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showCouldntRefreshCheque();
        }
    }

    public class ShowFnsNotRespondingCommand extends wd9<AddChequeView> {
        public ShowFnsNotRespondingCommand(AddChequeView$$State addChequeView$$State) {
            super("showFnsNotResponding", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showFnsNotResponding();
        }
    }

    public class ShowNoShopReceivedCommand extends wd9<AddChequeView> {
        public ShowNoShopReceivedCommand(AddChequeView$$State addChequeView$$State) {
            super("showNoShopReceived", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showNoShopReceived();
        }
    }

    public class ShowReceiptDataCommand extends wd9<AddChequeView> {
        public final gw6 data;

        public ShowReceiptDataCommand(AddChequeView$$State addChequeView$$State, gw6 gw6Var) {
            super("showReceiptData", k9.class);
            this.data = gw6Var;
        }

        @Override // defpackage.wd9
        public void apply(AddChequeView addChequeView) {
            addChequeView.showReceiptData(this.data);
        }
    }
}

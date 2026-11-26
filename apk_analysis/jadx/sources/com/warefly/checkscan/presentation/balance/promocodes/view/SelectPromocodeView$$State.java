package com.warefly.checkscan.presentation.balance.promocodes.view;

import defpackage.b06;
import defpackage.em7;
import defpackage.fr6;
import defpackage.hx5;
import defpackage.jm7;
import defpackage.k9;
import defpackage.kh5;
import defpackage.km7;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SelectPromocodeView$$State extends kh5<SelectPromocodeView> implements SelectPromocodeView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void copyPromocode(String str) {
        CopyPromocodeCommand copyPromocodeCommand = new CopyPromocodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(copyPromocodeCommand).b(xd9Var.a, copyPromocodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).copyPromocode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(copyPromocodeCommand).a(xd9Var2.a, copyPromocodeCommand);
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
            ((SelectPromocodeView) it.next()).openUrl(str);
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
            ((SelectPromocodeView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showApproveSheet(em7 em7Var) {
        ShowApproveSheetCommand showApproveSheetCommand = new ShowApproveSheetCommand(this, em7Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showApproveSheetCommand).b(xd9Var.a, showApproveSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showApproveSheet(em7Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showApproveSheetCommand).a(xd9Var2.a, showApproveSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showErrorLoading(boolean z) {
        ShowErrorLoadingCommand showErrorLoadingCommand = new ShowErrorLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorLoadingCommand).b(xd9Var.a, showErrorLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showErrorLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorLoadingCommand).a(xd9Var2.a, showErrorLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showErrorSheet(jm7.a aVar) {
        ShowErrorSheetCommand showErrorSheetCommand = new ShowErrorSheetCommand(this, aVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorSheetCommand).b(xd9Var.a, showErrorSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showErrorSheet(aVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorSheetCommand).a(xd9Var2.a, showErrorSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showOrdDialog(b06 b06Var) {
        ShowOrdDialogCommand showOrdDialogCommand = new ShowOrdDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdDialogCommand).b(xd9Var.a, showOrdDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showOrdDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdDialogCommand).a(xd9Var2.a, showOrdDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showPromocodes(List<fr6> list) {
        ShowPromocodesCommand showPromocodesCommand = new ShowPromocodesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodesCommand).b(xd9Var.a, showPromocodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showPromocodes(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodesCommand).a(xd9Var2.a, showPromocodesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showSelectingSheet(km7 km7Var) {
        ShowSelectingSheetCommand showSelectingSheetCommand = new ShowSelectingSheetCommand(this, km7Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSelectingSheetCommand).b(xd9Var.a, showSelectingSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showSelectingSheet(km7Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSelectingSheetCommand).a(xd9Var2.a, showSelectingSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.balance.promocodes.view.SelectPromocodeView
    public void showSuccessSheet(jm7.b bVar) {
        ShowSuccessSheetCommand showSuccessSheetCommand = new ShowSuccessSheetCommand(this, bVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSuccessSheetCommand).b(xd9Var.a, showSuccessSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((SelectPromocodeView) it.next()).showSuccessSheet(bVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSuccessSheetCommand).a(xd9Var2.a, showSuccessSheetCommand);
    }

    public class CopyPromocodeCommand extends wd9<SelectPromocodeView> {
        public final String promocode;

        public CopyPromocodeCommand(SelectPromocodeView$$State selectPromocodeView$$State, String str) {
            super("copyPromocode", hx5.class);
            this.promocode = str;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.copyPromocode(this.promocode);
        }
    }

    public class OpenUrlCommand extends wd9<SelectPromocodeView> {
        public final String arg0;

        public OpenUrlCommand(SelectPromocodeView$$State selectPromocodeView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<SelectPromocodeView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(SelectPromocodeView$$State selectPromocodeView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowApproveSheetCommand extends wd9<SelectPromocodeView> {
        public final em7 approveSheet;

        public ShowApproveSheetCommand(SelectPromocodeView$$State selectPromocodeView$$State, em7 em7Var) {
            super("showApproveSheet", hx5.class);
            this.approveSheet = em7Var;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showApproveSheet(this.approveSheet);
        }
    }

    public class ShowErrorLoadingCommand extends wd9<SelectPromocodeView> {
        public final boolean isError;

        public ShowErrorLoadingCommand(SelectPromocodeView$$State selectPromocodeView$$State, boolean z) {
            super("showErrorLoading", k9.class);
            this.isError = z;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showErrorLoading(this.isError);
        }
    }

    public class ShowErrorSheetCommand extends wd9<SelectPromocodeView> {
        public final jm7.a errorSheet;

        public ShowErrorSheetCommand(SelectPromocodeView$$State selectPromocodeView$$State, jm7.a aVar) {
            super("showErrorSheet", hx5.class);
            this.errorSheet = aVar;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showErrorSheet(this.errorSheet);
        }
    }

    public class ShowLoadingCommand extends wd9<SelectPromocodeView> {
        public final boolean isLoading;

        public ShowLoadingCommand(SelectPromocodeView$$State selectPromocodeView$$State, boolean z) {
            super("showLoading", k9.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showLoading(this.isLoading);
        }
    }

    public class ShowOrdDialogCommand extends wd9<SelectPromocodeView> {
        public final b06 ordInfo;

        public ShowOrdDialogCommand(SelectPromocodeView$$State selectPromocodeView$$State, b06 b06Var) {
            super("showOrdDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showOrdDialog(this.ordInfo);
        }
    }

    public class ShowPromocodesCommand extends wd9<SelectPromocodeView> {
        public final List<fr6> items;

        public ShowPromocodesCommand(SelectPromocodeView$$State selectPromocodeView$$State, List<fr6> list) {
            super("showPromocodes", k9.class);
            this.items = list;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showPromocodes(this.items);
        }
    }

    public class ShowSelectingSheetCommand extends wd9<SelectPromocodeView> {
        public final km7 selectPromocodeSheet;

        public ShowSelectingSheetCommand(SelectPromocodeView$$State selectPromocodeView$$State, km7 km7Var) {
            super("showSelectingSheet", hx5.class);
            this.selectPromocodeSheet = km7Var;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showSelectingSheet(this.selectPromocodeSheet);
        }
    }

    public class ShowSuccessSheetCommand extends wd9<SelectPromocodeView> {
        public final jm7.b successSheet;

        public ShowSuccessSheetCommand(SelectPromocodeView$$State selectPromocodeView$$State, jm7.b bVar) {
            super("showSuccessSheet", hx5.class);
            this.successSheet = bVar;
        }

        @Override // defpackage.wd9
        public void apply(SelectPromocodeView selectPromocodeView) {
            selectPromocodeView.showSuccessSheet(this.successSheet);
        }
    }
}

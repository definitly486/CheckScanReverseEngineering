package com.warefly.checkscan.presentation.scanner.view;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh1;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ScannerView$$State extends kh5<ScannerView> implements ScannerView {

    public class ShowLastChequeInfo1Command extends wd9<ScannerView> {
        public final int count;
        public final String info;

        public ShowLastChequeInfo1Command(ScannerView$$State scannerView$$State, String str, int i) {
            super("showLastChequeInfo", i9.class);
            this.info = str;
            this.count = i;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.showLastChequeInfo(this.info, this.count);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void handleChequesListVisible(boolean z) {
        HandleChequesListVisibleCommand handleChequesListVisibleCommand = new HandleChequesListVisibleCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleChequesListVisibleCommand).b(xd9Var.a, handleChequesListVisibleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).handleChequesListVisible(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleChequesListVisibleCommand).a(xd9Var2.a, handleChequesListVisibleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void handleErrorMessage(boolean z) {
        HandleErrorMessageCommand handleErrorMessageCommand = new HandleErrorMessageCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleErrorMessageCommand).b(xd9Var.a, handleErrorMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).handleErrorMessage(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleErrorMessageCommand).a(xd9Var2.a, handleErrorMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void handleMessageVisibility(boolean z) {
        HandleMessageVisibilityCommand handleMessageVisibilityCommand = new HandleMessageVisibilityCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleMessageVisibilityCommand).b(xd9Var.a, handleMessageVisibilityCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).handleMessageVisibility(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleMessageVisibilityCommand).a(xd9Var2.a, handleMessageVisibilityCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void openGallery() {
        OpenGalleryCommand openGalleryCommand = new OpenGalleryCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openGalleryCommand).b(xd9Var.a, openGalleryCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).openGallery();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openGalleryCommand).a(xd9Var2.a, openGalleryCommand);
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
            ((ScannerView) it.next()).openUrl(str);
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
            ((ScannerView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void setCheques(List<kh1> list) {
        SetChequesCommand setChequesCommand = new SetChequesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setChequesCommand).b(xd9Var.a, setChequesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).setCheques(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setChequesCommand).a(xd9Var2.a, setChequesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void setLoadButtonText(String str) {
        SetLoadButtonTextCommand setLoadButtonTextCommand = new SetLoadButtonTextCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setLoadButtonTextCommand).b(xd9Var.a, setLoadButtonTextCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).setLoadButtonText(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLoadButtonTextCommand).a(xd9Var2.a, setLoadButtonTextCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void showBrandlinkButton() {
        ShowBrandlinkButtonCommand showBrandlinkButtonCommand = new ShowBrandlinkButtonCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBrandlinkButtonCommand).b(xd9Var.a, showBrandlinkButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).showBrandlinkButton();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBrandlinkButtonCommand).a(xd9Var2.a, showBrandlinkButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void showCropError() {
        ShowCropErrorCommand showCropErrorCommand = new ShowCropErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCropErrorCommand).b(xd9Var.a, showCropErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).showCropError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCropErrorCommand).a(xd9Var2.a, showCropErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void showLastChequeInfo(String str) {
        ShowLastChequeInfoCommand showLastChequeInfoCommand = new ShowLastChequeInfoCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLastChequeInfoCommand).b(xd9Var.a, showLastChequeInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).showLastChequeInfo(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLastChequeInfoCommand).a(xd9Var2.a, showLastChequeInfoCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void showLoadButton() {
        ShowLoadButtonCommand showLoadButtonCommand = new ShowLoadButtonCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadButtonCommand).b(xd9Var.a, showLoadButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).showLoadButton();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadButtonCommand).a(xd9Var2.a, showLoadButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void vibrate() {
        VibrateCommand vibrateCommand = new VibrateCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(vibrateCommand).b(xd9Var.a, vibrateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).vibrate();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(vibrateCommand).a(xd9Var2.a, vibrateCommand);
    }

    public class HandleChequesListVisibleCommand extends wd9<ScannerView> {
        public final boolean isVisible;

        public HandleChequesListVisibleCommand(ScannerView$$State scannerView$$State, boolean z) {
            super("handleChequesListVisible", i9.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.handleChequesListVisible(this.isVisible);
        }
    }

    public class HandleErrorMessageCommand extends wd9<ScannerView> {
        public final boolean isVisible;

        public HandleErrorMessageCommand(ScannerView$$State scannerView$$State, boolean z) {
            super("handleErrorMessage", hx5.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.handleErrorMessage(this.isVisible);
        }
    }

    public class HandleMessageVisibilityCommand extends wd9<ScannerView> {
        public final boolean isVisible;

        public HandleMessageVisibilityCommand(ScannerView$$State scannerView$$State, boolean z) {
            super("handleMessageVisibility", i9.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.handleMessageVisibility(this.isVisible);
        }
    }

    public class OpenGalleryCommand extends wd9<ScannerView> {
        public OpenGalleryCommand(ScannerView$$State scannerView$$State) {
            super("openGallery", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.openGallery();
        }
    }

    public class OpenUrlCommand extends wd9<ScannerView> {
        public final String arg0;

        public OpenUrlCommand(ScannerView$$State scannerView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ScannerView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ScannerView$$State scannerView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetChequesCommand extends wd9<ScannerView> {
        public final List<kh1> data;

        public SetChequesCommand(ScannerView$$State scannerView$$State, List<kh1> list) {
            super("setCheques", i9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.setCheques(this.data);
        }
    }

    public class SetLoadButtonTextCommand extends wd9<ScannerView> {
        public final String text;

        public SetLoadButtonTextCommand(ScannerView$$State scannerView$$State, String str) {
            super("setLoadButtonText", i9.class);
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.setLoadButtonText(this.text);
        }
    }

    public class ShowBrandlinkButtonCommand extends wd9<ScannerView> {
        public ShowBrandlinkButtonCommand(ScannerView$$State scannerView$$State) {
            super("showBrandlinkButton", i9.class);
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.showBrandlinkButton();
        }
    }

    public class ShowCropErrorCommand extends wd9<ScannerView> {
        public ShowCropErrorCommand(ScannerView$$State scannerView$$State) {
            super("showCropError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.showCropError();
        }
    }

    public class ShowLastChequeInfoCommand extends wd9<ScannerView> {
        public final String info;

        public ShowLastChequeInfoCommand(ScannerView$$State scannerView$$State, String str) {
            super("showLastChequeInfo", i9.class);
            this.info = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.showLastChequeInfo(this.info);
        }
    }

    public class ShowLoadButtonCommand extends wd9<ScannerView> {
        public ShowLoadButtonCommand(ScannerView$$State scannerView$$State) {
            super("showLoadButton", i9.class);
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.showLoadButton();
        }
    }

    public class VibrateCommand extends wd9<ScannerView> {
        public VibrateCommand(ScannerView$$State scannerView$$State) {
            super("vibrate", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ScannerView scannerView) {
            scannerView.vibrate();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public void showLastChequeInfo(String str, int i) {
        ShowLastChequeInfo1Command showLastChequeInfo1Command = new ShowLastChequeInfo1Command(this, str, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLastChequeInfo1Command).b(xd9Var.a, showLastChequeInfo1Command);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerView) it.next()).showLastChequeInfo(str, i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLastChequeInfo1Command).a(xd9Var2.a, showLastChequeInfo1Command);
    }
}

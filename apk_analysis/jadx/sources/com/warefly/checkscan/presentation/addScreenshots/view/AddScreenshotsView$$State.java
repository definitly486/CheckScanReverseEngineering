package com.warefly.checkscan.presentation.addScreenshots.view;

import android.net.Uri;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class AddScreenshotsView$$State extends kh5<AddScreenshotsView> implements AddScreenshotsView {

    public class ReplaceLoadShopButtonCommand extends wd9<AddScreenshotsView> {
        public final Uri uri;
        public final String value;

        public ReplaceLoadShopButtonCommand(AddScreenshotsView$$State addScreenshotsView$$State, String str, Uri uri) {
            super("replaceLoadShopButton", i9.class);
            this.value = str;
            this.uri = uri;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.replaceLoadShopButton(this.value, this.uri);
        }
    }

    public class ShowBankDescriptionCommand extends wd9<AddScreenshotsView> {
        public final String subtitle;
        public final String title;

        public ShowBankDescriptionCommand(AddScreenshotsView$$State addScreenshotsView$$State, String str, String str2) {
            super("showBankDescription", hx5.class);
            this.title = str;
            this.subtitle = str2;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.showBankDescription(this.title, this.subtitle);
        }
    }

    public class ShowShopDescriptionCommand extends wd9<AddScreenshotsView> {
        public final String subtitle;
        public final String title;

        public ShowShopDescriptionCommand(AddScreenshotsView$$State addScreenshotsView$$State, String str, String str2) {
            super("showShopDescription", hx5.class);
            this.title = str;
            this.subtitle = str2;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.showShopDescription(this.title, this.subtitle);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void getBankScreenshot() {
        GetBankScreenshotCommand getBankScreenshotCommand = new GetBankScreenshotCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(getBankScreenshotCommand).b(xd9Var.a, getBankScreenshotCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).getBankScreenshot();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(getBankScreenshotCommand).a(xd9Var2.a, getBankScreenshotCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void getShopScreenshot() {
        GetShopScreenshotCommand getShopScreenshotCommand = new GetShopScreenshotCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(getShopScreenshotCommand).b(xd9Var.a, getShopScreenshotCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).getShopScreenshot();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(getShopScreenshotCommand).a(xd9Var2.a, getShopScreenshotCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void isUploadButtonVisible(boolean z) {
        IsUploadButtonVisibleCommand isUploadButtonVisibleCommand = new IsUploadButtonVisibleCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(isUploadButtonVisibleCommand).b(xd9Var.a, isUploadButtonVisibleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).isUploadButtonVisible(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(isUploadButtonVisibleCommand).a(xd9Var2.a, isUploadButtonVisibleCommand);
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
            ((AddScreenshotsView) it.next()).openUrl(str);
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
            ((AddScreenshotsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void replaceLoadBankButton(String str) {
        ReplaceLoadBankButtonCommand replaceLoadBankButtonCommand = new ReplaceLoadBankButtonCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(replaceLoadBankButtonCommand).b(xd9Var.a, replaceLoadBankButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).replaceLoadBankButton(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(replaceLoadBankButtonCommand).a(xd9Var2.a, replaceLoadBankButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void replaceLoadShopButton(String str, Uri uri) {
        ReplaceLoadShopButtonCommand replaceLoadShopButtonCommand = new ReplaceLoadShopButtonCommand(this, str, uri);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(replaceLoadShopButtonCommand).b(xd9Var.a, replaceLoadShopButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).replaceLoadShopButton(str, uri);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(replaceLoadShopButtonCommand).a(xd9Var2.a, replaceLoadShopButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void showBankDescription(String str, String str2) {
        ShowBankDescriptionCommand showBankDescriptionCommand = new ShowBankDescriptionCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBankDescriptionCommand).b(xd9Var.a, showBankDescriptionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).showBankDescription(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBankDescriptionCommand).a(xd9Var2.a, showBankDescriptionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void showHelpScreenshotDialog(long j) {
        ShowHelpScreenshotDialogCommand showHelpScreenshotDialogCommand = new ShowHelpScreenshotDialogCommand(this, j);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showHelpScreenshotDialogCommand).b(xd9Var.a, showHelpScreenshotDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).showHelpScreenshotDialog(j);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showHelpScreenshotDialogCommand).a(xd9Var2.a, showHelpScreenshotDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void showShopDescription(String str, String str2) {
        ShowShopDescriptionCommand showShopDescriptionCommand = new ShowShopDescriptionCommand(this, str, str2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showShopDescriptionCommand).b(xd9Var.a, showShopDescriptionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).showShopDescription(str, str2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showShopDescriptionCommand).a(xd9Var2.a, showShopDescriptionCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void showShopExampleImage(String str) {
        ShowShopExampleImageCommand showShopExampleImageCommand = new ShowShopExampleImageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showShopExampleImageCommand).b(xd9Var.a, showShopExampleImageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).showShopExampleImage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showShopExampleImageCommand).a(xd9Var2.a, showShopExampleImageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public void showSomeError() {
        ShowSomeErrorCommand showSomeErrorCommand = new ShowSomeErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSomeErrorCommand).b(xd9Var.a, showSomeErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AddScreenshotsView) it.next()).showSomeError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSomeErrorCommand).a(xd9Var2.a, showSomeErrorCommand);
    }

    public class GetBankScreenshotCommand extends wd9<AddScreenshotsView> {
        public GetBankScreenshotCommand(AddScreenshotsView$$State addScreenshotsView$$State) {
            super("getBankScreenshot", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.getBankScreenshot();
        }
    }

    public class GetShopScreenshotCommand extends wd9<AddScreenshotsView> {
        public GetShopScreenshotCommand(AddScreenshotsView$$State addScreenshotsView$$State) {
            super("getShopScreenshot", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.getShopScreenshot();
        }
    }

    public class IsUploadButtonVisibleCommand extends wd9<AddScreenshotsView> {
        public final boolean isVisible;

        public IsUploadButtonVisibleCommand(AddScreenshotsView$$State addScreenshotsView$$State, boolean z) {
            super("isUploadButtonVisible", k9.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.isUploadButtonVisible(this.isVisible);
        }
    }

    public class OpenUrlCommand extends wd9<AddScreenshotsView> {
        public final String arg0;

        public OpenUrlCommand(AddScreenshotsView$$State addScreenshotsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<AddScreenshotsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(AddScreenshotsView$$State addScreenshotsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ReplaceLoadBankButtonCommand extends wd9<AddScreenshotsView> {
        public final String value;

        public ReplaceLoadBankButtonCommand(AddScreenshotsView$$State addScreenshotsView$$State, String str) {
            super("replaceLoadBankButton", k9.class);
            this.value = str;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.replaceLoadBankButton(this.value);
        }
    }

    public class ShowHelpScreenshotDialogCommand extends wd9<AddScreenshotsView> {
        public final long id;

        public ShowHelpScreenshotDialogCommand(AddScreenshotsView$$State addScreenshotsView$$State, long j) {
            super("showHelpScreenshotDialog", hx5.class);
            this.id = j;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.showHelpScreenshotDialog(this.id);
        }
    }

    public class ShowLoadingCommand extends wd9<AddScreenshotsView> {
        public final boolean show;

        public ShowLoadingCommand(AddScreenshotsView$$State addScreenshotsView$$State, boolean z) {
            super("showLoading", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.showLoading(this.show);
        }
    }

    public class ShowShopExampleImageCommand extends wd9<AddScreenshotsView> {
        public final String url;

        public ShowShopExampleImageCommand(AddScreenshotsView$$State addScreenshotsView$$State, String str) {
            super("showShopExampleImage", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.showShopExampleImage(this.url);
        }
    }

    public class ShowSomeErrorCommand extends wd9<AddScreenshotsView> {
        public ShowSomeErrorCommand(AddScreenshotsView$$State addScreenshotsView$$State) {
            super("showSomeError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(AddScreenshotsView addScreenshotsView) {
            addScreenshotsView.showSomeError();
        }
    }
}

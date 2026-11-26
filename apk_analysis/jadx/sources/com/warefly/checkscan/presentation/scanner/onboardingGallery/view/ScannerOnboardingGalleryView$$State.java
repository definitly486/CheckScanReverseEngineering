package com.warefly.checkscan.presentation.scanner.onboardingGallery.view;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ScannerOnboardingGalleryView$$State extends kh5<ScannerOnboardingGalleryView> implements ScannerOnboardingGalleryView {
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
            ((ScannerOnboardingGalleryView) it.next()).openUrl(str);
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
            ((ScannerOnboardingGalleryView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    public class OpenUrlCommand extends wd9<ScannerOnboardingGalleryView> {
        public final String arg0;

        public OpenUrlCommand(ScannerOnboardingGalleryView$$State scannerOnboardingGalleryView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerOnboardingGalleryView scannerOnboardingGalleryView) {
            scannerOnboardingGalleryView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ScannerOnboardingGalleryView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ScannerOnboardingGalleryView$$State scannerOnboardingGalleryView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerOnboardingGalleryView scannerOnboardingGalleryView) {
            scannerOnboardingGalleryView.openUrlInCustomTab(this.arg0);
        }
    }
}

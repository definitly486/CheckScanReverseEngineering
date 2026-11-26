package com.warefly.checkscan.presentation.scanner.info.view;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ScannerInfoView$$State extends kh5<ScannerInfoView> implements ScannerInfoView {
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
            ((ScannerInfoView) it.next()).openUrl(str);
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
            ((ScannerInfoView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.scanner.info.view.ScannerInfoView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ScannerInfoView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    public class OpenUrlCommand extends wd9<ScannerInfoView> {
        public final String arg0;

        public OpenUrlCommand(ScannerInfoView$$State scannerInfoView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerInfoView scannerInfoView) {
            scannerInfoView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ScannerInfoView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ScannerInfoView$$State scannerInfoView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ScannerInfoView scannerInfoView) {
            scannerInfoView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<ScannerInfoView> {
        public final List<? extends pz3> data;

        public ShowContentCommand(ScannerInfoView$$State scannerInfoView$$State, List<? extends pz3> list) {
            super("showContent", i9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ScannerInfoView scannerInfoView) {
            scannerInfoView.showContent(this.data);
        }
    }
}

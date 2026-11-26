package com.warefly.checkscan.presentation.operations.base;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OperationsView$$State extends kh5<OperationsView> implements OperationsView {

    public class ShowOperationsCommand extends wd9<OperationsView> {
        public final List<Object> data;
        public final boolean show;

        public ShowOperationsCommand(OperationsView$$State operationsView$$State, boolean z, List<Object> list) {
            super("showOperations", k9.class);
            this.show = z;
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.showOperations(this.show, this.data);
        }
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
            ((OperationsView) it.next()).openUrl(str);
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
            ((OperationsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showAllOperationsLoaded() {
        ShowAllOperationsLoadedCommand showAllOperationsLoadedCommand = new ShowAllOperationsLoadedCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAllOperationsLoadedCommand).b(xd9Var.a, showAllOperationsLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OperationsView) it.next()).showAllOperationsLoaded();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAllOperationsLoadedCommand).a(xd9Var2.a, showAllOperationsLoadedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showEmptyOperations(boolean z) {
        ShowEmptyOperationsCommand showEmptyOperationsCommand = new ShowEmptyOperationsCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyOperationsCommand).b(xd9Var.a, showEmptyOperationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OperationsView) it.next()).showEmptyOperations(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyOperationsCommand).a(xd9Var2.a, showEmptyOperationsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showEmptyOperationsError(boolean z) {
        ShowEmptyOperationsErrorCommand showEmptyOperationsErrorCommand = new ShowEmptyOperationsErrorCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyOperationsErrorCommand).b(xd9Var.a, showEmptyOperationsErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OperationsView) it.next()).showEmptyOperationsError(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyOperationsErrorCommand).a(xd9Var2.a, showEmptyOperationsErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showEmptyOperationsProgress(boolean z) {
        ShowEmptyOperationsProgressCommand showEmptyOperationsProgressCommand = new ShowEmptyOperationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmptyOperationsProgressCommand).b(xd9Var.a, showEmptyOperationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OperationsView) it.next()).showEmptyOperationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmptyOperationsProgressCommand).a(xd9Var2.a, showEmptyOperationsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showOperations(boolean z, List<Object> list) {
        ShowOperationsCommand showOperationsCommand = new ShowOperationsCommand(this, z, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOperationsCommand).b(xd9Var.a, showOperationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OperationsView) it.next()).showOperations(z, list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOperationsCommand).a(xd9Var2.a, showOperationsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showPageOfOperationsProgress(boolean z) {
        ShowPageOfOperationsProgressCommand showPageOfOperationsProgressCommand = new ShowPageOfOperationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPageOfOperationsProgressCommand).b(xd9Var.a, showPageOfOperationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OperationsView) it.next()).showPageOfOperationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPageOfOperationsProgressCommand).a(xd9Var2.a, showPageOfOperationsProgressCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.operations.base.OperationsView
    public void showRefreshOperationsProgress(boolean z) {
        ShowRefreshOperationsProgressCommand showRefreshOperationsProgressCommand = new ShowRefreshOperationsProgressCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showRefreshOperationsProgressCommand).b(xd9Var.a, showRefreshOperationsProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OperationsView) it.next()).showRefreshOperationsProgress(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showRefreshOperationsProgressCommand).a(xd9Var2.a, showRefreshOperationsProgressCommand);
    }

    public class OpenUrlCommand extends wd9<OperationsView> {
        public final String arg0;

        public OpenUrlCommand(OperationsView$$State operationsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OperationsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OperationsView$$State operationsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowAllOperationsLoadedCommand extends wd9<OperationsView> {
        public ShowAllOperationsLoadedCommand(OperationsView$$State operationsView$$State) {
            super("showAllOperationsLoaded", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.showAllOperationsLoaded();
        }
    }

    public class ShowEmptyOperationsCommand extends wd9<OperationsView> {
        public final boolean show;

        public ShowEmptyOperationsCommand(OperationsView$$State operationsView$$State, boolean z) {
            super("showEmptyOperations", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.showEmptyOperations(this.show);
        }
    }

    public class ShowEmptyOperationsErrorCommand extends wd9<OperationsView> {
        public final boolean show;

        public ShowEmptyOperationsErrorCommand(OperationsView$$State operationsView$$State, boolean z) {
            super("showEmptyOperationsError", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.showEmptyOperationsError(this.show);
        }
    }

    public class ShowEmptyOperationsProgressCommand extends wd9<OperationsView> {
        public final boolean show;

        public ShowEmptyOperationsProgressCommand(OperationsView$$State operationsView$$State, boolean z) {
            super("showEmptyOperationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.showEmptyOperationsProgress(this.show);
        }
    }

    public class ShowPageOfOperationsProgressCommand extends wd9<OperationsView> {
        public final boolean show;

        public ShowPageOfOperationsProgressCommand(OperationsView$$State operationsView$$State, boolean z) {
            super("showPageOfOperationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.showPageOfOperationsProgress(this.show);
        }
    }

    public class ShowRefreshOperationsProgressCommand extends wd9<OperationsView> {
        public final boolean show;

        public ShowRefreshOperationsProgressCommand(OperationsView$$State operationsView$$State, boolean z) {
            super("showRefreshOperationsProgress", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(OperationsView operationsView) {
            operationsView.showRefreshOperationsProgress(this.show);
        }
    }
}

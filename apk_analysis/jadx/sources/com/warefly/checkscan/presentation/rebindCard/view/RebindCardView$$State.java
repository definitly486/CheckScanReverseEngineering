package com.warefly.checkscan.presentation.rebindCard.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class RebindCardView$$State extends kh5<RebindCardView> implements RebindCardView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.rebindCard.view.RebindCardView
    public void dismissDialog() {
        DismissDialogCommand dismissDialogCommand = new DismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDialogCommand).b(xd9Var.a, dismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RebindCardView) it.next()).dismissDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissDialogCommand).a(xd9Var2.a, dismissDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.rebindCard.view.RebindCardView
    public void openCustomTab(String str) {
        OpenCustomTabCommand openCustomTabCommand = new OpenCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openCustomTabCommand).b(xd9Var.a, openCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((RebindCardView) it.next()).openCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openCustomTabCommand).a(xd9Var2.a, openCustomTabCommand);
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
            ((RebindCardView) it.next()).openUrl(str);
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
            ((RebindCardView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    public class DismissDialogCommand extends wd9<RebindCardView> {
        public DismissDialogCommand(RebindCardView$$State rebindCardView$$State) {
            super("dismissDialog", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(RebindCardView rebindCardView) {
            rebindCardView.dismissDialog();
        }
    }

    public class OpenCustomTabCommand extends wd9<RebindCardView> {
        public final String url;

        public OpenCustomTabCommand(RebindCardView$$State rebindCardView$$State, String str) {
            super("openCustomTab", k9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(RebindCardView rebindCardView) {
            rebindCardView.openCustomTab(this.url);
        }
    }

    public class OpenUrlCommand extends wd9<RebindCardView> {
        public final String arg0;

        public OpenUrlCommand(RebindCardView$$State rebindCardView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(RebindCardView rebindCardView) {
            rebindCardView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<RebindCardView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(RebindCardView$$State rebindCardView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(RebindCardView rebindCardView) {
            rebindCardView.openUrlInCustomTab(this.arg0);
        }
    }
}

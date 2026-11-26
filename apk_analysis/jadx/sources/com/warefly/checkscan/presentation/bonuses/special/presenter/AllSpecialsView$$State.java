package com.warefly.checkscan.presentation.bonuses.special.presenter;

import defpackage.b06;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class AllSpecialsView$$State extends kh5<AllSpecialsView> implements AllSpecialsView {
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
            ((AllSpecialsView) it.next()).openUrl(str);
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
            ((AllSpecialsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public void showAdInfoDialog(b06 b06Var) {
        ShowAdInfoDialogCommand showAdInfoDialogCommand = new ShowAdInfoDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAdInfoDialogCommand).b(xd9Var.a, showAdInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllSpecialsView) it.next()).showAdInfoDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAdInfoDialogCommand).a(xd9Var2.a, showAdInfoDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public void showCouldntLoadPage(boolean z) {
        ShowCouldntLoadPageCommand showCouldntLoadPageCommand = new ShowCouldntLoadPageCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadPageCommand).b(xd9Var.a, showCouldntLoadPageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllSpecialsView) it.next()).showCouldntLoadPage(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadPageCommand).a(xd9Var2.a, showCouldntLoadPageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public void showLoadingPage(boolean z) {
        ShowLoadingPageCommand showLoadingPageCommand = new ShowLoadingPageCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingPageCommand).b(xd9Var.a, showLoadingPageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllSpecialsView) it.next()).showLoadingPage(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingPageCommand).a(xd9Var2.a, showLoadingPageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.special.presenter.AllSpecialsView
    public void showSpecials(List<? extends pz3> list) {
        ShowSpecialsCommand showSpecialsCommand = new ShowSpecialsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSpecialsCommand).b(xd9Var.a, showSpecialsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((AllSpecialsView) it.next()).showSpecials(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSpecialsCommand).a(xd9Var2.a, showSpecialsCommand);
    }

    public class OpenUrlCommand extends wd9<AllSpecialsView> {
        public final String arg0;

        public OpenUrlCommand(AllSpecialsView$$State allSpecialsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AllSpecialsView allSpecialsView) {
            allSpecialsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<AllSpecialsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(AllSpecialsView$$State allSpecialsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(AllSpecialsView allSpecialsView) {
            allSpecialsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowAdInfoDialogCommand extends wd9<AllSpecialsView> {
        public final b06 ordInfo;

        public ShowAdInfoDialogCommand(AllSpecialsView$$State allSpecialsView$$State, b06 b06Var) {
            super("showAdInfoDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(AllSpecialsView allSpecialsView) {
            allSpecialsView.showAdInfoDialog(this.ordInfo);
        }
    }

    public class ShowCouldntLoadPageCommand extends wd9<AllSpecialsView> {
        public final boolean arg0;

        public ShowCouldntLoadPageCommand(AllSpecialsView$$State allSpecialsView$$State, boolean z) {
            super("showCouldntLoadPage", k9.class);
            this.arg0 = z;
        }

        @Override // defpackage.wd9
        public void apply(AllSpecialsView allSpecialsView) {
            allSpecialsView.showCouldntLoadPage(this.arg0);
        }
    }

    public class ShowLoadingPageCommand extends wd9<AllSpecialsView> {
        public final boolean arg0;

        public ShowLoadingPageCommand(AllSpecialsView$$State allSpecialsView$$State, boolean z) {
            super("showLoadingPage", k9.class);
            this.arg0 = z;
        }

        @Override // defpackage.wd9
        public void apply(AllSpecialsView allSpecialsView) {
            allSpecialsView.showLoadingPage(this.arg0);
        }
    }

    public class ShowSpecialsCommand extends wd9<AllSpecialsView> {
        public final List<? extends pz3> specials;

        public ShowSpecialsCommand(AllSpecialsView$$State allSpecialsView$$State, List<? extends pz3> list) {
            super("showSpecials", k9.class);
            this.specials = list;
        }

        @Override // defpackage.wd9
        public void apply(AllSpecialsView allSpecialsView) {
            allSpecialsView.showSpecials(this.specials);
        }
    }
}

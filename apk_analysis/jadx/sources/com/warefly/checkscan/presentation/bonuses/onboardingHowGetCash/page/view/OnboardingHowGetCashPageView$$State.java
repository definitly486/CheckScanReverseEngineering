package com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.q16;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class OnboardingHowGetCashPageView$$State extends kh5<OnboardingHowGetCashPageView> implements OnboardingHowGetCashPageView {
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
            ((OnboardingHowGetCashPageView) it.next()).openUrl(str);
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
            ((OnboardingHowGetCashPageView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.page.view.OnboardingHowGetCashPageView
    public void showContent(q16 q16Var) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, q16Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingHowGetCashPageView) it.next()).showContent(q16Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    public class OpenUrlCommand extends wd9<OnboardingHowGetCashPageView> {
        public final String arg0;

        public OpenUrlCommand(OnboardingHowGetCashPageView$$State onboardingHowGetCashPageView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingHowGetCashPageView onboardingHowGetCashPageView) {
            onboardingHowGetCashPageView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OnboardingHowGetCashPageView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OnboardingHowGetCashPageView$$State onboardingHowGetCashPageView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingHowGetCashPageView onboardingHowGetCashPageView) {
            onboardingHowGetCashPageView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<OnboardingHowGetCashPageView> {
        public final q16 data;

        public ShowContentCommand(OnboardingHowGetCashPageView$$State onboardingHowGetCashPageView$$State, q16 q16Var) {
            super("showContent", i9.class);
            this.data = q16Var;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingHowGetCashPageView onboardingHowGetCashPageView) {
            onboardingHowGetCashPageView.showContent(this.data);
        }
    }
}

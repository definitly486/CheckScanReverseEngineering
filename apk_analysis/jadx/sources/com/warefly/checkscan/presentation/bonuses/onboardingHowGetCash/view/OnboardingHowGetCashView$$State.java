package com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view;

import defpackage.b28;
import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OnboardingHowGetCashView$$State extends kh5<OnboardingHowGetCashView> implements OnboardingHowGetCashView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashView
    public void initProgressBarSlider(List<b28> list) {
        InitProgressBarSliderCommand initProgressBarSliderCommand = new InitProgressBarSliderCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(initProgressBarSliderCommand).b(xd9Var.a, initProgressBarSliderCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingHowGetCashView) it.next()).initProgressBarSlider(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(initProgressBarSliderCommand).a(xd9Var2.a, initProgressBarSliderCommand);
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
            ((OnboardingHowGetCashView) it.next()).openUrl(str);
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
            ((OnboardingHowGetCashView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.view.OnboardingHowGetCashView
    public void setPage(int i) {
        SetPageCommand setPageCommand = new SetPageCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setPageCommand).b(xd9Var.a, setPageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingHowGetCashView) it.next()).setPage(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setPageCommand).a(xd9Var2.a, setPageCommand);
    }

    public class InitProgressBarSliderCommand extends wd9<OnboardingHowGetCashView> {
        public final List<b28> data;

        public InitProgressBarSliderCommand(OnboardingHowGetCashView$$State onboardingHowGetCashView$$State, List<b28> list) {
            super("initProgressBarSlider", i9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingHowGetCashView onboardingHowGetCashView) {
            onboardingHowGetCashView.initProgressBarSlider(this.data);
        }
    }

    public class OpenUrlCommand extends wd9<OnboardingHowGetCashView> {
        public final String arg0;

        public OpenUrlCommand(OnboardingHowGetCashView$$State onboardingHowGetCashView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingHowGetCashView onboardingHowGetCashView) {
            onboardingHowGetCashView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OnboardingHowGetCashView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OnboardingHowGetCashView$$State onboardingHowGetCashView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingHowGetCashView onboardingHowGetCashView) {
            onboardingHowGetCashView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetPageCommand extends wd9<OnboardingHowGetCashView> {
        public final int page;

        public SetPageCommand(OnboardingHowGetCashView$$State onboardingHowGetCashView$$State, int i) {
            super("setPage", i9.class);
            this.page = i;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingHowGetCashView onboardingHowGetCashView) {
            onboardingHowGetCashView.setPage(this.page);
        }
    }
}

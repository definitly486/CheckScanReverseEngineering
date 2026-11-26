package com.warefly.checkscan.presentation.onboardingCard.slides.view;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import defpackage.zj3;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class OnboardingCardSlideView$$State extends kh5<OnboardingCardSlideView> implements OnboardingCardSlideView {
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
            ((OnboardingCardSlideView) it.next()).openUrl(str);
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
            ((OnboardingCardSlideView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingCard.slides.view.OnboardingCardSlideView
    public void showContent(zj3 zj3Var) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, zj3Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingCardSlideView) it.next()).showContent(zj3Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    public class OpenUrlCommand extends wd9<OnboardingCardSlideView> {
        public final String arg0;

        public OpenUrlCommand(OnboardingCardSlideView$$State onboardingCardSlideView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlideView onboardingCardSlideView) {
            onboardingCardSlideView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OnboardingCardSlideView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OnboardingCardSlideView$$State onboardingCardSlideView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlideView onboardingCardSlideView) {
            onboardingCardSlideView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowContentCommand extends wd9<OnboardingCardSlideView> {
        public final zj3 data;

        public ShowContentCommand(OnboardingCardSlideView$$State onboardingCardSlideView$$State, zj3 zj3Var) {
            super("showContent", i9.class);
            this.data = zj3Var;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlideView onboardingCardSlideView) {
            onboardingCardSlideView.showContent(this.data);
        }
    }
}

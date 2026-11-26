package com.warefly.checkscan.presentation.onboardingCard.view;

import androidx.fragment.app.Fragment;
import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OnboardingCardSlidesView$$State extends kh5<OnboardingCardSlidesView> implements OnboardingCardSlidesView {
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
            ((OnboardingCardSlidesView) it.next()).openUrl(str);
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
            ((OnboardingCardSlidesView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView
    public void setLeftButtonVisible(boolean z) {
        SetLeftButtonVisibleCommand setLeftButtonVisibleCommand = new SetLeftButtonVisibleCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setLeftButtonVisibleCommand).b(xd9Var.a, setLeftButtonVisibleCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingCardSlidesView) it.next()).setLeftButtonVisible(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLeftButtonVisibleCommand).a(xd9Var2.a, setLeftButtonVisibleCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView
    public void setSelectedSlide(int i) {
        SetSelectedSlideCommand setSelectedSlideCommand = new SetSelectedSlideCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setSelectedSlideCommand).b(xd9Var.a, setSelectedSlideCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingCardSlidesView) it.next()).setSelectedSlide(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setSelectedSlideCommand).a(xd9Var2.a, setSelectedSlideCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingCard.view.OnboardingCardSlidesView
    public void showFragments(List<? extends Fragment> list) {
        ShowFragmentsCommand showFragmentsCommand = new ShowFragmentsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFragmentsCommand).b(xd9Var.a, showFragmentsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingCardSlidesView) it.next()).showFragments(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFragmentsCommand).a(xd9Var2.a, showFragmentsCommand);
    }

    public class OpenUrlCommand extends wd9<OnboardingCardSlidesView> {
        public final String arg0;

        public OpenUrlCommand(OnboardingCardSlidesView$$State onboardingCardSlidesView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlidesView onboardingCardSlidesView) {
            onboardingCardSlidesView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OnboardingCardSlidesView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OnboardingCardSlidesView$$State onboardingCardSlidesView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlidesView onboardingCardSlidesView) {
            onboardingCardSlidesView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetLeftButtonVisibleCommand extends wd9<OnboardingCardSlidesView> {
        public final boolean isVisible;

        public SetLeftButtonVisibleCommand(OnboardingCardSlidesView$$State onboardingCardSlidesView$$State, boolean z) {
            super("setLeftButtonVisible", hx5.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlidesView onboardingCardSlidesView) {
            onboardingCardSlidesView.setLeftButtonVisible(this.isVisible);
        }
    }

    public class SetSelectedSlideCommand extends wd9<OnboardingCardSlidesView> {
        public final int pos;

        public SetSelectedSlideCommand(OnboardingCardSlidesView$$State onboardingCardSlidesView$$State, int i) {
            super("setSelectedSlide", hx5.class);
            this.pos = i;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlidesView onboardingCardSlidesView) {
            onboardingCardSlidesView.setSelectedSlide(this.pos);
        }
    }

    public class ShowFragmentsCommand extends wd9<OnboardingCardSlidesView> {
        public final List<? extends Fragment> data;

        public ShowFragmentsCommand(OnboardingCardSlidesView$$State onboardingCardSlidesView$$State, List<? extends Fragment> list) {
            super("showFragments", i9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingCardSlidesView onboardingCardSlidesView) {
            onboardingCardSlidesView.showFragments(this.data);
        }
    }
}

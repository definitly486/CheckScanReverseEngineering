package com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view;

import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationModel;
import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OnboardingOneSlideView$$State extends kh5<OnboardingOneSlideView> implements OnboardingOneSlideView {
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
            ((OnboardingOneSlideView) it.next()).openUrl(str);
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
            ((OnboardingOneSlideView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void setUpSlides(List<String> list) {
        SetUpSlidesCommand setUpSlidesCommand = new SetUpSlidesCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setUpSlidesCommand).b(xd9Var.a, setUpSlidesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).setUpSlides(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setUpSlidesCommand).a(xd9Var2.a, setUpSlidesCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void shareReferralLink(String str) {
        ShareReferralLinkCommand shareReferralLinkCommand = new ShareReferralLinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(shareReferralLinkCommand).b(xd9Var.a, shareReferralLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).shareReferralLink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(shareReferralLinkCommand).a(xd9Var2.a, shareReferralLinkCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void showAlfaClientVerification(BankClientVerificationModel bankClientVerificationModel) {
        ShowAlfaClientVerificationCommand showAlfaClientVerificationCommand = new ShowAlfaClientVerificationCommand(this, bankClientVerificationModel);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAlfaClientVerificationCommand).b(xd9Var.a, showAlfaClientVerificationCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).showAlfaClientVerification(bankClientVerificationModel);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAlfaClientVerificationCommand).a(xd9Var2.a, showAlfaClientVerificationCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void showConfetti() {
        ShowConfettiCommand showConfettiCommand = new ShowConfettiCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showConfettiCommand).b(xd9Var.a, showConfettiCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).showConfetti();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showConfettiCommand).a(xd9Var2.a, showConfettiCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void showNetworkError() {
        ShowNetworkErrorCommand showNetworkErrorCommand = new ShowNetworkErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNetworkErrorCommand).b(xd9Var.a, showNetworkErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).showNetworkError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNetworkErrorCommand).a(xd9Var2.a, showNetworkErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void showSlide(OnboardingOneSlideModel onboardingOneSlideModel) {
        ShowSlideCommand showSlideCommand = new ShowSlideCommand(this, onboardingOneSlideModel);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSlideCommand).b(xd9Var.a, showSlideCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).showSlide(onboardingOneSlideModel);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSlideCommand).a(xd9Var2.a, showSlideCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void showSubSlide(OnboardingOneSlideModel onboardingOneSlideModel) {
        ShowSubSlideCommand showSubSlideCommand = new ShowSubSlideCommand(this, onboardingOneSlideModel);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSubSlideCommand).b(xd9Var.a, showSubSlideCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).showSubSlide(onboardingOneSlideModel);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSubSlideCommand).a(xd9Var2.a, showSubSlideCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.view.OnboardingOneSlideView
    public void showToastMessage(String str) {
        ShowToastMessageCommand showToastMessageCommand = new ShowToastMessageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToastMessageCommand).b(xd9Var.a, showToastMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((OnboardingOneSlideView) it.next()).showToastMessage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToastMessageCommand).a(xd9Var2.a, showToastMessageCommand);
    }

    public class OpenUrlCommand extends wd9<OnboardingOneSlideView> {
        public final String arg0;

        public OpenUrlCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<OnboardingOneSlideView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetUpSlidesCommand extends wd9<OnboardingOneSlideView> {
        public final List<String> slides;

        public SetUpSlidesCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, List<String> list) {
            super("setUpSlides", k9.class);
            this.slides = list;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.setUpSlides(this.slides);
        }
    }

    public class ShareReferralLinkCommand extends wd9<OnboardingOneSlideView> {
        public final String referralLink;

        public ShareReferralLinkCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, String str) {
            super("shareReferralLink", hx5.class);
            this.referralLink = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.shareReferralLink(this.referralLink);
        }
    }

    public class ShowAlfaClientVerificationCommand extends wd9<OnboardingOneSlideView> {
        public final BankClientVerificationModel bankClientVerificationModel;

        public ShowAlfaClientVerificationCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, BankClientVerificationModel bankClientVerificationModel) {
            super("showAlfaClientVerification", hx5.class);
            this.bankClientVerificationModel = bankClientVerificationModel;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.showAlfaClientVerification(this.bankClientVerificationModel);
        }
    }

    public class ShowConfettiCommand extends wd9<OnboardingOneSlideView> {
        public ShowConfettiCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State) {
            super("showConfetti", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.showConfetti();
        }
    }

    public class ShowNetworkErrorCommand extends wd9<OnboardingOneSlideView> {
        public ShowNetworkErrorCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State) {
            super("showNetworkError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.showNetworkError();
        }
    }

    public class ShowSlideCommand extends wd9<OnboardingOneSlideView> {
        public final OnboardingOneSlideModel model;

        public ShowSlideCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, OnboardingOneSlideModel onboardingOneSlideModel) {
            super("showSlide", k9.class);
            this.model = onboardingOneSlideModel;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.showSlide(this.model);
        }
    }

    public class ShowSubSlideCommand extends wd9<OnboardingOneSlideView> {
        public final OnboardingOneSlideModel model;

        public ShowSubSlideCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, OnboardingOneSlideModel onboardingOneSlideModel) {
            super("showSubSlide", k9.class);
            this.model = onboardingOneSlideModel;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.showSubSlide(this.model);
        }
    }

    public class ShowToastMessageCommand extends wd9<OnboardingOneSlideView> {
        public final String message;

        public ShowToastMessageCommand(OnboardingOneSlideView$$State onboardingOneSlideView$$State, String str) {
            super("showToastMessage", hx5.class);
            this.message = str;
        }

        @Override // defpackage.wd9
        public void apply(OnboardingOneSlideView onboardingOneSlideView) {
            onboardingOneSlideView.showToastMessage(this.message);
        }
    }
}

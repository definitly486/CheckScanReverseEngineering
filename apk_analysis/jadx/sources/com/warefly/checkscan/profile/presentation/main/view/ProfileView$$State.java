package com.warefly.checkscan.profile.presentation.main.view;

import com.warefly.checkscan.profile.domain.entities.PromocodeBlock;
import defpackage.hx5;
import defpackage.i9;
import defpackage.k9;
import defpackage.kh5;
import defpackage.m6;
import defpackage.pz3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ProfileView$$State extends kh5<ProfileView> implements ProfileView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void copyInviteCode(String str) {
        CopyInviteCodeCommand copyInviteCodeCommand = new CopyInviteCodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(copyInviteCodeCommand).b(xd9Var.a, copyInviteCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).copyInviteCode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(copyInviteCodeCommand).a(xd9Var2.a, copyInviteCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void dismissDeleteWarningDialog() {
        DismissDeleteWarningDialogCommand dismissDeleteWarningDialogCommand = new DismissDeleteWarningDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDeleteWarningDialogCommand).b(xd9Var.a, dismissDeleteWarningDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).dismissDeleteWarningDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissDeleteWarningDialogCommand).a(xd9Var2.a, dismissDeleteWarningDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void dismissLoadingDialog() {
        DismissLoadingDialogCommand dismissLoadingDialogCommand = new DismissLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLoadingDialogCommand).b(xd9Var.a, dismissLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).dismissLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissLoadingDialogCommand).a(xd9Var2.a, dismissLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void dismissLogoutWarningDialog() {
        DismissLogoutWarningDialogCommand dismissLogoutWarningDialogCommand = new DismissLogoutWarningDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLogoutWarningDialogCommand).b(xd9Var.a, dismissLogoutWarningDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).dismissLogoutWarningDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissLogoutWarningDialogCommand).a(xd9Var2.a, dismissLogoutWarningDialogCommand);
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
            ((ProfileView) it.next()).openUrl(str);
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
            ((ProfileView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void requestGallery() {
        RequestGalleryCommand requestGalleryCommand = new RequestGalleryCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(requestGalleryCommand).b(xd9Var.a, requestGalleryCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).requestGallery();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(requestGalleryCommand).a(xd9Var2.a, requestGalleryCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void shareReferralLink(String str) {
        ShareReferralLinkCommand shareReferralLinkCommand = new ShareReferralLinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(shareReferralLinkCommand).b(xd9Var.a, shareReferralLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).shareReferralLink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(shareReferralLinkCommand).a(xd9Var2.a, shareReferralLinkCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showErrorDeleteAccount() {
        ShowErrorDeleteAccountCommand showErrorDeleteAccountCommand = new ShowErrorDeleteAccountCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorDeleteAccountCommand).b(xd9Var.a, showErrorDeleteAccountCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showErrorDeleteAccount();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorDeleteAccountCommand).a(xd9Var2.a, showErrorDeleteAccountCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showErrorTryAgain(boolean z) {
        ShowErrorTryAgainCommand showErrorTryAgainCommand = new ShowErrorTryAgainCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showErrorTryAgainCommand).b(xd9Var.a, showErrorTryAgainCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showErrorTryAgain(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showErrorTryAgainCommand).a(xd9Var2.a, showErrorTryAgainCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showFaqPage(String str) {
        ShowFaqPageCommand showFaqPageCommand = new ShowFaqPageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFaqPageCommand).b(xd9Var.a, showFaqPageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showFaqPage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFaqPageCommand).a(xd9Var2.a, showFaqPageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showLargeFile() {
        ShowLargeFileCommand showLargeFileCommand = new ShowLargeFileCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLargeFileCommand).b(xd9Var.a, showLargeFileCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showLargeFile();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLargeFileCommand).a(xd9Var2.a, showLargeFileCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showLoadingDialog() {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showLoadingSpinner(boolean z) {
        ShowLoadingSpinnerCommand showLoadingSpinnerCommand = new ShowLoadingSpinnerCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingSpinnerCommand).b(xd9Var.a, showLoadingSpinnerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showLoadingSpinner(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingSpinnerCommand).a(xd9Var2.a, showLoadingSpinnerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showNetworkError() {
        ShowNetworkErrorCommand showNetworkErrorCommand = new ShowNetworkErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNetworkErrorCommand).b(xd9Var.a, showNetworkErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showNetworkError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNetworkErrorCommand).a(xd9Var2.a, showNetworkErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showPromocodeEnterBottomSheet(PromocodeBlock promocodeBlock) {
        ShowPromocodeEnterBottomSheetCommand showPromocodeEnterBottomSheetCommand = new ShowPromocodeEnterBottomSheetCommand(this, promocodeBlock);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeEnterBottomSheetCommand).b(xd9Var.a, showPromocodeEnterBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showPromocodeEnterBottomSheet(promocodeBlock);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeEnterBottomSheetCommand).a(xd9Var2.a, showPromocodeEnterBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showPromocodeErrorBottomSheet(m6 m6Var) {
        ShowPromocodeErrorBottomSheetCommand showPromocodeErrorBottomSheetCommand = new ShowPromocodeErrorBottomSheetCommand(this, m6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeErrorBottomSheetCommand).b(xd9Var.a, showPromocodeErrorBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showPromocodeErrorBottomSheet(m6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeErrorBottomSheetCommand).a(xd9Var2.a, showPromocodeErrorBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showScreen(List<? extends pz3> list) {
        ShowScreenCommand showScreenCommand = new ShowScreenCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showScreenCommand).b(xd9Var.a, showScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showScreen(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showScreenCommand).a(xd9Var2.a, showScreenCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showToastMessage(String str) {
        ShowToastMessageCommand showToastMessageCommand = new ShowToastMessageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToastMessageCommand).b(xd9Var.a, showToastMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showToastMessage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToastMessageCommand).a(xd9Var2.a, showToastMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showUnSuccessLogOut() {
        ShowUnSuccessLogOutCommand showUnSuccessLogOutCommand = new ShowUnSuccessLogOutCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnSuccessLogOutCommand).b(xd9Var.a, showUnSuccessLogOutCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showUnSuccessLogOut();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnSuccessLogOutCommand).a(xd9Var2.a, showUnSuccessLogOutCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showWarningDeleteAccount() {
        ShowWarningDeleteAccountCommand showWarningDeleteAccountCommand = new ShowWarningDeleteAccountCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showWarningDeleteAccountCommand).b(xd9Var.a, showWarningDeleteAccountCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showWarningDeleteAccount();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWarningDeleteAccountCommand).a(xd9Var2.a, showWarningDeleteAccountCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.view.ProfileView
    public void showWarningLogoutDialog() {
        ShowWarningLogoutDialogCommand showWarningLogoutDialogCommand = new ShowWarningLogoutDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showWarningLogoutDialogCommand).b(xd9Var.a, showWarningLogoutDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).showWarningLogoutDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWarningLogoutDialogCommand).a(xd9Var2.a, showWarningLogoutDialogCommand);
    }

    public class CopyInviteCodeCommand extends wd9<ProfileView> {
        public final String inviteCode;

        public CopyInviteCodeCommand(ProfileView$$State profileView$$State, String str) {
            super("copyInviteCode", hx5.class);
            this.inviteCode = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.copyInviteCode(this.inviteCode);
        }
    }

    public class DismissDeleteWarningDialogCommand extends wd9<ProfileView> {
        public DismissDeleteWarningDialogCommand(ProfileView$$State profileView$$State) {
            super("dismissDeleteWarningDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.dismissDeleteWarningDialog();
        }
    }

    public class DismissLoadingDialogCommand extends wd9<ProfileView> {
        public DismissLoadingDialogCommand(ProfileView$$State profileView$$State) {
            super("dismissLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.dismissLoadingDialog();
        }
    }

    public class DismissLogoutWarningDialogCommand extends wd9<ProfileView> {
        public DismissLogoutWarningDialogCommand(ProfileView$$State profileView$$State) {
            super("dismissLogoutWarningDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.dismissLogoutWarningDialog();
        }
    }

    public class OpenUrlCommand extends wd9<ProfileView> {
        public final String arg0;

        public OpenUrlCommand(ProfileView$$State profileView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ProfileView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ProfileView$$State profileView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.openUrlInCustomTab(this.arg0);
        }
    }

    public class RequestGalleryCommand extends wd9<ProfileView> {
        public RequestGalleryCommand(ProfileView$$State profileView$$State) {
            super("requestGallery", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.requestGallery();
        }
    }

    public class ShareReferralLinkCommand extends wd9<ProfileView> {
        public final String referralLink;

        public ShareReferralLinkCommand(ProfileView$$State profileView$$State, String str) {
            super("shareReferralLink", hx5.class);
            this.referralLink = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.shareReferralLink(this.referralLink);
        }
    }

    public class ShowErrorDeleteAccountCommand extends wd9<ProfileView> {
        public ShowErrorDeleteAccountCommand(ProfileView$$State profileView$$State) {
            super("showErrorDeleteAccount", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showErrorDeleteAccount();
        }
    }

    public class ShowErrorTryAgainCommand extends wd9<ProfileView> {
        public final boolean show;

        public ShowErrorTryAgainCommand(ProfileView$$State profileView$$State, boolean z) {
            super("showErrorTryAgain", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showErrorTryAgain(this.show);
        }
    }

    public class ShowFaqPageCommand extends wd9<ProfileView> {
        public final String faqUrl;

        public ShowFaqPageCommand(ProfileView$$State profileView$$State, String str) {
            super("showFaqPage", hx5.class);
            this.faqUrl = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showFaqPage(this.faqUrl);
        }
    }

    public class ShowLargeFileCommand extends wd9<ProfileView> {
        public ShowLargeFileCommand(ProfileView$$State profileView$$State) {
            super("showLargeFile", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showLargeFile();
        }
    }

    public class ShowLoadingDialogCommand extends wd9<ProfileView> {
        public ShowLoadingDialogCommand(ProfileView$$State profileView$$State) {
            super("showLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showLoadingDialog();
        }
    }

    public class ShowLoadingSpinnerCommand extends wd9<ProfileView> {
        public final boolean show;

        public ShowLoadingSpinnerCommand(ProfileView$$State profileView$$State, boolean z) {
            super("showLoadingSpinner", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showLoadingSpinner(this.show);
        }
    }

    public class ShowNetworkErrorCommand extends wd9<ProfileView> {
        public ShowNetworkErrorCommand(ProfileView$$State profileView$$State) {
            super("showNetworkError", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showNetworkError();
        }
    }

    public class ShowPromocodeEnterBottomSheetCommand extends wd9<ProfileView> {
        public final PromocodeBlock promocodeBlock;

        public ShowPromocodeEnterBottomSheetCommand(ProfileView$$State profileView$$State, PromocodeBlock promocodeBlock) {
            super("showPromocodeEnterBottomSheet", hx5.class);
            this.promocodeBlock = promocodeBlock;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showPromocodeEnterBottomSheet(this.promocodeBlock);
        }
    }

    public class ShowPromocodeErrorBottomSheetCommand extends wd9<ProfileView> {
        public final m6 error;

        public ShowPromocodeErrorBottomSheetCommand(ProfileView$$State profileView$$State, m6 m6Var) {
            super("showPromocodeErrorBottomSheet", hx5.class);
            this.error = m6Var;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showPromocodeErrorBottomSheet(this.error);
        }
    }

    public class ShowScreenCommand extends wd9<ProfileView> {
        public final List<? extends pz3> data;

        public ShowScreenCommand(ProfileView$$State profileView$$State, List<? extends pz3> list) {
            super("showScreen", i9.class);
            this.data = list;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showScreen(this.data);
        }
    }

    public class ShowToastMessageCommand extends wd9<ProfileView> {
        public final String message;

        public ShowToastMessageCommand(ProfileView$$State profileView$$State, String str) {
            super("showToastMessage", hx5.class);
            this.message = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showToastMessage(this.message);
        }
    }

    public class ShowUnSuccessLogOutCommand extends wd9<ProfileView> {
        public ShowUnSuccessLogOutCommand(ProfileView$$State profileView$$State) {
            super("showUnSuccessLogOut", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showUnSuccessLogOut();
        }
    }

    public class ShowWarningDeleteAccountCommand extends wd9<ProfileView> {
        public ShowWarningDeleteAccountCommand(ProfileView$$State profileView$$State) {
            super("showWarningDeleteAccount", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showWarningDeleteAccount();
        }
    }

    public class ShowWarningLogoutDialogCommand extends wd9<ProfileView> {
        public ShowWarningLogoutDialogCommand(ProfileView$$State profileView$$State) {
            super("showWarningLogoutDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.showWarningLogoutDialog();
        }
    }
}

package com.warefly.checkscan.presentation.bonuses.main.view;

import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.b06;
import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.m6;
import defpackage.pz3;
import defpackage.q6;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class BonusesMainNewView$$State extends kh5<BonusesMainNewView> implements BonusesMainNewView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void changeSearchVisibility(boolean z) {
        ChangeSearchVisibilityCommand changeSearchVisibilityCommand = new ChangeSearchVisibilityCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(changeSearchVisibilityCommand).b(xd9Var.a, changeSearchVisibilityCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).changeSearchVisibility(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(changeSearchVisibilityCommand).a(xd9Var2.a, changeSearchVisibilityCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void dismissLoadingDialog() {
        DismissLoadingDialogCommand dismissLoadingDialogCommand = new DismissLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissLoadingDialogCommand).b(xd9Var.a, dismissLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).dismissLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissLoadingDialogCommand).a(xd9Var2.a, dismissLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void openCustomTab(String str) {
        OpenCustomTabCommand openCustomTabCommand = new OpenCustomTabCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openCustomTabCommand).b(xd9Var.a, openCustomTabCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).openCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openCustomTabCommand).a(xd9Var2.a, openCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void openDeeplink(String str) {
        OpenDeeplinkCommand openDeeplinkCommand = new OpenDeeplinkCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(openDeeplinkCommand).b(xd9Var.a, openDeeplinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).openDeeplink(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openDeeplinkCommand).a(xd9Var2.a, openDeeplinkCommand);
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
            ((BonusesMainNewView) it.next()).openUrl(str);
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
            ((BonusesMainNewView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void scrollNextSpecials(int i) {
        ScrollNextSpecialsCommand scrollNextSpecialsCommand = new ScrollNextSpecialsCommand(this, i);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(scrollNextSpecialsCommand).b(xd9Var.a, scrollNextSpecialsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).scrollNextSpecials(i);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(scrollNextSpecialsCommand).a(xd9Var2.a, scrollNextSpecialsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void setAvatar(String str) {
        SetAvatarCommand setAvatarCommand = new SetAvatarCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setAvatarCommand).b(xd9Var.a, setAvatarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).setAvatar(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setAvatarCommand).a(xd9Var2.a, setAvatarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void setBadgeType(ProfileBadgeView.b bVar) {
        SetBadgeTypeCommand setBadgeTypeCommand = new SetBadgeTypeCommand(this, bVar);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setBadgeTypeCommand).b(xd9Var.a, setBadgeTypeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).setBadgeType(bVar);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setBadgeTypeCommand).a(xd9Var2.a, setBadgeTypeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void showContent(List<? extends pz3> list) {
        ShowContentCommand showContentCommand = new ShowContentCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showContentCommand).b(xd9Var.a, showContentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).showContent(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showContentCommand).a(xd9Var2.a, showContentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void showLoadingDialog() {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingDialogCommand).b(xd9Var.a, showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).showLoadingDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingDialogCommand).a(xd9Var2.a, showLoadingDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void showOrdDialog(b06 b06Var) {
        ShowOrdDialogCommand showOrdDialogCommand = new ShowOrdDialogCommand(this, b06Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showOrdDialogCommand).b(xd9Var.a, showOrdDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).showOrdDialog(b06Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showOrdDialogCommand).a(xd9Var2.a, showOrdDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void showPromocodeErrorBottomSheet(m6 m6Var) {
        ShowPromocodeErrorBottomSheetCommand showPromocodeErrorBottomSheetCommand = new ShowPromocodeErrorBottomSheetCommand(this, m6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeErrorBottomSheetCommand).b(xd9Var.a, showPromocodeErrorBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).showPromocodeErrorBottomSheet(m6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeErrorBottomSheetCommand).a(xd9Var2.a, showPromocodeErrorBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void showPromocodeSuccessBottomSheet(q6 q6Var) {
        ShowPromocodeSuccessBottomSheetCommand showPromocodeSuccessBottomSheetCommand = new ShowPromocodeSuccessBottomSheetCommand(this, q6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeSuccessBottomSheetCommand).b(xd9Var.a, showPromocodeSuccessBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).showPromocodeSuccessBottomSheet(q6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeSuccessBottomSheetCommand).a(xd9Var2.a, showPromocodeSuccessBottomSheetCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void showToolbar(boolean z) {
        ShowToolbarCommand showToolbarCommand = new ShowToolbarCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToolbarCommand).b(xd9Var.a, showToolbarCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).showToolbar(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToolbarCommand).a(xd9Var2.a, showToolbarCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public void showUnreadNotificationsBadge(boolean z) {
        ShowUnreadNotificationsBadgeCommand showUnreadNotificationsBadgeCommand = new ShowUnreadNotificationsBadgeCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnreadNotificationsBadgeCommand).b(xd9Var.a, showUnreadNotificationsBadgeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((BonusesMainNewView) it.next()).showUnreadNotificationsBadge(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnreadNotificationsBadgeCommand).a(xd9Var2.a, showUnreadNotificationsBadgeCommand);
    }

    public class ChangeSearchVisibilityCommand extends wd9<BonusesMainNewView> {
        public final boolean isVisible;

        public ChangeSearchVisibilityCommand(BonusesMainNewView$$State bonusesMainNewView$$State, boolean z) {
            super("changeSearchVisibility", i9.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.changeSearchVisibility(this.isVisible);
        }
    }

    public class DismissLoadingDialogCommand extends wd9<BonusesMainNewView> {
        public DismissLoadingDialogCommand(BonusesMainNewView$$State bonusesMainNewView$$State) {
            super("dismissLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.dismissLoadingDialog();
        }
    }

    public class OpenCustomTabCommand extends wd9<BonusesMainNewView> {
        public final String url;

        public OpenCustomTabCommand(BonusesMainNewView$$State bonusesMainNewView$$State, String str) {
            super("openCustomTab", hx5.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.openCustomTab(this.url);
        }
    }

    public class OpenDeeplinkCommand extends wd9<BonusesMainNewView> {
        public final String deeplink;

        public OpenDeeplinkCommand(BonusesMainNewView$$State bonusesMainNewView$$State, String str) {
            super("openDeeplink", hx5.class);
            this.deeplink = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.openDeeplink(this.deeplink);
        }
    }

    public class OpenUrlCommand extends wd9<BonusesMainNewView> {
        public final String arg0;

        public OpenUrlCommand(BonusesMainNewView$$State bonusesMainNewView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BonusesMainNewView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BonusesMainNewView$$State bonusesMainNewView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ScrollNextSpecialsCommand extends wd9<BonusesMainNewView> {
        public final int pos;

        public ScrollNextSpecialsCommand(BonusesMainNewView$$State bonusesMainNewView$$State, int i) {
            super("scrollNextSpecials", hx5.class);
            this.pos = i;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.scrollNextSpecials(this.pos);
        }
    }

    public class SetAvatarCommand extends wd9<BonusesMainNewView> {
        public final String url;

        public SetAvatarCommand(BonusesMainNewView$$State bonusesMainNewView$$State, String str) {
            super("setAvatar", i9.class);
            this.url = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.setAvatar(this.url);
        }
    }

    public class SetBadgeTypeCommand extends wd9<BonusesMainNewView> {
        public final ProfileBadgeView.b badge;

        public SetBadgeTypeCommand(BonusesMainNewView$$State bonusesMainNewView$$State, ProfileBadgeView.b bVar) {
            super("setBadgeType", i9.class);
            this.badge = bVar;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.setBadgeType(this.badge);
        }
    }

    public class ShowContentCommand extends wd9<BonusesMainNewView> {
        public final List<? extends pz3> content;

        public ShowContentCommand(BonusesMainNewView$$State bonusesMainNewView$$State, List<? extends pz3> list) {
            super("showContent", i9.class);
            this.content = list;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.showContent(this.content);
        }
    }

    public class ShowLoadingDialogCommand extends wd9<BonusesMainNewView> {
        public ShowLoadingDialogCommand(BonusesMainNewView$$State bonusesMainNewView$$State) {
            super("showLoadingDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.showLoadingDialog();
        }
    }

    public class ShowOrdDialogCommand extends wd9<BonusesMainNewView> {
        public final b06 ordInfo;

        public ShowOrdDialogCommand(BonusesMainNewView$$State bonusesMainNewView$$State, b06 b06Var) {
            super("showOrdDialog", hx5.class);
            this.ordInfo = b06Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.showOrdDialog(this.ordInfo);
        }
    }

    public class ShowPromocodeErrorBottomSheetCommand extends wd9<BonusesMainNewView> {
        public final m6 error;

        public ShowPromocodeErrorBottomSheetCommand(BonusesMainNewView$$State bonusesMainNewView$$State, m6 m6Var) {
            super("showPromocodeErrorBottomSheet", hx5.class);
            this.error = m6Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.showPromocodeErrorBottomSheet(this.error);
        }
    }

    public class ShowPromocodeSuccessBottomSheetCommand extends wd9<BonusesMainNewView> {
        public final q6 success;

        public ShowPromocodeSuccessBottomSheetCommand(BonusesMainNewView$$State bonusesMainNewView$$State, q6 q6Var) {
            super("showPromocodeSuccessBottomSheet", hx5.class);
            this.success = q6Var;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.showPromocodeSuccessBottomSheet(this.success);
        }
    }

    public class ShowToolbarCommand extends wd9<BonusesMainNewView> {
        public final boolean isVisible;

        public ShowToolbarCommand(BonusesMainNewView$$State bonusesMainNewView$$State, boolean z) {
            super("showToolbar", i9.class);
            this.isVisible = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.showToolbar(this.isVisible);
        }
    }

    public class ShowUnreadNotificationsBadgeCommand extends wd9<BonusesMainNewView> {
        public final boolean unread;

        public ShowUnreadNotificationsBadgeCommand(BonusesMainNewView$$State bonusesMainNewView$$State, boolean z) {
            super("showUnreadNotificationsBadge", hx5.class);
            this.unread = z;
        }

        @Override // defpackage.wd9
        public void apply(BonusesMainNewView bonusesMainNewView) {
            bonusesMainNewView.showUnreadNotificationsBadge(this.unread);
        }
    }
}

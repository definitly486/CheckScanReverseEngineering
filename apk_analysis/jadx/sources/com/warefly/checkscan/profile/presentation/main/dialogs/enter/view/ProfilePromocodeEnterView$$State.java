package com.warefly.checkscan.profile.presentation.main.dialogs.enter.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.q6;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ProfilePromocodeEnterView$$State extends kh5<ProfilePromocodeEnterView> implements ProfilePromocodeEnterView {

    public class ShowPromocodeErrorCommand extends wd9<ProfilePromocodeEnterView> {
        public final boolean show;
        public final String text;

        public ShowPromocodeErrorCommand(ProfilePromocodeEnterView$$State profilePromocodeEnterView$$State, boolean z, String str) {
            super("showPromocodeError", k9.class);
            this.show = z;
            this.text = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfilePromocodeEnterView profilePromocodeEnterView) {
            profilePromocodeEnterView.showPromocodeError(this.show, this.text);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public void dismissSheet() {
        DismissSheetCommand dismissSheetCommand = new DismissSheetCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissSheetCommand).b(xd9Var.a, dismissSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfilePromocodeEnterView) it.next()).dismissSheet();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissSheetCommand).a(xd9Var2.a, dismissSheetCommand);
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
            ((ProfilePromocodeEnterView) it.next()).openUrl(str);
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
            ((ProfilePromocodeEnterView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public void showButtonLoading(boolean z) {
        ShowButtonLoadingCommand showButtonLoadingCommand = new ShowButtonLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showButtonLoadingCommand).b(xd9Var.a, showButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfilePromocodeEnterView) it.next()).showButtonLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showButtonLoadingCommand).a(xd9Var2.a, showButtonLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public void showPromocodeError(boolean z, String str) {
        ShowPromocodeErrorCommand showPromocodeErrorCommand = new ShowPromocodeErrorCommand(this, z, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeErrorCommand).b(xd9Var.a, showPromocodeErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfilePromocodeEnterView) it.next()).showPromocodeError(z, str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeErrorCommand).a(xd9Var2.a, showPromocodeErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterView
    public void showPromocodeSuccessBottomSheet(q6 q6Var) {
        ShowPromocodeSuccessBottomSheetCommand showPromocodeSuccessBottomSheetCommand = new ShowPromocodeSuccessBottomSheetCommand(this, q6Var);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showPromocodeSuccessBottomSheetCommand).b(xd9Var.a, showPromocodeSuccessBottomSheetCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfilePromocodeEnterView) it.next()).showPromocodeSuccessBottomSheet(q6Var);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showPromocodeSuccessBottomSheetCommand).a(xd9Var2.a, showPromocodeSuccessBottomSheetCommand);
    }

    public class DismissSheetCommand extends wd9<ProfilePromocodeEnterView> {
        public DismissSheetCommand(ProfilePromocodeEnterView$$State profilePromocodeEnterView$$State) {
            super("dismissSheet", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(ProfilePromocodeEnterView profilePromocodeEnterView) {
            profilePromocodeEnterView.dismissSheet();
        }
    }

    public class OpenUrlCommand extends wd9<ProfilePromocodeEnterView> {
        public final String arg0;

        public OpenUrlCommand(ProfilePromocodeEnterView$$State profilePromocodeEnterView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfilePromocodeEnterView profilePromocodeEnterView) {
            profilePromocodeEnterView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ProfilePromocodeEnterView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ProfilePromocodeEnterView$$State profilePromocodeEnterView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ProfilePromocodeEnterView profilePromocodeEnterView) {
            profilePromocodeEnterView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowButtonLoadingCommand extends wd9<ProfilePromocodeEnterView> {
        public final boolean loading;

        public ShowButtonLoadingCommand(ProfilePromocodeEnterView$$State profilePromocodeEnterView$$State, boolean z) {
            super("showButtonLoading", k9.class);
            this.loading = z;
        }

        @Override // defpackage.wd9
        public void apply(ProfilePromocodeEnterView profilePromocodeEnterView) {
            profilePromocodeEnterView.showButtonLoading(this.loading);
        }
    }

    public class ShowPromocodeSuccessBottomSheetCommand extends wd9<ProfilePromocodeEnterView> {
        public final q6 success;

        public ShowPromocodeSuccessBottomSheetCommand(ProfilePromocodeEnterView$$State profilePromocodeEnterView$$State, q6 q6Var) {
            super("showPromocodeSuccessBottomSheet", hx5.class);
            this.success = q6Var;
        }

        @Override // defpackage.wd9
        public void apply(ProfilePromocodeEnterView profilePromocodeEnterView) {
            profilePromocodeEnterView.showPromocodeSuccessBottomSheet(this.success);
        }
    }
}

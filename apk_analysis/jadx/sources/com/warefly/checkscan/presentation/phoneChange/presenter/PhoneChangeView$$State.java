package com.warefly.checkscan.presentation.phoneChange.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class PhoneChangeView$$State extends kh5<PhoneChangeView> implements PhoneChangeView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void onFinish() {
        OnFinishCommand onFinishCommand = new OnFinishCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(onFinishCommand).b(xd9Var.a, onFinishCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).onFinish();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(onFinishCommand).a(xd9Var2.a, onFinishCommand);
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
            ((PhoneChangeView) it.next()).openUrl(str);
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
            ((PhoneChangeView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showAccountPhone(String str) {
        ShowAccountPhoneCommand showAccountPhoneCommand = new ShowAccountPhoneCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showAccountPhoneCommand).b(xd9Var.a, showAccountPhoneCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showAccountPhone(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showAccountPhoneCommand).a(xd9Var2.a, showAccountPhoneCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showFailService(String str) {
        ShowFailServiceCommand showFailServiceCommand = new ShowFailServiceCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showFailServiceCommand).b(xd9Var.a, showFailServiceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showFailService(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showFailServiceCommand).a(xd9Var2.a, showFailServiceCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showIncorrectPhoneMessage(boolean z) {
        ShowIncorrectPhoneMessageCommand showIncorrectPhoneMessageCommand = new ShowIncorrectPhoneMessageCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showIncorrectPhoneMessageCommand).b(xd9Var.a, showIncorrectPhoneMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showIncorrectPhoneMessage(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showIncorrectPhoneMessageCommand).a(xd9Var2.a, showIncorrectPhoneMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showStartPhoneChange(boolean z) {
        ShowStartPhoneChangeCommand showStartPhoneChangeCommand = new ShowStartPhoneChangeCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showStartPhoneChangeCommand).b(xd9Var.a, showStartPhoneChangeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showStartPhoneChange(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showStartPhoneChangeCommand).a(xd9Var2.a, showStartPhoneChangeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showTimesNotExpired() {
        ShowTimesNotExpiredCommand showTimesNotExpiredCommand = new ShowTimesNotExpiredCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimesNotExpiredCommand).b(xd9Var.a, showTimesNotExpiredCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showTimesNotExpired();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimesNotExpiredCommand).a(xd9Var2.a, showTimesNotExpiredCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showUnEnableChangePhone() {
        ShowUnEnableChangePhoneCommand showUnEnableChangePhoneCommand = new ShowUnEnableChangePhoneCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showUnEnableChangePhoneCommand).b(xd9Var.a, showUnEnableChangePhoneCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showUnEnableChangePhone();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showUnEnableChangePhoneCommand).a(xd9Var2.a, showUnEnableChangePhoneCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.phoneChange.presenter.PhoneChangeView
    public void showWaitCode(boolean z) {
        ShowWaitCodeCommand showWaitCodeCommand = new ShowWaitCodeCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showWaitCodeCommand).b(xd9Var.a, showWaitCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((PhoneChangeView) it.next()).showWaitCode(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showWaitCodeCommand).a(xd9Var2.a, showWaitCodeCommand);
    }

    public class OnFinishCommand extends wd9<PhoneChangeView> {
        public OnFinishCommand(PhoneChangeView$$State phoneChangeView$$State) {
            super("onFinish", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.onFinish();
        }
    }

    public class OpenUrlCommand extends wd9<PhoneChangeView> {
        public final String arg0;

        public OpenUrlCommand(PhoneChangeView$$State phoneChangeView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<PhoneChangeView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(PhoneChangeView$$State phoneChangeView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowAccountPhoneCommand extends wd9<PhoneChangeView> {
        public final String phone;

        public ShowAccountPhoneCommand(PhoneChangeView$$State phoneChangeView$$State, String str) {
            super("showAccountPhone", k9.class);
            this.phone = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showAccountPhone(this.phone);
        }
    }

    public class ShowFailServiceCommand extends wd9<PhoneChangeView> {
        public final String message;

        public ShowFailServiceCommand(PhoneChangeView$$State phoneChangeView$$State, String str) {
            super("showFailService", k9.class);
            this.message = str;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showFailService(this.message);
        }
    }

    public class ShowIncorrectPhoneMessageCommand extends wd9<PhoneChangeView> {
        public final boolean show;

        public ShowIncorrectPhoneMessageCommand(PhoneChangeView$$State phoneChangeView$$State, boolean z) {
            super("showIncorrectPhoneMessage", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showIncorrectPhoneMessage(this.show);
        }
    }

    public class ShowLoadingCommand extends wd9<PhoneChangeView> {
        public final boolean show;

        public ShowLoadingCommand(PhoneChangeView$$State phoneChangeView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showLoading(this.show);
        }
    }

    public class ShowStartPhoneChangeCommand extends wd9<PhoneChangeView> {
        public final boolean show;

        public ShowStartPhoneChangeCommand(PhoneChangeView$$State phoneChangeView$$State, boolean z) {
            super("showStartPhoneChange", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showStartPhoneChange(this.show);
        }
    }

    public class ShowTimesNotExpiredCommand extends wd9<PhoneChangeView> {
        public ShowTimesNotExpiredCommand(PhoneChangeView$$State phoneChangeView$$State) {
            super("showTimesNotExpired", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showTimesNotExpired();
        }
    }

    public class ShowUnEnableChangePhoneCommand extends wd9<PhoneChangeView> {
        public ShowUnEnableChangePhoneCommand(PhoneChangeView$$State phoneChangeView$$State) {
            super("showUnEnableChangePhone", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showUnEnableChangePhone();
        }
    }

    public class ShowWaitCodeCommand extends wd9<PhoneChangeView> {
        public final boolean show;

        public ShowWaitCodeCommand(PhoneChangeView$$State phoneChangeView$$State, boolean z) {
            super("showWaitCode", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(PhoneChangeView phoneChangeView) {
            phoneChangeView.showWaitCode(this.show);
        }
    }
}

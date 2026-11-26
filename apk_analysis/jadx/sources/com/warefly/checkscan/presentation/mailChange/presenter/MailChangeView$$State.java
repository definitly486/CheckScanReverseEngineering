package com.warefly.checkscan.presentation.mailChange.presenter;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class MailChangeView$$State extends kh5<MailChangeView> implements MailChangeView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void finishChangeMail() {
        FinishChangeMailCommand finishChangeMailCommand = new FinishChangeMailCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(finishChangeMailCommand).b(xd9Var.a, finishChangeMailCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).finishChangeMail();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(finishChangeMailCommand).a(xd9Var2.a, finishChangeMailCommand);
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
            ((MailChangeView) it.next()).openUrl(str);
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
            ((MailChangeView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void setMailAllowed(boolean z) {
        SetMailAllowedCommand setMailAllowedCommand = new SetMailAllowedCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setMailAllowedCommand).b(xd9Var.a, setMailAllowedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).setMailAllowed(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setMailAllowedCommand).a(xd9Var2.a, setMailAllowedCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showBackendError() {
        ShowBackendErrorCommand showBackendErrorCommand = new ShowBackendErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showBackendErrorCommand).b(xd9Var.a, showBackendErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showBackendError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showBackendErrorCommand).a(xd9Var2.a, showBackendErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showEmailSent(String str) {
        ShowEmailSentCommand showEmailSentCommand = new ShowEmailSentCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailSentCommand).b(xd9Var.a, showEmailSentCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showEmailSent(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailSentCommand).a(xd9Var2.a, showEmailSentCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showEmailUseAlready() {
        ShowEmailUseAlreadyCommand showEmailUseAlreadyCommand = new ShowEmailUseAlreadyCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showEmailUseAlreadyCommand).b(xd9Var.a, showEmailUseAlreadyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showEmailUseAlready();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showEmailUseAlreadyCommand).a(xd9Var2.a, showEmailUseAlreadyCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showIncorrectMailMessage(boolean z) {
        ShowIncorrectMailMessageCommand showIncorrectMailMessageCommand = new ShowIncorrectMailMessageCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showIncorrectMailMessageCommand).b(xd9Var.a, showIncorrectMailMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showIncorrectMailMessage(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showIncorrectMailMessageCommand).a(xd9Var2.a, showIncorrectMailMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showMailUser(String str) {
        ShowMailUserCommand showMailUserCommand = new ShowMailUserCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showMailUserCommand).b(xd9Var.a, showMailUserCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showMailUser(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showMailUserCommand).a(xd9Var2.a, showMailUserCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showNetworkError() {
        ShowNetworkErrorCommand showNetworkErrorCommand = new ShowNetworkErrorCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNetworkErrorCommand).b(xd9Var.a, showNetworkErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showNetworkError();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNetworkErrorCommand).a(xd9Var2.a, showNetworkErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showNoSuchUser() {
        ShowNoSuchUserCommand showNoSuchUserCommand = new ShowNoSuchUserCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showNoSuchUserCommand).b(xd9Var.a, showNoSuchUserCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showNoSuchUser();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showNoSuchUserCommand).a(xd9Var2.a, showNoSuchUserCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void showToastMessage(String str) {
        ShowToastMessageCommand showToastMessageCommand = new ShowToastMessageCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showToastMessageCommand).b(xd9Var.a, showToastMessageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).showToastMessage(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showToastMessageCommand).a(xd9Var2.a, showToastMessageCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.mailChange.presenter.MailChangeView
    public void startChangeMail() {
        StartChangeMailCommand startChangeMailCommand = new StartChangeMailCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(startChangeMailCommand).b(xd9Var.a, startChangeMailCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((MailChangeView) it.next()).startChangeMail();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(startChangeMailCommand).a(xd9Var2.a, startChangeMailCommand);
    }

    public class FinishChangeMailCommand extends wd9<MailChangeView> {
        public FinishChangeMailCommand(MailChangeView$$State mailChangeView$$State) {
            super("finishChangeMail", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.finishChangeMail();
        }
    }

    public class OpenUrlCommand extends wd9<MailChangeView> {
        public final String arg0;

        public OpenUrlCommand(MailChangeView$$State mailChangeView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<MailChangeView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(MailChangeView$$State mailChangeView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetMailAllowedCommand extends wd9<MailChangeView> {
        public final boolean allowed;

        public SetMailAllowedCommand(MailChangeView$$State mailChangeView$$State, boolean z) {
            super("setMailAllowed", k9.class);
            this.allowed = z;
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.setMailAllowed(this.allowed);
        }
    }

    public class ShowBackendErrorCommand extends wd9<MailChangeView> {
        public ShowBackendErrorCommand(MailChangeView$$State mailChangeView$$State) {
            super("showBackendError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showBackendError();
        }
    }

    public class ShowEmailSentCommand extends wd9<MailChangeView> {
        public final String email;

        public ShowEmailSentCommand(MailChangeView$$State mailChangeView$$State, String str) {
            super("showEmailSent", k9.class);
            this.email = str;
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showEmailSent(this.email);
        }
    }

    public class ShowEmailUseAlreadyCommand extends wd9<MailChangeView> {
        public ShowEmailUseAlreadyCommand(MailChangeView$$State mailChangeView$$State) {
            super("showEmailUseAlready", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showEmailUseAlready();
        }
    }

    public class ShowIncorrectMailMessageCommand extends wd9<MailChangeView> {
        public final boolean show;

        public ShowIncorrectMailMessageCommand(MailChangeView$$State mailChangeView$$State, boolean z) {
            super("showIncorrectMailMessage", k9.class);
            this.show = z;
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showIncorrectMailMessage(this.show);
        }
    }

    public class ShowMailUserCommand extends wd9<MailChangeView> {
        public final String mail;

        public ShowMailUserCommand(MailChangeView$$State mailChangeView$$State, String str) {
            super("showMailUser", k9.class);
            this.mail = str;
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showMailUser(this.mail);
        }
    }

    public class ShowNetworkErrorCommand extends wd9<MailChangeView> {
        public ShowNetworkErrorCommand(MailChangeView$$State mailChangeView$$State) {
            super("showNetworkError", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showNetworkError();
        }
    }

    public class ShowNoSuchUserCommand extends wd9<MailChangeView> {
        public ShowNoSuchUserCommand(MailChangeView$$State mailChangeView$$State) {
            super("showNoSuchUser", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showNoSuchUser();
        }
    }

    public class ShowToastMessageCommand extends wd9<MailChangeView> {
        public final String message;

        public ShowToastMessageCommand(MailChangeView$$State mailChangeView$$State, String str) {
            super("showToastMessage", k9.class);
            this.message = str;
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.showToastMessage(this.message);
        }
    }

    public class StartChangeMailCommand extends wd9<MailChangeView> {
        public StartChangeMailCommand(MailChangeView$$State mailChangeView$$State) {
            super("startChangeMail", k9.class);
        }

        @Override // defpackage.wd9
        public void apply(MailChangeView mailChangeView) {
            mailChangeView.startChangeMail();
        }
    }
}

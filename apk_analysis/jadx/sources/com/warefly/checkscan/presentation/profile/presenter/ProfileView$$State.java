package com.warefly.checkscan.presentation.profile.presenter;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.lk3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class ProfileView$$State extends kh5<ProfileView> implements ProfileView {
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
    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowView
    public void setLaunchScreen(lk3... lk3VarArr) {
        SetLaunchScreenCommand setLaunchScreenCommand = new SetLaunchScreenCommand(this, lk3VarArr);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setLaunchScreenCommand).b(xd9Var.a, setLaunchScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ProfileView) it.next()).setLaunchScreen(lk3VarArr);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLaunchScreenCommand).a(xd9Var2.a, setLaunchScreenCommand);
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

    public class SetLaunchScreenCommand extends wd9<ProfileView> {
        public final lk3[] arg0;

        public SetLaunchScreenCommand(ProfileView$$State profileView$$State, lk3[] lk3VarArr) {
            super("setLaunchScreen", hx5.class);
            this.arg0 = lk3VarArr;
        }

        @Override // defpackage.wd9
        public void apply(ProfileView profileView) {
            profileView.setLaunchScreen(this.arg0);
        }
    }
}

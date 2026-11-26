package com.warefly.checkscan.presentation.flows.bonuses.presenter;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.lk3;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class BonusesInnerFlow$$State extends kh5<BonusesInnerFlow> implements BonusesInnerFlow {
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
            ((BonusesInnerFlow) it.next()).openUrl(str);
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
            ((BonusesInnerFlow) it.next()).openUrlInCustomTab(str);
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
            ((BonusesInnerFlow) it.next()).setLaunchScreen(lk3VarArr);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLaunchScreenCommand).a(xd9Var2.a, setLaunchScreenCommand);
    }

    public class OpenUrlCommand extends wd9<BonusesInnerFlow> {
        public final String arg0;

        public OpenUrlCommand(BonusesInnerFlow$$State bonusesInnerFlow$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesInnerFlow bonusesInnerFlow) {
            bonusesInnerFlow.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<BonusesInnerFlow> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(BonusesInnerFlow$$State bonusesInnerFlow$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(BonusesInnerFlow bonusesInnerFlow) {
            bonusesInnerFlow.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetLaunchScreenCommand extends wd9<BonusesInnerFlow> {
        public final lk3[] arg0;

        public SetLaunchScreenCommand(BonusesInnerFlow$$State bonusesInnerFlow$$State, lk3[] lk3VarArr) {
            super("setLaunchScreen", hx5.class);
            this.arg0 = lk3VarArr;
        }

        @Override // defpackage.wd9
        public void apply(BonusesInnerFlow bonusesInnerFlow) {
            bonusesInnerFlow.setLaunchScreen(this.arg0);
        }
    }
}

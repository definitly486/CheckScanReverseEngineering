package com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer;

import defpackage.hx5;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class TransferPointsView$$State extends kh5<TransferPointsView> implements TransferPointsView {

    public class ShowCodeExpiringTimeCommand extends wd9<TransferPointsView> {
        public final long minutes;
        public final long seconds;

        public ShowCodeExpiringTimeCommand(TransferPointsView$$State transferPointsView$$State, long j, long j2) {
            super("showCodeExpiringTime", hx5.class);
            this.minutes = j;
            this.seconds = j2;
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.showCodeExpiringTime(this.minutes, this.seconds);
        }
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
            ((TransferPointsView) it.next()).openUrl(str);
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
            ((TransferPointsView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public void setLoadCodeEnabled(boolean z) {
        SetLoadCodeEnabledCommand setLoadCodeEnabledCommand = new SetLoadCodeEnabledCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setLoadCodeEnabledCommand).b(xd9Var.a, setLoadCodeEnabledCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPointsView) it.next()).setLoadCodeEnabled(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setLoadCodeEnabledCommand).a(xd9Var2.a, setLoadCodeEnabledCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public void showCode(String str) {
        ShowCodeCommand showCodeCommand = new ShowCodeCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCodeCommand).b(xd9Var.a, showCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPointsView) it.next()).showCode(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCodeCommand).a(xd9Var2.a, showCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public void showCodeExpired() {
        ShowCodeExpiredCommand showCodeExpiredCommand = new ShowCodeExpiredCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCodeExpiredCommand).b(xd9Var.a, showCodeExpiredCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPointsView) it.next()).showCodeExpired();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCodeExpiredCommand).a(xd9Var2.a, showCodeExpiredCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public void showCodeExpiringTime(long j, long j2) {
        ShowCodeExpiringTimeCommand showCodeExpiringTimeCommand = new ShowCodeExpiringTimeCommand(this, j, j2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCodeExpiringTimeCommand).b(xd9Var.a, showCodeExpiringTimeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPointsView) it.next()).showCodeExpiringTime(j, j2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCodeExpiringTimeCommand).a(xd9Var2.a, showCodeExpiringTimeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public void showCouldntLoadCode() {
        ShowCouldntLoadCodeCommand showCouldntLoadCodeCommand = new ShowCouldntLoadCodeCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showCouldntLoadCodeCommand).b(xd9Var.a, showCouldntLoadCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPointsView) it.next()).showCouldntLoadCode();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showCouldntLoadCodeCommand).a(xd9Var2.a, showCouldntLoadCodeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.bonuses.bonusProgram.transfer.TransferPointsView
    public void showLoading(boolean z) {
        ShowLoadingCommand showLoadingCommand = new ShowLoadingCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showLoadingCommand).b(xd9Var.a, showLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((TransferPointsView) it.next()).showLoading(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showLoadingCommand).a(xd9Var2.a, showLoadingCommand);
    }

    public class OpenUrlCommand extends wd9<TransferPointsView> {
        public final String arg0;

        public OpenUrlCommand(TransferPointsView$$State transferPointsView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<TransferPointsView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(TransferPointsView$$State transferPointsView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetLoadCodeEnabledCommand extends wd9<TransferPointsView> {
        public final boolean isEnabled;

        public SetLoadCodeEnabledCommand(TransferPointsView$$State transferPointsView$$State, boolean z) {
            super("setLoadCodeEnabled", hx5.class);
            this.isEnabled = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.setLoadCodeEnabled(this.isEnabled);
        }
    }

    public class ShowCodeCommand extends wd9<TransferPointsView> {
        public final String code;

        public ShowCodeCommand(TransferPointsView$$State transferPointsView$$State, String str) {
            super("showCode", hx5.class);
            this.code = str;
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.showCode(this.code);
        }
    }

    public class ShowCodeExpiredCommand extends wd9<TransferPointsView> {
        public ShowCodeExpiredCommand(TransferPointsView$$State transferPointsView$$State) {
            super("showCodeExpired", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.showCodeExpired();
        }
    }

    public class ShowCouldntLoadCodeCommand extends wd9<TransferPointsView> {
        public ShowCouldntLoadCodeCommand(TransferPointsView$$State transferPointsView$$State) {
            super("showCouldntLoadCode", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.showCouldntLoadCode();
        }
    }

    public class ShowLoadingCommand extends wd9<TransferPointsView> {
        public final boolean isLoading;

        public ShowLoadingCommand(TransferPointsView$$State transferPointsView$$State, boolean z) {
            super("showLoading", hx5.class);
            this.isLoading = z;
        }

        @Override // defpackage.wd9
        public void apply(TransferPointsView transferPointsView) {
            transferPointsView.showLoading(this.isLoading);
        }
    }
}

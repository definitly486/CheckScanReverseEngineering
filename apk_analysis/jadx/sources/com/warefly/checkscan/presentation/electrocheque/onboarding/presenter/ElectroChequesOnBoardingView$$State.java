package com.warefly.checkscan.presentation.electrocheque.onboarding.presenter;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.rv6;
import defpackage.t64;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ElectroChequesOnBoardingView$$State extends kh5<ElectroChequesOnBoardingView> implements ElectroChequesOnBoardingView {
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public void enableButton(boolean z) {
        EnableButtonCommand enableButtonCommand = new EnableButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableButtonCommand).b(xd9Var.a, enableButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ElectroChequesOnBoardingView) it.next()).enableButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableButtonCommand).a(xd9Var2.a, enableButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public void enableRegisteredButton(boolean z) {
        EnableRegisteredButtonCommand enableRegisteredButtonCommand = new EnableRegisteredButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableRegisteredButtonCommand).b(xd9Var.a, enableRegisteredButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ElectroChequesOnBoardingView) it.next()).enableRegisteredButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableRegisteredButtonCommand).a(xd9Var2.a, enableRegisteredButtonCommand);
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
            ((ElectroChequesOnBoardingView) it.next()).openUrl(str);
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
            ((ElectroChequesOnBoardingView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public void showInstructions(List<t64> list) {
        ShowInstructionsCommand showInstructionsCommand = new ShowInstructionsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showInstructionsCommand).b(xd9Var.a, showInstructionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ElectroChequesOnBoardingView) it.next()).showInstructions(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showInstructionsCommand).a(xd9Var2.a, showInstructionsCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView
    public void showQuestions(List<rv6> list) {
        ShowQuestionsCommand showQuestionsCommand = new ShowQuestionsCommand(this, list);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showQuestionsCommand).b(xd9Var.a, showQuestionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((ElectroChequesOnBoardingView) it.next()).showQuestions(list);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showQuestionsCommand).a(xd9Var2.a, showQuestionsCommand);
    }

    public class EnableButtonCommand extends wd9<ElectroChequesOnBoardingView> {
        public final boolean enable;

        public EnableButtonCommand(ElectroChequesOnBoardingView$$State electroChequesOnBoardingView$$State, boolean z) {
            super("enableButton", i9.class);
            this.enable = z;
        }

        @Override // defpackage.wd9
        public void apply(ElectroChequesOnBoardingView electroChequesOnBoardingView) {
            electroChequesOnBoardingView.enableButton(this.enable);
        }
    }

    public class EnableRegisteredButtonCommand extends wd9<ElectroChequesOnBoardingView> {
        public final boolean enable;

        public EnableRegisteredButtonCommand(ElectroChequesOnBoardingView$$State electroChequesOnBoardingView$$State, boolean z) {
            super("enableRegisteredButton", i9.class);
            this.enable = z;
        }

        @Override // defpackage.wd9
        public void apply(ElectroChequesOnBoardingView electroChequesOnBoardingView) {
            electroChequesOnBoardingView.enableRegisteredButton(this.enable);
        }
    }

    public class OpenUrlCommand extends wd9<ElectroChequesOnBoardingView> {
        public final String arg0;

        public OpenUrlCommand(ElectroChequesOnBoardingView$$State electroChequesOnBoardingView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ElectroChequesOnBoardingView electroChequesOnBoardingView) {
            electroChequesOnBoardingView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<ElectroChequesOnBoardingView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(ElectroChequesOnBoardingView$$State electroChequesOnBoardingView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(ElectroChequesOnBoardingView electroChequesOnBoardingView) {
            electroChequesOnBoardingView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowInstructionsCommand extends wd9<ElectroChequesOnBoardingView> {
        public final List<t64> instructions;

        public ShowInstructionsCommand(ElectroChequesOnBoardingView$$State electroChequesOnBoardingView$$State, List<t64> list) {
            super("showInstructions", i9.class);
            this.instructions = list;
        }

        @Override // defpackage.wd9
        public void apply(ElectroChequesOnBoardingView electroChequesOnBoardingView) {
            electroChequesOnBoardingView.showInstructions(this.instructions);
        }
    }

    public class ShowQuestionsCommand extends wd9<ElectroChequesOnBoardingView> {
        public final List<rv6> questions;

        public ShowQuestionsCommand(ElectroChequesOnBoardingView$$State electroChequesOnBoardingView$$State, List<rv6> list) {
            super("showQuestions", i9.class);
            this.questions = list;
        }

        @Override // defpackage.wd9
        public void apply(ElectroChequesOnBoardingView electroChequesOnBoardingView) {
            electroChequesOnBoardingView.showQuestions(this.questions);
        }
    }
}

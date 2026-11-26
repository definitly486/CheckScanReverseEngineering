package com.warefly.checkscan.presentation.qrHand.view;

import defpackage.hx5;
import defpackage.i9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class QrHandView$$State extends kh5<QrHandView> implements QrHandView {

    public class HandleDateErrorCommand extends wd9<QrHandView> {
        public final boolean isEnable;
        public final String text;

        public HandleDateErrorCommand(QrHandView$$State qrHandView$$State, String str, boolean z) {
            super("handleDateError", i9.class);
            this.text = str;
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleDateError(this.text, this.isEnable);
        }
    }

    public class HandleFdErrorCommand extends wd9<QrHandView> {
        public final boolean isEnable;
        public final String text;

        public HandleFdErrorCommand(QrHandView$$State qrHandView$$State, String str, boolean z) {
            super("handleFdError", i9.class);
            this.text = str;
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleFdError(this.text, this.isEnable);
        }
    }

    public class HandleFnErrorCommand extends wd9<QrHandView> {
        public final boolean isEnable;
        public final String text;

        public HandleFnErrorCommand(QrHandView$$State qrHandView$$State, String str, boolean z) {
            super("handleFnError", i9.class);
            this.text = str;
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleFnError(this.text, this.isEnable);
        }
    }

    public class HandleFpErrorCommand extends wd9<QrHandView> {
        public final boolean isEnable;
        public final String text;

        public HandleFpErrorCommand(QrHandView$$State qrHandView$$State, String str, boolean z) {
            super("handleFpError", i9.class);
            this.text = str;
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleFpError(this.text, this.isEnable);
        }
    }

    public class HandleSumErrorCommand extends wd9<QrHandView> {
        public final boolean isEnable;
        public final String text;

        public HandleSumErrorCommand(QrHandView$$State qrHandView$$State, String str, boolean z) {
            super("handleSumError", i9.class);
            this.text = str;
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleSumError(this.text, this.isEnable);
        }
    }

    public class ShowTimePickerCommand extends wd9<QrHandView> {
        public final int maxHour;
        public final int maxMinutes;

        public ShowTimePickerCommand(QrHandView$$State qrHandView$$State, int i, int i2) {
            super("showTimePicker", hx5.class);
            this.maxHour = i;
            this.maxMinutes = i2;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.showTimePicker(this.maxHour, this.maxMinutes);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void changeFocusAndShowKeyboard() {
        ChangeFocusAndShowKeyboardCommand changeFocusAndShowKeyboardCommand = new ChangeFocusAndShowKeyboardCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(changeFocusAndShowKeyboardCommand).b(xd9Var.a, changeFocusAndShowKeyboardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).changeFocusAndShowKeyboard();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(changeFocusAndShowKeyboardCommand).a(xd9Var2.a, changeFocusAndShowKeyboardCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleDateError(String str, boolean z) {
        HandleDateErrorCommand handleDateErrorCommand = new HandleDateErrorCommand(this, str, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleDateErrorCommand).b(xd9Var.a, handleDateErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleDateError(str, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleDateErrorCommand).a(xd9Var2.a, handleDateErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleDateHelperTextEnable(boolean z) {
        HandleDateHelperTextEnableCommand handleDateHelperTextEnableCommand = new HandleDateHelperTextEnableCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleDateHelperTextEnableCommand).b(xd9Var.a, handleDateHelperTextEnableCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleDateHelperTextEnable(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleDateHelperTextEnableCommand).a(xd9Var2.a, handleDateHelperTextEnableCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleFdError(String str, boolean z) {
        HandleFdErrorCommand handleFdErrorCommand = new HandleFdErrorCommand(this, str, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleFdErrorCommand).b(xd9Var.a, handleFdErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleFdError(str, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleFdErrorCommand).a(xd9Var2.a, handleFdErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleFdHelperTextEnable(boolean z) {
        HandleFdHelperTextEnableCommand handleFdHelperTextEnableCommand = new HandleFdHelperTextEnableCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleFdHelperTextEnableCommand).b(xd9Var.a, handleFdHelperTextEnableCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleFdHelperTextEnable(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleFdHelperTextEnableCommand).a(xd9Var2.a, handleFdHelperTextEnableCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleFnError(String str, boolean z) {
        HandleFnErrorCommand handleFnErrorCommand = new HandleFnErrorCommand(this, str, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleFnErrorCommand).b(xd9Var.a, handleFnErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleFnError(str, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleFnErrorCommand).a(xd9Var2.a, handleFnErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleFnHelperTextEnable(boolean z) {
        HandleFnHelperTextEnableCommand handleFnHelperTextEnableCommand = new HandleFnHelperTextEnableCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleFnHelperTextEnableCommand).b(xd9Var.a, handleFnHelperTextEnableCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleFnHelperTextEnable(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleFnHelperTextEnableCommand).a(xd9Var2.a, handleFnHelperTextEnableCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleFpError(String str, boolean z) {
        HandleFpErrorCommand handleFpErrorCommand = new HandleFpErrorCommand(this, str, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleFpErrorCommand).b(xd9Var.a, handleFpErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleFpError(str, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleFpErrorCommand).a(xd9Var2.a, handleFpErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleFpHelperTextEnable(boolean z) {
        HandleFpHelperTextEnableCommand handleFpHelperTextEnableCommand = new HandleFpHelperTextEnableCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleFpHelperTextEnableCommand).b(xd9Var.a, handleFpHelperTextEnableCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleFpHelperTextEnable(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleFpHelperTextEnableCommand).a(xd9Var2.a, handleFpHelperTextEnableCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleSendButton(boolean z) {
        HandleSendButtonCommand handleSendButtonCommand = new HandleSendButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleSendButtonCommand).b(xd9Var.a, handleSendButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleSendButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleSendButtonCommand).a(xd9Var2.a, handleSendButtonCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleSumError(String str, boolean z) {
        HandleSumErrorCommand handleSumErrorCommand = new HandleSumErrorCommand(this, str, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleSumErrorCommand).b(xd9Var.a, handleSumErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleSumError(str, z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleSumErrorCommand).a(xd9Var2.a, handleSumErrorCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void handleSumHelperTextEnable(boolean z) {
        HandleSumHelperTextEnableCommand handleSumHelperTextEnableCommand = new HandleSumHelperTextEnableCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(handleSumHelperTextEnableCommand).b(xd9Var.a, handleSumHelperTextEnableCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).handleSumHelperTextEnable(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(handleSumHelperTextEnableCommand).a(xd9Var2.a, handleSumHelperTextEnableCommand);
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
            ((QrHandView) it.next()).openUrl(str);
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
            ((QrHandView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void showDatePicker() {
        ShowDatePickerCommand showDatePickerCommand = new ShowDatePickerCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showDatePickerCommand).b(xd9Var.a, showDatePickerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).showDatePicker();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showDatePickerCommand).a(xd9Var2.a, showDatePickerCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void showSelectedDate(String str) {
        ShowSelectedDateCommand showSelectedDateCommand = new ShowSelectedDateCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showSelectedDateCommand).b(xd9Var.a, showSelectedDateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).showSelectedDate(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showSelectedDateCommand).a(xd9Var2.a, showSelectedDateCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.qrHand.view.QrHandView
    public void showTimePicker(int i, int i2) {
        ShowTimePickerCommand showTimePickerCommand = new ShowTimePickerCommand(this, i, i2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(showTimePickerCommand).b(xd9Var.a, showTimePickerCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((QrHandView) it.next()).showTimePicker(i, i2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(showTimePickerCommand).a(xd9Var2.a, showTimePickerCommand);
    }

    public class ChangeFocusAndShowKeyboardCommand extends wd9<QrHandView> {
        public ChangeFocusAndShowKeyboardCommand(QrHandView$$State qrHandView$$State) {
            super("changeFocusAndShowKeyboard", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.changeFocusAndShowKeyboard();
        }
    }

    public class HandleDateHelperTextEnableCommand extends wd9<QrHandView> {
        public final boolean isEnable;

        public HandleDateHelperTextEnableCommand(QrHandView$$State qrHandView$$State, boolean z) {
            super("handleDateHelperTextEnable", i9.class);
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleDateHelperTextEnable(this.isEnable);
        }
    }

    public class HandleFdHelperTextEnableCommand extends wd9<QrHandView> {
        public final boolean isEnable;

        public HandleFdHelperTextEnableCommand(QrHandView$$State qrHandView$$State, boolean z) {
            super("handleFdHelperTextEnable", i9.class);
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleFdHelperTextEnable(this.isEnable);
        }
    }

    public class HandleFnHelperTextEnableCommand extends wd9<QrHandView> {
        public final boolean isEnable;

        public HandleFnHelperTextEnableCommand(QrHandView$$State qrHandView$$State, boolean z) {
            super("handleFnHelperTextEnable", i9.class);
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleFnHelperTextEnable(this.isEnable);
        }
    }

    public class HandleFpHelperTextEnableCommand extends wd9<QrHandView> {
        public final boolean isEnable;

        public HandleFpHelperTextEnableCommand(QrHandView$$State qrHandView$$State, boolean z) {
            super("handleFpHelperTextEnable", i9.class);
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleFpHelperTextEnable(this.isEnable);
        }
    }

    public class HandleSendButtonCommand extends wd9<QrHandView> {
        public final boolean isEnable;

        public HandleSendButtonCommand(QrHandView$$State qrHandView$$State, boolean z) {
            super("handleSendButton", i9.class);
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleSendButton(this.isEnable);
        }
    }

    public class HandleSumHelperTextEnableCommand extends wd9<QrHandView> {
        public final boolean isEnable;

        public HandleSumHelperTextEnableCommand(QrHandView$$State qrHandView$$State, boolean z) {
            super("handleSumHelperTextEnable", i9.class);
            this.isEnable = z;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.handleSumHelperTextEnable(this.isEnable);
        }
    }

    public class OpenUrlCommand extends wd9<QrHandView> {
        public final String arg0;

        public OpenUrlCommand(QrHandView$$State qrHandView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<QrHandView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(QrHandView$$State qrHandView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.openUrlInCustomTab(this.arg0);
        }
    }

    public class ShowDatePickerCommand extends wd9<QrHandView> {
        public ShowDatePickerCommand(QrHandView$$State qrHandView$$State) {
            super("showDatePicker", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.showDatePicker();
        }
    }

    public class ShowSelectedDateCommand extends wd9<QrHandView> {
        public final String date;

        public ShowSelectedDateCommand(QrHandView$$State qrHandView$$State, String str) {
            super("showSelectedDate", i9.class);
            this.date = str;
        }

        @Override // defpackage.wd9
        public void apply(QrHandView qrHandView) {
            qrHandView.showSelectedDate(this.date);
        }
    }
}

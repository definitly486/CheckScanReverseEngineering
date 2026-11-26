package com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view;

import defpackage.hx5;
import defpackage.k9;
import defpackage.kh5;
import defpackage.wd9;
import defpackage.xd9;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class InputTimePickerView$$State extends kh5<InputTimePickerView> implements InputTimePickerView {

    public class SendSelectedTimeCommand extends wd9<InputTimePickerView> {
        public final int hour;
        public final int minute;

        public SendSelectedTimeCommand(InputTimePickerView$$State inputTimePickerView$$State, int i, int i2) {
            super("sendSelectedTime", hx5.class);
            this.hour = i;
            this.minute = i2;
        }

        @Override // defpackage.wd9
        public void apply(InputTimePickerView inputTimePickerView) {
            inputTimePickerView.sendSelectedTime(this.hour, this.minute);
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public void dismissDialog() {
        DismissDialogCommand dismissDialogCommand = new DismissDialogCommand(this);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(dismissDialogCommand).b(xd9Var.a, dismissDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InputTimePickerView) it.next()).dismissDialog();
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(dismissDialogCommand).a(xd9Var2.a, dismissDialogCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public void enableSelectButton(boolean z) {
        EnableSelectButtonCommand enableSelectButtonCommand = new EnableSelectButtonCommand(this, z);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(enableSelectButtonCommand).b(xd9Var.a, enableSelectButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InputTimePickerView) it.next()).enableSelectButton(z);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(enableSelectButtonCommand).a(xd9Var2.a, enableSelectButtonCommand);
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
            ((InputTimePickerView) it.next()).openUrl(str);
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
            ((InputTimePickerView) it.next()).openUrlInCustomTab(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(openUrlInCustomTabCommand).a(xd9Var2.a, openUrlInCustomTabCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public void sendSelectedTime(int i, int i2) {
        SendSelectedTimeCommand sendSelectedTimeCommand = new SendSelectedTimeCommand(this, i, i2);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(sendSelectedTimeCommand).b(xd9Var.a, sendSelectedTimeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InputTimePickerView) it.next()).sendSelectedTime(i, i2);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(sendSelectedTimeCommand).a(xd9Var2.a, sendSelectedTimeCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public void setHour(String str) {
        SetHourCommand setHourCommand = new SetHourCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setHourCommand).b(xd9Var.a, setHourCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InputTimePickerView) it.next()).setHour(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setHourCommand).a(xd9Var2.a, setHourCommand);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public void setMinutes(String str) {
        SetMinutesCommand setMinutesCommand = new SetMinutesCommand(this, str);
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.a(setMinutesCommand).b(xd9Var.a, setMinutesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        Iterator it = this.mViews.iterator();
        while (it.hasNext()) {
            ((InputTimePickerView) it.next()).setMinutes(str);
        }
        xd9<View> xd9Var2 = this.mViewCommands;
        xd9Var2.a(setMinutesCommand).a(xd9Var2.a, setMinutesCommand);
    }

    public class DismissDialogCommand extends wd9<InputTimePickerView> {
        public DismissDialogCommand(InputTimePickerView$$State inputTimePickerView$$State) {
            super("dismissDialog", hx5.class);
        }

        @Override // defpackage.wd9
        public void apply(InputTimePickerView inputTimePickerView) {
            inputTimePickerView.dismissDialog();
        }
    }

    public class EnableSelectButtonCommand extends wd9<InputTimePickerView> {
        public final boolean enable;

        public EnableSelectButtonCommand(InputTimePickerView$$State inputTimePickerView$$State, boolean z) {
            super("enableSelectButton", k9.class);
            this.enable = z;
        }

        @Override // defpackage.wd9
        public void apply(InputTimePickerView inputTimePickerView) {
            inputTimePickerView.enableSelectButton(this.enable);
        }
    }

    public class OpenUrlCommand extends wd9<InputTimePickerView> {
        public final String arg0;

        public OpenUrlCommand(InputTimePickerView$$State inputTimePickerView$$State, String str) {
            super("openUrl", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(InputTimePickerView inputTimePickerView) {
            inputTimePickerView.openUrl(this.arg0);
        }
    }

    public class OpenUrlInCustomTabCommand extends wd9<InputTimePickerView> {
        public final String arg0;

        public OpenUrlInCustomTabCommand(InputTimePickerView$$State inputTimePickerView$$State, String str) {
            super("openUrlInCustomTab", hx5.class);
            this.arg0 = str;
        }

        @Override // defpackage.wd9
        public void apply(InputTimePickerView inputTimePickerView) {
            inputTimePickerView.openUrlInCustomTab(this.arg0);
        }
    }

    public class SetHourCommand extends wd9<InputTimePickerView> {
        public final String hour;

        public SetHourCommand(InputTimePickerView$$State inputTimePickerView$$State, String str) {
            super("setHour", k9.class);
            this.hour = str;
        }

        @Override // defpackage.wd9
        public void apply(InputTimePickerView inputTimePickerView) {
            inputTimePickerView.setHour(this.hour);
        }
    }

    public class SetMinutesCommand extends wd9<InputTimePickerView> {
        public final String minutes;

        public SetMinutesCommand(InputTimePickerView$$State inputTimePickerView$$State, String str) {
            super("setMinutes", k9.class);
            this.minutes = str;
        }

        @Override // defpackage.wd9
        public void apply(InputTimePickerView inputTimePickerView) {
            inputTimePickerView.setMinutes(this.minutes);
        }
    }
}

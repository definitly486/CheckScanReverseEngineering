package com.warefly.checkscan.presentation.qrHand.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface QrHandView extends BaseView {
    void changeFocusAndShowKeyboard();

    void handleDateError(String str, boolean z);

    void handleDateHelperTextEnable(boolean z);

    void handleFdError(String str, boolean z);

    void handleFdHelperTextEnable(boolean z);

    void handleFnError(String str, boolean z);

    void handleFnHelperTextEnable(boolean z);

    void handleFpError(String str, boolean z);

    void handleFpHelperTextEnable(boolean z);

    void handleSendButton(boolean z);

    void handleSumError(String str, boolean z);

    void handleSumHelperTextEnable(boolean z);

    void showDatePicker();

    void showSelectedDate(String str);

    void showTimePicker(int i, int i2);
}

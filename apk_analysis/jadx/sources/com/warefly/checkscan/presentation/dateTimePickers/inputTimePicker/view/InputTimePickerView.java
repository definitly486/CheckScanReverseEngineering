package com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view;

import com.warefly.checkscan.core.ui.base.architecture.BaseView;

/* JADX INFO: loaded from: classes5.dex */
public interface InputTimePickerView extends BaseView {
    void dismissDialog();

    void enableSelectButton(boolean z);

    void sendSelectedTime(int i, int i2);

    void setHour(String str);

    void setMinutes(String str);
}

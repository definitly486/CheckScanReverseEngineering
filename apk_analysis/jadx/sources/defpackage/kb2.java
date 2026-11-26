package defpackage;

import android.view.View;
import android.widget.EditText;
import com.google.android.material.datepicker.DateSelector;
import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class kb2 implements View.OnFocusChangeListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kb2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                DateSelector.lambda$showKeyboardWithAutoHideBehavior$0((EditText[]) obj, view, z);
                break;
            default:
                InputTimePickerDialog inputTimePickerDialog = (InputTimePickerDialog) obj;
                InputTimePickerDialog.a aVar = InputTimePickerDialog.f;
                if (!z) {
                    inputTimePickerDialog.e().checkHourZeroShouldBeAdded();
                }
                break;
        }
    }
}

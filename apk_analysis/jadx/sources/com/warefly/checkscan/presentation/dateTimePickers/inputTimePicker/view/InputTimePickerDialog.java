package com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view;

import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.view.View;
import android.widget.TextView;
import androidx.core.os.BundleKt;
import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment;
import com.warefly.checkscan.databinding.DialogInputTimePickerBinding;
import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.presenter.InputTimePickerPresenter;
import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerDialog;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bs6;
import defpackage.fm3;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.kb2;
import defpackage.lb7;
import defpackage.le9;
import defpackage.nl3;
import defpackage.qa8;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class InputTimePickerDialog extends BaseDialogFragment<DialogInputTimePickerBinding> implements InputTimePickerView {
    public static final a f;
    public static final /* synthetic */ ze4<Object>[] g;
    public final gl4 c;
    public final int d;
    public final int e;
    public InputTimePickerPresenter presenter;

    public static final class a {
    }

    public final class b extends c {
    }

    public class c implements InputFilter {
        public final int a;

        public c(int i) {
            this.a = i;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            charSequence.getClass();
            spanned.getClass();
            try {
                CharSequence charSequenceSubSequence = spanned.subSequence(0, i3);
                CharSequence charSequenceSubSequence2 = spanned.subSequence(i4, spanned.length());
                StringBuilder sb = new StringBuilder();
                sb.append((Object) charSequenceSubSequence);
                sb.append((Object) charSequence);
                sb.append((Object) charSequenceSubSequence2);
                String string = sb.toString();
                int i5 = Integer.parseInt(string);
                if (string.length() > 2) {
                    return new String();
                }
                if (i5 <= this.a && i5 >= 0) {
                    return null;
                }
                j59 j59Var = j59.a;
                return new String();
            } catch (Throwable unused) {
            }
        }
    }

    public final class d extends c {
        public final int b;

        public d(int i, int i2) {
            super(i2);
            this.b = i;
        }

        @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerDialog.c, android.text.InputFilter
        public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            charSequence.getClass();
            spanned.getClass();
            InputTimePickerDialog inputTimePickerDialog = InputTimePickerDialog.this;
            try {
                CharSequence charSequenceSubSequence = spanned.subSequence(0, i3);
                CharSequence charSequenceSubSequence2 = spanned.subSequence(i4, spanned.length());
                StringBuilder sb = new StringBuilder();
                sb.append((Object) charSequenceSubSequence);
                sb.append((Object) charSequence);
                sb.append((Object) charSequenceSubSequence2);
                String string = sb.toString();
                int i5 = Integer.parseInt(string);
                if (string.length() > 2) {
                    return new String();
                }
                Integer num = inputTimePickerDialog.e().getTimeState().getValue().a;
                int i6 = (num == null || num.intValue() < this.b) ? 59 : this.a;
                if (i5 >= 0 && i5 <= i6) {
                    return null;
                }
                j59 j59Var = j59.a;
                return new String();
            } catch (Throwable unused) {
            }
        }
    }

    public static final class e extends gh4 implements fm3<CharSequence, Integer, Integer, Integer, j59> {
        public e() {
            super(4);
        }

        @Override // defpackage.fm3
        public final j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
            CharSequence charSequence2 = charSequence;
            num.intValue();
            num2.intValue();
            num3.intValue();
            charSequence2.getClass();
            InputTimePickerDialog.this.e().onHourChanged(qa8.p(charSequence2.toString()));
            return j59.a;
        }
    }

    public static final class f extends gh4 implements fm3<CharSequence, Integer, Integer, Integer, j59> {
        public f() {
            super(4);
        }

        @Override // defpackage.fm3
        public final j59 invoke(CharSequence charSequence, Integer num, Integer num2, Integer num3) {
            CharSequence charSequence2 = charSequence;
            num.intValue();
            num2.intValue();
            num3.intValue();
            charSequence2.getClass();
            InputTimePickerDialog.this.e().onMinuteChange(qa8.p(charSequence2.toString()));
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            InputTimePickerDialog.this.e().onSelectTimeClicked();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            InputTimePickerDialog.this.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(InputTimePickerDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogInputTimePickerBinding;", 0);
        x07.a.getClass();
        g = new ze4[]{bs6Var};
        f = new a();
    }

    public InputTimePickerDialog() {
        super(R.layout.dialog_input_time_picker);
        this.c = new gl4(DialogInputTimePickerBinding.class);
        Bundle arguments = getArguments();
        this.d = arguments != null ? arguments.getInt("MAX_HOUR") : 23;
        Bundle arguments2 = getArguments();
        this.e = arguments2 != null ? arguments2.getInt("MAX_MINUTE") : 59;
    }

    public final DialogInputTimePickerBinding d() {
        return (DialogInputTimePickerBinding) this.c.getValue(this, g[0]);
    }

    public final InputTimePickerPresenter e() {
        InputTimePickerPresenter inputTimePickerPresenter = this.presenter;
        if (inputTimePickerPresenter != null) {
            return inputTimePickerPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public final void enableSelectButton(boolean z) {
        d().btnSelect.setEnabled(z);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.DialogFragmentTransparent);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        DialogInputTimePickerBinding dialogInputTimePickerBindingD = d();
        TextInputEditText textInputEditText = dialogInputTimePickerBindingD.etHour;
        int i = this.d;
        textInputEditText.setFilters(new b[]{new b(i)});
        le9.a(textInputEditText, new e());
        textInputEditText.setOnFocusChangeListener(new kb2(this, 1));
        TextInputEditText textInputEditText2 = dialogInputTimePickerBindingD.etMinutes;
        textInputEditText2.setFilters(new d[]{new d(i, this.e)});
        le9.a(textInputEditText2, new f());
        textInputEditText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: u54
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                InputTimePickerDialog.a aVar = InputTimePickerDialog.f;
                if (z) {
                    return;
                }
                this.b.e().checkMinutesZeroShouldBeAdded();
            }
        });
        TextView textView = dialogInputTimePickerBindingD.btnSelect;
        textView.getClass();
        textView.setOnClickListener(new lb7(new g()));
        TextView textView2 = dialogInputTimePickerBindingD.btnDismiss;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new h()));
    }

    public final InputTimePickerPresenter providePresenter() {
        return new InputTimePickerPresenter(this.d, this.e);
    }

    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public final void sendSelectedTime(int i, int i2) {
        getParentFragmentManager().setFragmentResult("INPUT_TIME_PICKER_REQUEST_KEY", BundleKt.bundleOf(new b36("SELECTED_HOUR", Integer.valueOf(i)), new b36("SELECTED_MINUTE", Integer.valueOf(i2))));
    }

    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public final void setHour(String str) {
        str.getClass();
        d().etHour.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView
    public final void setMinutes(String str) {
        str.getClass();
        d().etMinutes.setText(str);
    }
}

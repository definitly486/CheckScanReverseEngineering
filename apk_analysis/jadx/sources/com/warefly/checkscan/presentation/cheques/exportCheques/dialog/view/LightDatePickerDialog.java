package com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogLightDatePickerBinding;
import com.warefly.checkscan.databinding.ItemNamesDayOfWeekBinding;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.presenter.LightDatePickerPresenter;
import defpackage.aa4;
import defpackage.aq4;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.dy0;
import defpackage.gh4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.u96;
import defpackage.ud9;
import defpackage.x07;
import defpackage.yw6;
import defpackage.ze4;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class LightDatePickerDialog extends BaseBottomSheetDialog<DialogLightDatePickerBinding> implements LightDatePickerView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final bm3<Calendar, Calendar, j59> d;
    public final nl3<dy0, j59> e;
    public final boolean f;
    public final ud9 g;
    public LightDatePickerPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LightDatePickerDialog.this.dismiss();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ com.warefly.checkscan.util.calendar.calendar.b f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.warefly.checkscan.util.calendar.calendar.b bVar) {
            super(1);
            this.f = bVar;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            com.warefly.checkscan.util.calendar.calendar.b.a<dy0> aVar = new com.warefly.checkscan.util.calendar.calendar.b.a<>();
            com.warefly.checkscan.util.calendar.calendar.b bVar = this.f;
            bVar.y = aVar;
            bVar.notifyDataSetChanged();
            bVar.i.f(bVar.y);
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ dy0 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(dy0 dy0Var) {
            super(1);
            this.g = dy0Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            LightDatePickerDialog lightDatePickerDialog = LightDatePickerDialog.this;
            lightDatePickerDialog.e.invoke(this.g);
            lightDatePickerDialog.dismiss();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ dy0 g;
        public final /* synthetic */ dy0 h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(dy0 dy0Var, dy0 dy0Var2) {
            super(1);
            this.g = dy0Var;
            this.h = dy0Var2;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            Calendar calendar = Calendar.getInstance();
            dy0 dy0Var = this.g;
            calendar.set(dy0Var.b, dy0Var.c, dy0Var.d);
            Calendar calendar2 = Calendar.getInstance();
            dy0 dy0Var2 = this.h;
            calendar2.set(dy0Var2.b, dy0Var2.c, dy0Var2.d);
            LightDatePickerDialog lightDatePickerDialog = LightDatePickerDialog.this;
            lightDatePickerDialog.d.invoke(calendar, calendar2);
            lightDatePickerDialog.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(LightDatePickerDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogLightDatePickerBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    public LightDatePickerDialog() {
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightDatePickerDialog(Context context, bm3 bm3Var) {
        super(context, R.style.BottomSheetDialogTheme);
        aq4 aq4Var = aq4.f;
        aq4Var.getClass();
        this.d = bm3Var;
        this.e = aq4Var;
        this.f = true;
        this.g = new ud9(DialogLightDatePickerBinding.class, this);
    }

    public final DialogLightDatePickerBinding e() {
        ze4<Object> ze4Var = h[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        return (DialogLightDatePickerBinding) ud9Var.d;
    }

    public final void f(com.warefly.checkscan.util.calendar.calendar.b.a<dy0> aVar) {
        if (this.f) {
            LightDatePickerPresenter lightDatePickerPresenter = this.presenter;
            if (lightDatePickerPresenter != null) {
                lightDatePickerPresenter.handleShowButtonEnabled(aVar != null ? aVar.b : null, aVar != null ? aVar.c : null);
            } else {
                aa4.j("presenter");
                throw null;
            }
        }
    }

    public final void g(dy0 dy0Var) {
        LightDatePickerPresenter lightDatePickerPresenter = this.presenter;
        if (lightDatePickerPresenter == null) {
            aa4.j("presenter");
            throw null;
        }
        lightDatePickerPresenter.handleShowButtonEnabled(dy0Var);
        if (this.f || dy0Var == null) {
            return;
        }
        this.e.invoke(dy0Var);
        dismiss();
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String[] stringArray = getContext().getResources().getStringArray(R.array.days_of_week);
        stringArray.getClass();
        ItemNamesDayOfWeekBinding itemNamesDayOfWeekBinding = e().layoutNamesDay;
        List listI = u96.i(itemNamesDayOfWeekBinding.tvFirst, itemNamesDayOfWeekBinding.tvSecond, itemNamesDayOfWeekBinding.tvThree, itemNamesDayOfWeekBinding.tvFour, itemNamesDayOfWeekBinding.tvFive, itemNamesDayOfWeekBinding.tvSix, itemNamesDayOfWeekBinding.tvSeven);
        int length = stringArray.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            ((TextView) listI.get(i2)).setText(stringArray[i]);
            i++;
            i2++;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(yw6.a);
        typedArrayObtainStyledAttributes.getClass();
        boolean z = this.f;
        com.warefly.checkscan.util.calendar.calendar.b bVar = new com.warefly.checkscan.util.calendar.calendar.b(this, typedArrayObtainStyledAttributes, z);
        DialogLightDatePickerBinding dialogLightDatePickerBindingE = e();
        ImageView imageView = dialogLightDatePickerBindingE.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        dialogLightDatePickerBindingE.rvCalendarCustom.setAdapter(bVar);
        TextView textView = dialogLightDatePickerBindingE.btnClear;
        textView.getClass();
        textView.setOnClickListener(new lb7(new b(bVar)));
        TextView textView2 = dialogLightDatePickerBindingE.btnClear;
        textView2.getClass();
        textView2.setVisibility(z ? 0 : 8);
        TextView textView3 = dialogLightDatePickerBindingE.btnShow;
        textView3.getClass();
        textView3.setVisibility(z ? 0 : 8);
        bVar.notifyDataSetChanged();
    }

    public final LightDatePickerPresenter providePresenter() {
        return new LightDatePickerPresenter(this.f);
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView
    public final void setTitle() {
        e().tvTitle.setText(getContext().getString(R.string.date_picker_bottom_dialog_single_title));
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView
    public final void showButtonEnabled(boolean z, dy0 dy0Var, dy0 dy0Var2) {
        TextView textView = e().btnShow;
        textView.setEnabled(z);
        if (dy0Var == null || dy0Var2 == null) {
            return;
        }
        textView.setOnClickListener(new lb7(new d(dy0Var, dy0Var2)));
    }

    @Override // com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView
    public final void showButtonEnabled(boolean z, dy0 dy0Var) {
        TextView textView = e().btnShow;
        textView.setEnabled(z);
        if (dy0Var != null) {
            textView.setOnClickListener(new lb7(new c(dy0Var)));
        }
    }
}

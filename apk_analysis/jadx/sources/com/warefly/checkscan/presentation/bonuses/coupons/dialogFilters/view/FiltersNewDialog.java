package com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view;

import android.content.Context;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog;
import com.warefly.checkscan.databinding.DialogNewFiltersBinding;
import com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.presenter.FiltersNewDialogPresenter;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.dm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.m2;
import defpackage.og4;
import defpackage.p61;
import defpackage.ud9;
import defpackage.vy4;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zy4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class FiltersNewDialog extends BaseBottomSheetDialog<DialogNewFiltersBinding> implements FilterNewDialogView {
    public static final /* synthetic */ ze4<Object>[] i;
    public final int d;
    public final bm3<Integer, String, j59> e;
    public final long f;
    public final ud9 g;
    public zy4 h;
    public FiltersNewDialogPresenter presenter;

    public static final class a extends gh4 implements bm3<Integer, Boolean, j59> {
        public a() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(Integer num, Boolean bool) {
            int iIntValue = num.intValue();
            boolean zBooleanValue = bool.booleanValue();
            FiltersNewDialogPresenter filtersNewDialogPresenter = FiltersNewDialog.this.presenter;
            if (filtersNewDialogPresenter != null) {
                filtersNewDialogPresenter.onFilterClick(iIntValue, zBooleanValue);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class b extends gh4 implements dm3<Integer, Integer, Boolean, j59> {
        public b() {
            super(3);
        }

        @Override // defpackage.dm3
        public final j59 invoke(Integer num, Integer num2, Boolean bool) {
            int iIntValue = num.intValue();
            int iIntValue2 = num2.intValue();
            boolean zBooleanValue = bool.booleanValue();
            FiltersNewDialogPresenter filtersNewDialogPresenter = FiltersNewDialog.this.presenter;
            if (filtersNewDialogPresenter != null) {
                filtersNewDialogPresenter.subFilterClick(iIntValue, iIntValue2, zBooleanValue);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    public static final class c extends gh4 implements bm3<Integer, String, j59> {
        public c() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(Integer num, String str) {
            int iIntValue = num.intValue();
            String str2 = str;
            str2.getClass();
            FiltersNewDialogPresenter filtersNewDialogPresenter = FiltersNewDialog.this.presenter;
            if (filtersNewDialogPresenter != null) {
                filtersNewDialogPresenter.onSimpleFilterClick(iIntValue, str2);
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(FiltersNewDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogNewFiltersBinding;", 0);
        x07.a.getClass();
        i = new ze4[]{bs6Var};
    }

    public FiltersNewDialog() {
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FiltersNewDialog(Context context, bm3 bm3Var) {
        super(context, R.style.BottomSheetDialogTheme);
        bm3Var.getClass();
        this.d = -1;
        this.e = bm3Var;
        this.f = -1L;
        this.g = new ud9(DialogNewFiltersBinding.class, this);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseBottomSheetDialog, com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
        if (attributes == null) {
            return;
        }
        attributes.windowAnimations = R.style.FloatingDialogTheme;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final FiltersNewDialogPresenter providePresenter() {
        return new FiltersNewDialogPresenter(this.d, (p61) (this instanceof og4 ? m2.c(p61.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(p61.class), null, null)), false, this.f);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FilterNewDialogView
    public final void setFiltersList(List<vy4> list) {
        list.getClass();
        this.h = new zy4(new a(), new b(), new c());
        ze4<Object> ze4Var = i[0];
        ud9 ud9Var = this.g;
        ud9Var.getClass();
        ze4Var.getClass();
        ((DialogNewFiltersBinding) ud9Var.d).rvFiltersNew.setAdapter(this.h);
        zy4 zy4Var = this.h;
        if (zy4Var != null) {
            zy4Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FilterNewDialogView
    public final void setUpdatedList(List<vy4> list) {
        list.getClass();
        zy4 zy4Var = this.h;
        if (zy4Var != null) {
            zy4Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.coupons.dialogFilters.view.FilterNewDialogView
    public final void showSelectedFilterCategory(int i2, String str) {
        str.getClass();
        this.e.invoke(Integer.valueOf(i2), str);
        dismiss();
    }
}

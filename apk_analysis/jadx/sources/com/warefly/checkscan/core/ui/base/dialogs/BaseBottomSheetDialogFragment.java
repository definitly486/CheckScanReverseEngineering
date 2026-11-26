package com.warefly.checkscan.core.ui.base.dialogs;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.bd0;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.gh5;
import defpackage.i72;
import defpackage.j59;
import defpackage.jg4;
import defpackage.ll3;
import defpackage.oz1;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseBottomSheetDialogFragment<VB extends ViewBinding> extends BottomSheetDialogFragment implements BaseView, jg4 {
    public final fh8 b;

    public static final class a extends gh4 implements ll3<j59> {
        public final /* synthetic */ BaseBottomSheetDialogFragment<VB> f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BaseBottomSheetDialogFragment<VB> baseBottomSheetDialogFragment) {
            super(0);
            this.f = baseBottomSheetDialogFragment;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            View view = this.f.getView();
            if (view != null) {
                oz1.i(R.string.url_not_opened_message, view);
            }
            return j59.a;
        }
    }

    public BaseBottomSheetDialogFragment() {
        super(R.layout.dialog_profile_promocode_enter);
        this.b = new fh8(new bd0(this));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((gh5) this.b.getValue()).b(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        ((gh5) this.b.getValue()).e();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        ((gh5) this.b.getValue()).a();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        fh8 fh8Var = this.b;
        ((gh5) fh8Var.getValue()).e();
        ((gh5) fh8Var.getValue()).d();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrl(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            oz1.c(context, str, new a(this));
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrlInCustomTab(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            i72.b(context, str);
        }
    }
}

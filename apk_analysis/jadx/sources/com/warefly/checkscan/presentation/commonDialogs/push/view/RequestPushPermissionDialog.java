package com.warefly.checkscan.presentation.commonDialogs.push.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogFragment;
import com.warefly.checkscan.databinding.DialogRequestPushPermissionBinding;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.gl4;
import defpackage.j59;
import defpackage.lb7;
import defpackage.nl3;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class RequestPushPermissionDialog extends BaseDialogFragment<DialogRequestPushPermissionBinding> {
    public static final a d;
    public static final /* synthetic */ ze4<Object>[] e;
    public final gl4 c;

    public static final class a {
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RequestPushPermissionDialog.this.dismiss();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RequestPushPermissionDialog requestPushPermissionDialog = RequestPushPermissionDialog.this;
            a aVar = RequestPushPermissionDialog.d;
            try {
                Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
                intent.addFlags(268435456);
                FragmentActivity activity = requestPushPermissionDialog.getActivity();
                intent.putExtra("android.provider.extra.APP_PACKAGE", activity != null ? activity.getPackageName() : null);
                requestPushPermissionDialog.startActivity(intent);
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
            requestPushPermissionDialog.dismiss();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(RequestPushPermissionDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogRequestPushPermissionBinding;", 0);
        x07.a.getClass();
        e = new ze4[]{bs6Var};
        d = new a();
    }

    public RequestPushPermissionDialog() {
        super(R.layout.dialog_request_push_permission);
        this.c = new gl4(DialogRequestPushPermissionBinding.class);
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
        ze4<?>[] ze4VarArr = e;
        ze4<?> ze4Var = ze4VarArr[0];
        gl4 gl4Var = this.c;
        AppCompatTextView appCompatTextView = ((DialogRequestPushPermissionBinding) gl4Var.getValue(this, ze4Var)).btnNegative;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new b()));
        AppCompatTextView appCompatTextView2 = ((DialogRequestPushPermissionBinding) gl4Var.getValue(this, ze4VarArr[0])).btnPositive;
        appCompatTextView2.getClass();
        appCompatTextView2.setOnClickListener(new lb7(new c()));
    }
}

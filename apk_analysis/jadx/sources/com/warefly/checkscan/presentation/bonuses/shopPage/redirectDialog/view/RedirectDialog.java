package com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.res.ResourcesCompat;
import androidx.viewbinding.ViewBinding;
import androidx.webkit.internal.AssetHelper;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;
import com.warefly.checkscan.databinding.DialogRedirectBinding;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.presenter.RedirectDialogPresenter;
import defpackage.aa4;
import defpackage.bn2;
import defpackage.bs6;
import defpackage.gh4;
import defpackage.i72;
import defpackage.j59;
import defpackage.jy4;
import defpackage.l07;
import defpackage.lb7;
import defpackage.m2;
import defpackage.nl3;
import defpackage.og4;
import defpackage.sy8;
import defpackage.uk7;
import defpackage.x07;
import defpackage.x9;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class RedirectDialog extends BaseDialogNew<DialogRedirectBinding> implements RedirectDialogView {
    public static final /* synthetic */ ze4<Object>[] h;
    public final sy8 c;
    public final String d;
    public final String e;
    public final bn2 f;
    public CountDownTimer g;
    public RedirectDialogPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RedirectDialog.this.c().closeDialog();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RedirectDialog redirectDialog = RedirectDialog.this;
            redirectDialog.c().openLink(redirectDialog.d);
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
            RedirectDialog redirectDialog = RedirectDialog.this;
            CountDownTimer countDownTimer = redirectDialog.g;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            redirectDialog.c().openAdaptiveLink(redirectDialog.d);
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RedirectDialog redirectDialog = RedirectDialog.this;
            redirectDialog.c().openAdaptive(redirectDialog.d);
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RedirectDialog redirectDialog = RedirectDialog.this;
            redirectDialog.c().openLink(redirectDialog.d);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RedirectDialog.this.c().onCopyClick(this.g);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            RedirectDialog.this.c().onShareClick(this.g);
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(RedirectDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;", 0);
        x07.a.getClass();
        h = new ze4[]{bs6Var};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RedirectDialog(Context context, sy8 sy8Var, String str, String str2) {
        super(context);
        sy8Var.getClass();
        str.getClass();
        str2.getClass();
        this.c = sy8Var;
        this.d = str;
        this.e = str2;
        this.f = new bn2(DialogRedirectBinding.class, this);
    }

    public final DialogRedirectBinding a() {
        ze4<Object> ze4Var = h[0];
        bn2 bn2Var = this.f;
        bn2Var.getClass();
        ze4Var.getClass();
        return (DialogRedirectBinding) ((ViewBinding) bn2Var.d);
    }

    public final RedirectDialogPresenter c() {
        RedirectDialogPresenter redirectDialogPresenter = this.presenter;
        if (redirectDialogPresenter != null) {
            return redirectDialogPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void copyShortLink(String str) {
        str.getClass();
        Context context = getContext();
        Object systemService = context.getSystemService("clipboard");
        systemService.getClass();
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(context.getString(R.string.shortlink_label), str));
        Toast.makeText(context, R.string.desktop_partner_shortlink_copied, 0).show();
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void hidePreview() {
        CountDownTimer countDownTimer = this.g;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        DialogRedirectBinding dialogRedirectBindingA = a();
        dialogRedirectBindingA.tvTitle.setVisibility(8);
        dialogRedirectBindingA.tvDescriptionInfo.setVisibility(8);
        dialogRedirectBindingA.btnContinuePhone.setVisibility(8);
        dialogRedirectBindingA.btnContinueComputer.setVisibility(8);
        dialogRedirectBindingA.tvOr.setVisibility(8);
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        DialogRedirectBinding dialogRedirectBindingA = a();
        com.bumptech.glide.a.e(dialogRedirectBindingA.ivBanner).h(this.e).L(dialogRedirectBindingA.ivBanner);
        ImageButton imageButton = dialogRedirectBindingA.btnCloseDialog;
        imageButton.getClass();
        imageButton.setOnClickListener(new lb7(new a()));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void openGoToLinkInBrowser(String str) {
        str.getClass();
        Context context = getContext();
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception unused) {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(context.getString(R.string.custom_tab_clip_title), str));
            Toast.makeText(context, context.getString(R.string.custom_tabs_chrome_no_activity_exception), 1).show();
        }
        dismiss();
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void openGoToLinkInCustomTabs(String str) {
        str.getClass();
        i72.b(getContext(), str);
        CountDownTimer countDownTimer = this.g;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        dismiss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RedirectDialogPresenter providePresenter() {
        return new RedirectDialogPresenter(this.c, (x9) (this instanceof og4 ? m2.c(x9.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(x9.class), null, null)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void setApp() {
        DialogRedirectBinding dialogRedirectBindingA = a();
        dialogRedirectBindingA.tvTitle.setText(getContext().getString(R.string.redirect_dialog_title));
        Context context = getContext();
        context.getClass();
        this.g = new uk7(5, new l07(this, context), new jy4(this, 1)).start();
        TextView textView = dialogRedirectBindingA.btnContinuePhone;
        textView.setText(textView.getContext().getString(R.string.redirect_dialog_button_continue_app));
        textView.setOnClickListener(new lb7(new b()));
        dialogRedirectBindingA.tvOr.setVisibility(0);
        TextView textView2 = dialogRedirectBindingA.btnContinueComputer;
        textView2.setText(textView2.getContext().getString(R.string.redirect_dialog_button_continue_computer));
        textView2.setOnClickListener(new lb7(new c()));
        textView2.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void setDesktop() {
        DialogRedirectBinding dialogRedirectBindingA = a();
        dialogRedirectBindingA.tvTitle.setText(getContext().getString(R.string.redirect_dialog_title_attention));
        dialogRedirectBindingA.tvDescriptionInfo.setText(getContext().getString(R.string.redirect_dialog_cashback_charged_just_web));
        TextView textView = dialogRedirectBindingA.btnContinuePhone;
        textView.setText(textView.getContext().getString(R.string.redirect_dialog_button_continue_computer));
        textView.setOnClickListener(new lb7(new d()));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void setMobile() {
        DialogRedirectBinding dialogRedirectBindingA = a();
        dialogRedirectBindingA.tvTitle.setText(getContext().getString(R.string.redirect_dialog_title_attention));
        dialogRedirectBindingA.tvDescriptionInfo.setText(getContext().getString(R.string.redirect_dialog_cashback_charged_just_app));
        TextView textView = dialogRedirectBindingA.btnContinuePhone;
        textView.setText(textView.getContext().getString(R.string.redirect_dialog_button_continue_app));
        textView.setOnClickListener(new lb7(new e()));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void shareShortLink(String str) {
        str.getClass();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        try {
            getContext().startActivity(intent);
        } catch (Exception unused) {
            Toast.makeText(getContext(), getContext().getString(R.string.share_shortlink_exception_message, str), 1).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void showCouldntLoadShortLink() {
        a().btnContinueComputer.setVisibility(0);
        Toast.makeText(getContext(), getContext().getString(R.string.desktop_partner_shopping_couldnt_load_shortlink), 1).show();
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void showLoadingShortLink(boolean z) {
        FrameLayout frameLayout = a().progressBar;
        frameLayout.getClass();
        frameLayout.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView
    public final void showShortLink(String str, boolean z) {
        str.getClass();
        DialogRedirectBinding dialogRedirectBindingA = a();
        if (!z) {
            TextView textView = dialogRedirectBindingA.btnContinuePhone;
            textView.setBackground(ResourcesCompat.getDrawable(textView.getResources(), R.drawable.background_very_light_blue_button, null));
            textView.setTextColor(textView.getResources().getColor(R.color.readilyBlue));
            dialogRedirectBindingA.btnContinuePhone.setVisibility(0);
            dialogRedirectBindingA.tvOr.setVisibility(0);
        }
        dialogRedirectBindingA.tvTvExpirationLink.setVisibility(0);
        dialogRedirectBindingA.tvLinkDescription.setVisibility(0);
        dialogRedirectBindingA.tvLink.setText(str);
        dialogRedirectBindingA.tvLink.setVisibility(0);
        TextView textView2 = dialogRedirectBindingA.btnCopy;
        textView2.setVisibility(0);
        textView2.setOnClickListener(new lb7(new f(str)));
        TextView textView3 = dialogRedirectBindingA.btnShare;
        textView3.setVisibility(0);
        textView3.setOnClickListener(new lb7(new g(str)));
    }
}

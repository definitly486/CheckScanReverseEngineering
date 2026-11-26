package com.warefly.checkscan.presentation.verificationCardPhone.view;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavArgsLazy;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.warefly.checkscan.R;
import com.warefly.checkscan.auth.services.sms.SmsReceiverImpl;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.FragmentVerificationNumberCardBinding;
import com.warefly.checkscan.databinding.ItemErrorFullScreenBinding;
import com.warefly.checkscan.presentation.queue.view.OfferCardDialog;
import com.warefly.checkscan.presentation.verificationCardPhone.presenter.VerificationCardPhonePresenter;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c9;
import defpackage.ca0;
import defpackage.gh4;
import defpackage.hc9;
import defpackage.ic9;
import defpackage.j59;
import defpackage.jc9;
import defpackage.jf6;
import defpackage.kc9;
import defpackage.lb7;
import defpackage.le9;
import defpackage.ll3;
import defpackage.m2;
import defpackage.m71;
import defpackage.n2;
import defpackage.nl3;
import defpackage.oc3;
import defpackage.ol4;
import defpackage.oo7;
import defpackage.oz1;
import defpackage.po7;
import defpackage.qe;
import defpackage.qm3;
import defpackage.sx3;
import defpackage.u96;
import defpackage.uf3;
import defpackage.uk7;
import defpackage.x07;
import defpackage.ze4;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class VerificationCardPhoneFragment extends BaseFragment<FragmentVerificationNumberCardBinding> implements VerificationCardPhoneView {
    public static final /* synthetic */ ze4<Object>[] m;
    public final int f = R.layout.fragment_verification_number_card;
    public final ol4 g = new ol4(FragmentVerificationNumberCardBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(kc9.class), new h());
    public SmsReceiverImpl i;
    public CountDownTimer j;
    public LoadingDialog k;
    public po7 l;
    public VerificationCardPhonePresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            VerificationCardPhoneFragment.this.o().repeatCode();
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
            VerificationCardPhoneFragment.this.o().onBackPressed();
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
            VerificationCardPhoneFragment.this.o().requestCallCode();
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
            VerificationCardPhoneFragment.this.o().closeError();
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
            VerificationCardPhoneFragment.this.o().closeError();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<Long, j59> {
        public final /* synthetic */ FragmentVerificationNumberCardBinding f;
        public final /* synthetic */ VerificationCardPhoneFragment g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBinding, VerificationCardPhoneFragment verificationCardPhoneFragment) {
            super(1);
            this.f = fragmentVerificationNumberCardBinding;
            this.g = verificationCardPhoneFragment;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Long l) {
            long jLongValue = l.longValue() / 1000;
            TextView textView = this.f.tvGetNewCode;
            VerificationCardPhoneFragment verificationCardPhoneFragment = this.g;
            textView.setText(verificationCardPhoneFragment.getString(R.string.fragment_confirm_number_sms_send_code_timer, verificationCardPhoneFragment.o().formatTime((long) (jLongValue / 60.0d)), verificationCardPhoneFragment.o().formatTime(jLongValue % 60)));
            return j59.a;
        }
    }

    public static final /* synthetic */ class g extends qm3 implements ll3<j59> {
        @Override // defpackage.ll3
        public final j59 invoke() {
            ((VerificationCardPhonePresenter) this.receiver).showSendCodeAgain();
            return j59.a;
        }
    }

    public static final class h implements ll3<Bundle> {
        public h() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            VerificationCardPhoneFragment verificationCardPhoneFragment = VerificationCardPhoneFragment.this;
            Bundle arguments = verificationCardPhoneFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(verificationCardPhoneFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(VerificationCardPhoneFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;", 0);
        x07.a.getClass();
        m = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackPressed();
        return false;
    }

    public final FragmentVerificationNumberCardBinding n() {
        return (FragmentVerificationNumberCardBinding) this.g.getValue(this, m[0]);
    }

    public final VerificationCardPhonePresenter o() {
        VerificationCardPhonePresenter verificationCardPhonePresenter = this.presenter;
        if (verificationCardPhonePresenter != null) {
            return verificationCardPhonePresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new oc3();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        fragmentActivityRequireActivity.getClass();
        SmsRetriever.getClient((Activity) fragmentActivityRequireActivity).startSmsRetriever();
        SmsReceiverImpl smsReceiverImpl = new SmsReceiverImpl();
        this.i = smsReceiverImpl;
        smsReceiverImpl.b = new m71(this);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.l = null;
        CountDownTimer countDownTimer = this.j;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.unregisterReceiver(this.i);
        }
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        ContextCompat.registerReceiver(requireContext(), this.i, oc3.a, 2);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        TextView textView = fragmentVerificationNumberCardBindingN.btnRepeatSendCode;
        textView.getClass();
        textView.setOnClickListener(new lb7(new a()));
        ImageView imageView = fragmentVerificationNumberCardBindingN.toolbar.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b()));
        fragmentVerificationNumberCardBindingN.toolbar.tvHeader.setText(getString(R.string.fragment_confirm_number_card_toolbar_text));
        TextView textView2 = fragmentVerificationNumberCardBindingN.btnRequestCall;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new c()));
    }

    public final void p(List<? extends EditText> list) {
        po7 po7Var = this.l;
        if (po7Var != null) {
            for (EditText editText : po7Var.c) {
                if (editText != null) {
                    editText.setText((CharSequence) null);
                }
            }
        }
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        po7 po7Var2 = new po7(contextRequireContext, new jc9(1, o(), VerificationCardPhonePresenter.class, "sendCode", "sendCode(Ljava/lang/String;)V", 0), list);
        this.l = po7Var2;
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            EditText editText2 = (EditText) obj;
            if (editText2 != null) {
                if (i == 0) {
                    le9.e(editText2);
                }
                editText2.addTextChangedListener(new oo7(po7Var2, i, editText2));
            }
            i = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final VerificationCardPhonePresenter providePresenter() {
        NavArgsLazy navArgsLazy = this.h;
        return new VerificationCardPhonePresenter(((kc9) navArgsLazy.getValue()).a, ((kc9) navArgsLazy.getValue()).b, (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (ca0) m2.c(ca0.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), ((kc9) navArgsLazy.getValue()).c, (qe) m2.c(qe.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void setCaseCall(String str, int i) {
        str.getClass();
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        fragmentVerificationNumberCardBindingN.btnRequestCall.setVisibility(8);
        fragmentVerificationNumberCardBindingN.tvSendCodeNumber.setVisibility(8);
        fragmentVerificationNumberCardBindingN.tvTitle.setText(getString(R.string.fragment_confirm_number_card_call_title));
        TextView textView = fragmentVerificationNumberCardBindingN.tvPhoneNumber;
        textView.setVisibility(0);
        textView.setText(str);
        TextView textView2 = fragmentVerificationNumberCardBindingN.tvInputNumbers;
        int i2 = sx3.a;
        String string = getString(i == 4 ? R.string.fragment_confirm_number_description_default : R.string.fragment_confirm_number_description, Integer.valueOf(i));
        string.getClass();
        textView2.setText(sx3.a(string));
        textView2.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void setCodeFromSms(String str) {
        str.getClass();
        po7 po7Var = this.l;
        if (po7Var != null) {
            List<EditText> list = po7Var.c;
            for (EditText editText : list) {
                if (editText != null) {
                    editText.setText((CharSequence) null);
                }
            }
            if (str.length() == list.size()) {
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        u96.o();
                        throw null;
                    }
                    EditText editText2 = (EditText) obj;
                    if (editText2 != null) {
                        editText2.setText(String.valueOf(str.charAt(i)));
                    }
                    if (i == list.size() - 1 && editText2 != null) {
                        editText2.setSelection(editText2.length());
                    }
                    i = i2;
                }
            }
        }
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showError(boolean z, boolean z2, boolean z3) {
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        TextView textView = fragmentVerificationNumberCardBindingN.tvTitle;
        textView.getClass();
        TextView textView2 = fragmentVerificationNumberCardBindingN.tvPhoneNumber;
        textView2.getClass();
        TextView textView3 = fragmentVerificationNumberCardBindingN.tvInputNumbers;
        textView3.getClass();
        LinearLayout linearLayout = fragmentVerificationNumberCardBindingN.layoutCodes;
        linearLayout.getClass();
        TextView textView4 = fragmentVerificationNumberCardBindingN.tvDescriptionCall;
        textView4.getClass();
        TextView textView5 = fragmentVerificationNumberCardBindingN.tvGetNewCode;
        textView5.getClass();
        TextView textView6 = fragmentVerificationNumberCardBindingN.btnRepeatSendCode;
        textView6.getClass();
        Iterator it = u96.i(textView, textView2, textView3, linearLayout, textView4, textView5, textView6).iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(8);
        }
        fragmentVerificationNumberCardBindingN.toolbar.getRoot().setVisibility(8);
        ItemErrorFullScreenBinding itemErrorFullScreenBinding = fragmentVerificationNumberCardBindingN.layoutError;
        TextView textView7 = itemErrorFullScreenBinding.btnErrorBack;
        textView7.getClass();
        textView7.setOnClickListener(new lb7(new d()));
        ImageButton imageButton = itemErrorFullScreenBinding.btnErrorClose;
        imageButton.getClass();
        imageButton.setOnClickListener(new lb7(new e()));
        if (z) {
            itemErrorFullScreenBinding.tvTitleError.setText(getString(R.string.fragment_create_card_time_confirm_error_title));
            itemErrorFullScreenBinding.tvErrorDescription.setText(getString(R.string.fragment_create_card_time_confirm_error));
        }
        if (z2) {
            itemErrorFullScreenBinding.tvTitleError.setText(getString(R.string.fragment_verification_phone_title_error));
            itemErrorFullScreenBinding.tvErrorDescription.setText(getString(R.string.fragment_verification_phone_description_error));
        }
        if (z3) {
            itemErrorFullScreenBinding.tvTitleError.setText(getString(R.string.fragment_verification_phone_support_title_error));
            itemErrorFullScreenBinding.tvErrorDescription.setText(getString(R.string.fragment_verification_phone_support_description_error));
        }
        itemErrorFullScreenBinding.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showErrorCode() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.enter_wrong_code, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showInvalidPhoneError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.error_invalid_phone, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialog = this.k;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.k = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showLongCode() {
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        List<? extends EditText> listI = u96.i(fragmentVerificationNumberCardBindingN.etCodeOneCall, fragmentVerificationNumberCardBindingN.etCodeTwoCall, fragmentVerificationNumberCardBindingN.etCodeThreeCall, fragmentVerificationNumberCardBindingN.etCodeFourCall, fragmentVerificationNumberCardBindingN.etCodeFiveCall, fragmentVerificationNumberCardBindingN.etCodeSixCall);
        Iterator<T> it = listI.iterator();
        while (it.hasNext()) {
            ((EditText) it.next()).setVisibility(0);
        }
        p(listI);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showMiddleCode() {
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        List<? extends EditText> listI = u96.i(fragmentVerificationNumberCardBindingN.etCodeOneCall, fragmentVerificationNumberCardBindingN.etCodeTwoCall, fragmentVerificationNumberCardBindingN.etCodeThreeCall, fragmentVerificationNumberCardBindingN.etCodeFourCall, fragmentVerificationNumberCardBindingN.etCodeFiveCall);
        Iterator<T> it = listI.iterator();
        while (it.hasNext()) {
            ((EditText) it.next()).setVisibility(0);
        }
        p(listI);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showOfferCardDialog(int i, int i2) {
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        new OfferCardDialog(contextRequireContext, new hc9(this), new ic9(this), i, i2).show();
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showProviderError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.backend_error, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showRepeatCallAgain() {
        CountDownTimer countDownTimer = this.j;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        fragmentVerificationNumberCardBindingN.tvGetNewCode.setVisibility(8);
        fragmentVerificationNumberCardBindingN.btnRequestCall.setVisibility(8);
        fragmentVerificationNumberCardBindingN.btnRepeatSendCode.setVisibility(0);
        fragmentVerificationNumberCardBindingN.tvDescriptionCall.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showSendSmsAgain() {
        CountDownTimer countDownTimer = this.j;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        fragmentVerificationNumberCardBindingN.tvGetNewCode.setVisibility(8);
        fragmentVerificationNumberCardBindingN.btnRequestCall.setVisibility(0);
        fragmentVerificationNumberCardBindingN.btnRepeatSendCode.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showSendSmsCode(String str) {
        str.getClass();
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        fragmentVerificationNumberCardBindingN.tvInputNumbers.setVisibility(8);
        fragmentVerificationNumberCardBindingN.tvTitle.setText(getString(R.string.fragment_confirm_number_card_sms_title));
        fragmentVerificationNumberCardBindingN.tvPhoneNumber.setVisibility(8);
        fragmentVerificationNumberCardBindingN.tvDescriptionCall.setVisibility(8);
        TextView textView = fragmentVerificationNumberCardBindingN.tvSendCodeNumber;
        textView.setVisibility(0);
        textView.setText(getString(R.string.fragment_confirm_number_sms_send_code, str));
        fragmentVerificationNumberCardBindingN.tvGetNewCode.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showShortCode() {
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        List<? extends EditText> listI = u96.i(fragmentVerificationNumberCardBindingN.etCodeOneCall, fragmentVerificationNumberCardBindingN.etCodeTwoCall, fragmentVerificationNumberCardBindingN.etCodeThreeCall, fragmentVerificationNumberCardBindingN.etCodeFourCall);
        Iterator<T> it = listI.iterator();
        while (it.hasNext()) {
            ((EditText) it.next()).setVisibility(0);
        }
        p(listI);
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showTimeForRepeatCode() {
        CountDownTimer countDownTimer = this.j;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        fragmentVerificationNumberCardBindingN.btnRepeatSendCode.setVisibility(8);
        fragmentVerificationNumberCardBindingN.tvDescriptionCall.setVisibility(8);
        fragmentVerificationNumberCardBindingN.tvGetNewCode.setVisibility(0);
        this.j = new uk7(120, new f(fragmentVerificationNumberCardBindingN, this), new g(0, o(), VerificationCardPhonePresenter.class, "showSendCodeAgain", "showSendCodeAgain()V", 0)).start();
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void showTimesNotExpired() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.lifecycle_sent_sms, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.verificationCardPhone.view.VerificationCardPhoneView
    public final void updateTextField() {
        FragmentVerificationNumberCardBinding fragmentVerificationNumberCardBindingN = n();
        Iterator it = u96.i(fragmentVerificationNumberCardBindingN.etCodeOneCall, fragmentVerificationNumberCardBindingN.etCodeTwoCall, fragmentVerificationNumberCardBindingN.etCodeThreeCall, fragmentVerificationNumberCardBindingN.etCodeFourCall, fragmentVerificationNumberCardBindingN.etCodeFiveCall, fragmentVerificationNumberCardBindingN.etCodeSixCall).iterator();
        while (it.hasNext()) {
            ((EditText) it.next()).setVisibility(8);
        }
    }
}

package com.warefly.checkscan.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentPhoneMethodVerificationBinding implements ViewBinding {
    public final ImageView btnBack;
    public final TextView btnCallAgain;
    public final TextView btnChangeVerification;
    public final EditText etCodeFourCall;
    public final EditText etCodeOneCall;
    public final EditText etCodeThreeCall;
    public final EditText etCodeTwoCall;
    public final LinearLayout layoutCodesPhone;
    private final ConstraintLayout rootView;
    public final TextView tvOtpError;
    public final TextView tvPhoneCall;
    public final TextView tvPhoneCallHint;
    public final TextView tvPhoneTitle;
    public final TextView tvTimerPhone;

    private FragmentPhoneMethodVerificationBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, EditText editText, EditText editText2, EditText editText3, EditText editText4, LinearLayout linearLayout, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnCallAgain = textView;
        this.btnChangeVerification = textView2;
        this.etCodeFourCall = editText;
        this.etCodeOneCall = editText2;
        this.etCodeThreeCall = editText3;
        this.etCodeTwoCall = editText4;
        this.layoutCodesPhone = linearLayout;
        this.tvOtpError = textView3;
        this.tvPhoneCall = textView4;
        this.tvPhoneCallHint = textView5;
        this.tvPhoneTitle = textView6;
        this.tvTimerPhone = textView7;
    }

    public static FragmentPhoneMethodVerificationBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_call_again;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_call_again);
            if (textView != null) {
                i = R.id.btn_change_verification;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_change_verification);
                if (textView2 != null) {
                    i = R.id.et_code_four_call;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_four_call);
                    if (editText != null) {
                        i = R.id.et_code_one_call;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_one_call);
                        if (editText2 != null) {
                            i = R.id.et_code_three_call;
                            EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_three_call);
                            if (editText3 != null) {
                                i = R.id.et_code_two_call;
                                EditText editText4 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_two_call);
                                if (editText4 != null) {
                                    i = R.id.layout_codes_phone;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_codes_phone);
                                    if (linearLayout != null) {
                                        i = R.id.tv_otp_error;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_otp_error);
                                        if (textView3 != null) {
                                            i = R.id.tv_phone_call;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phone_call);
                                            if (textView4 != null) {
                                                i = R.id.tv_phone_call_hint;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phone_call_hint);
                                                if (textView5 != null) {
                                                    i = R.id.tv_phone_title;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phone_title);
                                                    if (textView6 != null) {
                                                        i = R.id.tv_timer_phone;
                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_timer_phone);
                                                        if (textView7 != null) {
                                                            return new FragmentPhoneMethodVerificationBinding((ConstraintLayout) view, imageView, textView, textView2, editText, editText2, editText3, editText4, linearLayout, textView3, textView4, textView5, textView6, textView7);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentPhoneMethodVerificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_phone_method_verification, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPhoneMethodVerificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

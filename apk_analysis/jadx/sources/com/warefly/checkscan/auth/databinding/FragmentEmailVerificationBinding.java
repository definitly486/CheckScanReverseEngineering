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
public final class FragmentEmailVerificationBinding implements ViewBinding {
    public final ImageView btnBack;
    public final TextView btnSendCodeAgain;
    public final TextView btnVerify;
    public final EditText etCodeFourCall;
    public final EditText etCodeOneCall;
    public final EditText etCodeThreeCall;
    public final EditText etCodeTwoCall;
    public final LinearLayout layoutCodes;
    private final ConstraintLayout rootView;
    public final TextView tvOtpError;
    public final TextView tvSubtitle;
    public final TextView tvTimer;
    public final TextView tvTitle;

    private FragmentEmailVerificationBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, EditText editText, EditText editText2, EditText editText3, EditText editText4, LinearLayout linearLayout, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.btnSendCodeAgain = textView;
        this.btnVerify = textView2;
        this.etCodeFourCall = editText;
        this.etCodeOneCall = editText2;
        this.etCodeThreeCall = editText3;
        this.etCodeTwoCall = editText4;
        this.layoutCodes = linearLayout;
        this.tvOtpError = textView3;
        this.tvSubtitle = textView4;
        this.tvTimer = textView5;
        this.tvTitle = textView6;
    }

    public static FragmentEmailVerificationBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_send_code_again;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_send_code_again);
            if (textView != null) {
                i = R.id.btn_verify;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_verify);
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
                                    i = R.id.layout_codes;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_codes);
                                    if (linearLayout != null) {
                                        i = R.id.tv_otp_error;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_otp_error);
                                        if (textView3 != null) {
                                            i = R.id.tv_subtitle;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
                                            if (textView4 != null) {
                                                i = R.id.tv_timer;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_timer);
                                                if (textView5 != null) {
                                                    i = R.id.tv_title;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                    if (textView6 != null) {
                                                        return new FragmentEmailVerificationBinding((ConstraintLayout) view, imageView, textView, textView2, editText, editText2, editText3, editText4, linearLayout, textView3, textView4, textView5, textView6);
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

    public static FragmentEmailVerificationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_email_verification, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentEmailVerificationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutToolbarBackIconBinding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentVerificationNumberCardBinding implements ViewBinding {
    public final TextView btnRepeatSendCode;
    public final TextView btnRequestCall;
    public final EditText etCodeFiveCall;
    public final EditText etCodeFourCall;
    public final EditText etCodeOneCall;
    public final EditText etCodeSixCall;
    public final EditText etCodeThreeCall;
    public final EditText etCodeTwoCall;
    public final LinearLayout layoutCodes;
    public final ItemErrorFullScreenBinding layoutError;
    public final ProgressBar pbWaitSendingCode;
    private final ConstraintLayout rootView;
    public final LayoutToolbarBackIconBinding toolbar;
    public final TextView tvDescriptionCall;
    public final TextView tvGetNewCode;
    public final TextView tvInputNumbers;
    public final TextView tvPhoneNumber;
    public final TextView tvSendCodeNumber;
    public final TextView tvTitle;

    private FragmentVerificationNumberCardBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, LinearLayout linearLayout, ItemErrorFullScreenBinding itemErrorFullScreenBinding, ProgressBar progressBar, LayoutToolbarBackIconBinding layoutToolbarBackIconBinding, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.btnRepeatSendCode = textView;
        this.btnRequestCall = textView2;
        this.etCodeFiveCall = editText;
        this.etCodeFourCall = editText2;
        this.etCodeOneCall = editText3;
        this.etCodeSixCall = editText4;
        this.etCodeThreeCall = editText5;
        this.etCodeTwoCall = editText6;
        this.layoutCodes = linearLayout;
        this.layoutError = itemErrorFullScreenBinding;
        this.pbWaitSendingCode = progressBar;
        this.toolbar = layoutToolbarBackIconBinding;
        this.tvDescriptionCall = textView3;
        this.tvGetNewCode = textView4;
        this.tvInputNumbers = textView5;
        this.tvPhoneNumber = textView6;
        this.tvSendCodeNumber = textView7;
        this.tvTitle = textView8;
    }

    public static FragmentVerificationNumberCardBinding bind(View view) {
        int i = R.id.btn_repeat_send_code;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_repeat_send_code);
        if (textView != null) {
            i = R.id.btn_request_call;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_request_call);
            if (textView2 != null) {
                i = R.id.et_code_five_call;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_five_call);
                if (editText != null) {
                    i = R.id.et_code_four_call;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_four_call);
                    if (editText2 != null) {
                        i = R.id.et_code_one_call;
                        EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_one_call);
                        if (editText3 != null) {
                            i = R.id.et_code_six_call;
                            EditText editText4 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_six_call);
                            if (editText4 != null) {
                                i = R.id.et_code_three_call;
                                EditText editText5 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_three_call);
                                if (editText5 != null) {
                                    i = R.id.et_code_two_call;
                                    EditText editText6 = (EditText) ViewBindings.findChildViewById(view, R.id.et_code_two_call);
                                    if (editText6 != null) {
                                        i = R.id.layout_codes;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_codes);
                                        if (linearLayout != null) {
                                            i = R.id.layout_error;
                                            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_error);
                                            if (viewFindChildViewById != null) {
                                                ItemErrorFullScreenBinding itemErrorFullScreenBindingBind = ItemErrorFullScreenBinding.bind(viewFindChildViewById);
                                                i = R.id.pb_wait_sending_code;
                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_wait_sending_code);
                                                if (progressBar != null) {
                                                    i = R.id.toolbar;
                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar);
                                                    if (viewFindChildViewById2 != null) {
                                                        LayoutToolbarBackIconBinding layoutToolbarBackIconBindingBind = LayoutToolbarBackIconBinding.bind(viewFindChildViewById2);
                                                        i = R.id.tv_description_call;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description_call);
                                                        if (textView3 != null) {
                                                            i = R.id.tv_get_new_code;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_get_new_code);
                                                            if (textView4 != null) {
                                                                i = R.id.tv_input_numbers;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_input_numbers);
                                                                if (textView5 != null) {
                                                                    i = R.id.tv_phone_number;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phone_number);
                                                                    if (textView6 != null) {
                                                                        i = R.id.tv_send_code_number;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_send_code_number);
                                                                        if (textView7 != null) {
                                                                            i = R.id.tv_title;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                            if (textView8 != null) {
                                                                                return new FragmentVerificationNumberCardBinding((ConstraintLayout) view, textView, textView2, editText, editText2, editText3, editText4, editText5, editText6, linearLayout, itemErrorFullScreenBindingBind, progressBar, layoutToolbarBackIconBindingBind, textView3, textView4, textView5, textView6, textView7, textView8);
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
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static FragmentVerificationNumberCardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_verification_number_card, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentVerificationNumberCardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

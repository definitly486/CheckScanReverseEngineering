package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentPhoneBinding implements ViewBinding {
    public final ImageView btnBackPhone;
    public final TextView btnGiveCode;
    public final EditText etNumberPhone;
    public final LayoutIAgreeReceivedElectrochequesViaBinding iAgreeReceivedElectrochequesViaLayout;
    public final ProgressBar pbWaitCodeElectrocheque;
    private final ConstraintLayout rootView;
    public final AppBarLayout toolbar;
    public final TextView tvInputYourPhone;
    public final TextView tvNumberPhone;
    public final TextView tvTitlePhone;
    public final TextView tvWhenEditNumber;

    private FragmentPhoneBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, EditText editText, LayoutIAgreeReceivedElectrochequesViaBinding layoutIAgreeReceivedElectrochequesViaBinding, ProgressBar progressBar, AppBarLayout appBarLayout, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = constraintLayout;
        this.btnBackPhone = imageView;
        this.btnGiveCode = textView;
        this.etNumberPhone = editText;
        this.iAgreeReceivedElectrochequesViaLayout = layoutIAgreeReceivedElectrochequesViaBinding;
        this.pbWaitCodeElectrocheque = progressBar;
        this.toolbar = appBarLayout;
        this.tvInputYourPhone = textView2;
        this.tvNumberPhone = textView3;
        this.tvTitlePhone = textView4;
        this.tvWhenEditNumber = textView5;
    }

    public static FragmentPhoneBinding bind(View view) {
        int i = R.id.btn_back_phone;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back_phone);
        if (imageView != null) {
            i = R.id.btn_give_code;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_give_code);
            if (textView != null) {
                i = R.id.et_number_phone;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_number_phone);
                if (editText != null) {
                    i = R.id.i_agree_received_electrocheques_via_layout;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.i_agree_received_electrocheques_via_layout);
                    if (viewFindChildViewById != null) {
                        LayoutIAgreeReceivedElectrochequesViaBinding layoutIAgreeReceivedElectrochequesViaBindingBind = LayoutIAgreeReceivedElectrochequesViaBinding.bind(viewFindChildViewById);
                        i = R.id.pb_wait_code_electrocheque;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_wait_code_electrocheque);
                        if (progressBar != null) {
                            i = R.id.toolbar;
                            AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (appBarLayout != null) {
                                i = R.id.tv_input_your_phone;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_input_your_phone);
                                if (textView2 != null) {
                                    i = R.id.tv_number_phone;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_number_phone);
                                    if (textView3 != null) {
                                        i = R.id.tv_title_phone;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title_phone);
                                        if (textView4 != null) {
                                            i = R.id.tv_when_edit_number;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_when_edit_number);
                                            if (textView5 != null) {
                                                return new FragmentPhoneBinding((ConstraintLayout) view, imageView, textView, editText, layoutIAgreeReceivedElectrochequesViaBindingBind, progressBar, appBarLayout, textView2, textView3, textView4, textView5);
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

    public static FragmentPhoneBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_phone, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPhoneBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

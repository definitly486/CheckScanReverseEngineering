package com.warefly.checkscan.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentPhoneSignUpBinding implements ViewBinding {
    public final Barrier barrierInviteCode;
    public final ImageView btnBack;
    public final TextView btnNext;
    public final TextView btnPersonalDataPolicy;
    public final TextView btnShowInviteCode;
    public final TextView btnSupport;
    public final TextView btnSupportBottom;
    public final TextInputEditText etInviteCode;
    public final TextInputEditText etPhone;
    public final Group groupInviteCode;
    public final ImageView ivLogo;
    public final NestedScrollView nestedScrolledView;
    private final ConstraintLayout rootView;
    public final RecyclerView rvAgreements;
    public final TextInputLayout tilInviteCode;
    public final TextInputLayout tilPhone;
    public final TextView tvInviteCodeTitle;
    public final TextView tvPhoneTitle;
    public final TextView tvTitle;

    private FragmentPhoneSignUpBinding(ConstraintLayout constraintLayout, Barrier barrier, ImageView imageView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, Group group, ImageView imageView2, NestedScrollView nestedScrollView, RecyclerView recyclerView, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.barrierInviteCode = barrier;
        this.btnBack = imageView;
        this.btnNext = textView;
        this.btnPersonalDataPolicy = textView2;
        this.btnShowInviteCode = textView3;
        this.btnSupport = textView4;
        this.btnSupportBottom = textView5;
        this.etInviteCode = textInputEditText;
        this.etPhone = textInputEditText2;
        this.groupInviteCode = group;
        this.ivLogo = imageView2;
        this.nestedScrolledView = nestedScrollView;
        this.rvAgreements = recyclerView;
        this.tilInviteCode = textInputLayout;
        this.tilPhone = textInputLayout2;
        this.tvInviteCodeTitle = textView6;
        this.tvPhoneTitle = textView7;
        this.tvTitle = textView8;
    }

    public static FragmentPhoneSignUpBinding bind(View view) {
        int i = R.id.barrier_invite_code;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_invite_code);
        if (barrier != null) {
            i = R.id.btn_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
            if (imageView != null) {
                i = R.id.btn_next;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_next);
                if (textView != null) {
                    i = R.id.btn_personal_data_policy;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_personal_data_policy);
                    if (textView2 != null) {
                        i = R.id.btn_show_invite_code;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_show_invite_code);
                        if (textView3 != null) {
                            i = R.id.btn_support;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_support);
                            if (textView4 != null) {
                                i = R.id.btn_support_bottom;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_support_bottom);
                                if (textView5 != null) {
                                    i = R.id.et_invite_code;
                                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_invite_code);
                                    if (textInputEditText != null) {
                                        i = R.id.et_phone;
                                        TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_phone);
                                        if (textInputEditText2 != null) {
                                            i = R.id.group_invite_code;
                                            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_invite_code);
                                            if (group != null) {
                                                i = R.id.iv_logo;
                                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                                                if (imageView2 != null) {
                                                    i = R.id.nested_scrolled_view;
                                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.nested_scrolled_view);
                                                    if (nestedScrollView != null) {
                                                        i = R.id.rv_agreements;
                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_agreements);
                                                        if (recyclerView != null) {
                                                            i = R.id.til_invite_code;
                                                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_invite_code);
                                                            if (textInputLayout != null) {
                                                                i = R.id.til_phone;
                                                                TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_phone);
                                                                if (textInputLayout2 != null) {
                                                                    i = R.id.tv_invite_code_title;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_invite_code_title);
                                                                    if (textView6 != null) {
                                                                        i = R.id.tv_phone_title;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_phone_title);
                                                                        if (textView7 != null) {
                                                                            i = R.id.tv_title;
                                                                            TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                            if (textView8 != null) {
                                                                                return new FragmentPhoneSignUpBinding((ConstraintLayout) view, barrier, imageView, textView, textView2, textView3, textView4, textView5, textInputEditText, textInputEditText2, group, imageView2, nestedScrollView, recyclerView, textInputLayout, textInputLayout2, textView6, textView7, textView8);
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

    public static FragmentPhoneSignUpBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_phone_sign_up, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPhoneSignUpBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

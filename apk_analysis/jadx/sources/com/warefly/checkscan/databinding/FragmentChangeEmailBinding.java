package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentChangeEmailBinding implements ViewBinding {
    public final ImageView btnBackEmailChange;
    public final TextView btnChangeEmail;
    public final TextView emailUpdateErrorText;
    public final EditText etMailChange;
    private final ConstraintLayout rootView;
    public final AppBarLayout toolbar;
    public final TextView tvEmailChange;
    public final TextView tvInputYourEmail;

    private FragmentChangeEmailBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, EditText editText, AppBarLayout appBarLayout, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.btnBackEmailChange = imageView;
        this.btnChangeEmail = textView;
        this.emailUpdateErrorText = textView2;
        this.etMailChange = editText;
        this.toolbar = appBarLayout;
        this.tvEmailChange = textView3;
        this.tvInputYourEmail = textView4;
    }

    public static FragmentChangeEmailBinding bind(View view) {
        int i = R.id.btn_back_email_change;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back_email_change);
        if (imageView != null) {
            i = R.id.btn_change_email;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_change_email);
            if (textView != null) {
                i = R.id.emailUpdateErrorText;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.emailUpdateErrorText);
                if (textView2 != null) {
                    i = R.id.et_mail_change;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_mail_change);
                    if (editText != null) {
                        i = R.id.toolbar;
                        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                        if (appBarLayout != null) {
                            i = R.id.tv_email_change;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_email_change);
                            if (textView3 != null) {
                                i = R.id.tv_input_your_email;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_input_your_email);
                                if (textView4 != null) {
                                    return new FragmentChangeEmailBinding((ConstraintLayout) view, imageView, textView, textView2, editText, appBarLayout, textView3, textView4);
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

    public static FragmentChangeEmailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_change_email, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentChangeEmailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

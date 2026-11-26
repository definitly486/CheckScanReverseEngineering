package com.warefly.checkscan.personalform.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemPersonalDataFormEmailBannerBinding implements ViewBinding {
    public final TextView btnAddEmail;
    public final View clickableArea;
    public final TextInputEditText etField;
    public final Group groupEmailField;
    public final ImageView ivBadge;
    public final ImageView ivLogo;
    public final MaterialCardView mcvBadge;
    private final MaterialCardView rootView;
    public final TextInputLayout tilField;
    public final TextView tvBadgeText;
    public final TextView tvDescription;
    public final TextView tvTitle;

    private ItemPersonalDataFormEmailBannerBinding(MaterialCardView materialCardView, TextView textView, View view, TextInputEditText textInputEditText, Group group, ImageView imageView, ImageView imageView2, MaterialCardView materialCardView2, TextInputLayout textInputLayout, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = materialCardView;
        this.btnAddEmail = textView;
        this.clickableArea = view;
        this.etField = textInputEditText;
        this.groupEmailField = group;
        this.ivBadge = imageView;
        this.ivLogo = imageView2;
        this.mcvBadge = materialCardView2;
        this.tilField = textInputLayout;
        this.tvBadgeText = textView2;
        this.tvDescription = textView3;
        this.tvTitle = textView4;
    }

    public static ItemPersonalDataFormEmailBannerBinding bind(View view) {
        int i = R.id.btn_add_email;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_add_email);
        if (textView != null) {
            i = R.id.clickable_area;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.clickable_area);
            if (viewFindChildViewById != null) {
                i = R.id.et_field;
                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_field);
                if (textInputEditText != null) {
                    i = R.id.group_email_field;
                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_email_field);
                    if (group != null) {
                        i = R.id.iv_badge;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_badge);
                        if (imageView != null) {
                            i = R.id.iv_logo;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                            if (imageView2 != null) {
                                i = R.id.mcv_badge;
                                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mcv_badge);
                                if (materialCardView != null) {
                                    i = R.id.til_field;
                                    TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_field);
                                    if (textInputLayout != null) {
                                        i = R.id.tv_badge_text;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_badge_text);
                                        if (textView2 != null) {
                                            i = R.id.tv_description;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                            if (textView3 != null) {
                                                i = R.id.tv_title;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                if (textView4 != null) {
                                                    return new ItemPersonalDataFormEmailBannerBinding((MaterialCardView) view, textView, viewFindChildViewById, textInputEditText, group, imageView, imageView2, materialCardView, textInputLayout, textView2, textView3, textView4);
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

    public static ItemPersonalDataFormEmailBannerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_personal_data_form_email_banner, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemPersonalDataFormEmailBannerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

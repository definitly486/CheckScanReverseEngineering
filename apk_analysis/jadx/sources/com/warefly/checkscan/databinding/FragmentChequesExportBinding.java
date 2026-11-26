package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentChequesExportBinding implements ViewBinding {
    public final ImageView btnBackExport;
    public final View btnChooseDate;
    public final ImageButton btnCloseDescription;
    public final TextView btnSend;
    public final TextInputEditText etDate;
    public final TextInputEditText etEmail;
    public final Group groupExportDescription;
    public final ImageView ivInfoBadge;
    private final ConstraintLayout rootView;
    public final TextInputLayout tilChooseDate;
    public final TextInputLayout tilExportEmail;
    public final View toolbarDivider;
    public final TextView tvChooseParameters;
    public final TextView tvExportDescription;
    public final TextView tvToolbarTitle;
    public final View viewDescriptionBackground;

    private FragmentChequesExportBinding(ConstraintLayout constraintLayout, ImageView imageView, View view, ImageButton imageButton, TextView textView, TextInputEditText textInputEditText, TextInputEditText textInputEditText2, Group group, ImageView imageView2, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, View view2, TextView textView2, TextView textView3, TextView textView4, View view3) {
        this.rootView = constraintLayout;
        this.btnBackExport = imageView;
        this.btnChooseDate = view;
        this.btnCloseDescription = imageButton;
        this.btnSend = textView;
        this.etDate = textInputEditText;
        this.etEmail = textInputEditText2;
        this.groupExportDescription = group;
        this.ivInfoBadge = imageView2;
        this.tilChooseDate = textInputLayout;
        this.tilExportEmail = textInputLayout2;
        this.toolbarDivider = view2;
        this.tvChooseParameters = textView2;
        this.tvExportDescription = textView3;
        this.tvToolbarTitle = textView4;
        this.viewDescriptionBackground = view3;
    }

    public static FragmentChequesExportBinding bind(View view) {
        int i = R.id.btn_back_export;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back_export);
        if (imageView != null) {
            i = R.id.btn_choose_date;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.btn_choose_date);
            if (viewFindChildViewById != null) {
                i = R.id.btn_close_description;
                ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btn_close_description);
                if (imageButton != null) {
                    i = R.id.btn_send;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_send);
                    if (textView != null) {
                        i = R.id.et_date;
                        TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_date);
                        if (textInputEditText != null) {
                            i = R.id.et_email;
                            TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.et_email);
                            if (textInputEditText2 != null) {
                                i = R.id.group_export_description;
                                Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_export_description);
                                if (group != null) {
                                    i = R.id.iv_info_badge;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_info_badge);
                                    if (imageView2 != null) {
                                        i = R.id.til_choose_date;
                                        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_choose_date);
                                        if (textInputLayout != null) {
                                            i = R.id.til_export_email;
                                            TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.til_export_email);
                                            if (textInputLayout2 != null) {
                                                i = R.id.toolbar_divider;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.toolbar_divider);
                                                if (viewFindChildViewById2 != null) {
                                                    i = R.id.tv_choose_parameters;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_choose_parameters);
                                                    if (textView2 != null) {
                                                        i = R.id.tv_export_description;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_export_description);
                                                        if (textView3 != null) {
                                                            i = R.id.tv_toolbar_title;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                                                            if (textView4 != null) {
                                                                i = R.id.view_description_background;
                                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.view_description_background);
                                                                if (viewFindChildViewById3 != null) {
                                                                    return new FragmentChequesExportBinding((ConstraintLayout) view, imageView, viewFindChildViewById, imageButton, textView, textInputEditText, textInputEditText2, group, imageView2, textInputLayout, textInputLayout2, viewFindChildViewById2, textView2, textView3, textView4, viewFindChildViewById3);
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

    public static FragmentChequesExportBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_cheques_export, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentChequesExportBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

package com.warefly.checkscan.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemRvProfileInviteCodeBinding implements ViewBinding {
    public final TextView btnCopy;
    public final LoadingButton btnShare;
    public final LinearLayout llCode;
    private final MaterialCardView rootView;
    public final TextView tvInviteCode;
    public final TextView tvTitle;

    private ItemRvProfileInviteCodeBinding(MaterialCardView materialCardView, TextView textView, LoadingButton loadingButton, LinearLayout linearLayout, TextView textView2, TextView textView3) {
        this.rootView = materialCardView;
        this.btnCopy = textView;
        this.btnShare = loadingButton;
        this.llCode = linearLayout;
        this.tvInviteCode = textView2;
        this.tvTitle = textView3;
    }

    public static ItemRvProfileInviteCodeBinding bind(View view) {
        int i = R.id.btn_copy;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_copy);
        if (textView != null) {
            i = R.id.btn_share;
            LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_share);
            if (loadingButton != null) {
                i = R.id.ll_code;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_code);
                if (linearLayout != null) {
                    i = R.id.tv_invite_code;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_invite_code);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView3 != null) {
                            return new ItemRvProfileInviteCodeBinding((MaterialCardView) view, textView, loadingButton, linearLayout, textView2, textView3);
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static ItemRvProfileInviteCodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_rv_profile_invite_code, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ItemRvProfileInviteCodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

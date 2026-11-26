package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogHowGetMoreCashbackBinding implements ViewBinding {
    public final AppCompatTextView btnAction;
    public final ImageView btnClose;
    public final View divider;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final AppCompatTextView tvDialogHeader;
    public final View viewHeader;

    private DialogHowGetMoreCashbackBinding(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, ImageView imageView, View view, RecyclerView recyclerView, AppCompatTextView appCompatTextView2, View view2) {
        this.rootView = constraintLayout;
        this.btnAction = appCompatTextView;
        this.btnClose = imageView;
        this.divider = view;
        this.rvContent = recyclerView;
        this.tvDialogHeader = appCompatTextView2;
        this.viewHeader = view2;
    }

    public static DialogHowGetMoreCashbackBinding bind(View view) {
        int i = R.id.btn_action;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_action);
        if (appCompatTextView != null) {
            i = R.id.btn_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
            if (imageView != null) {
                i = R.id.divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
                if (viewFindChildViewById != null) {
                    i = R.id.rv_content;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                    if (recyclerView != null) {
                        i = R.id.tv_dialog_header;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_dialog_header);
                        if (appCompatTextView2 != null) {
                            i = R.id.view_header;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_header);
                            if (viewFindChildViewById2 != null) {
                                return new DialogHowGetMoreCashbackBinding((ConstraintLayout) view, appCompatTextView, imageView, viewFindChildViewById, recyclerView, appCompatTextView2, viewFindChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static DialogHowGetMoreCashbackBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_how_get_more_cashback, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogHowGetMoreCashbackBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

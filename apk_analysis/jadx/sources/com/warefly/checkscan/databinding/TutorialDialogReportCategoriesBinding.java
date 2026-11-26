package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class TutorialDialogReportCategoriesBinding implements ViewBinding {
    public final ImageView btnClose;
    public final ItemCategoryInChequeBinding category;
    private final ConstraintLayout rootView;
    public final TextView text;
    public final TextView title;
    public final TextView tvName;
    public final TextView tvSumWord;
    public final View viewSelection;

    private TutorialDialogReportCategoriesBinding(ConstraintLayout constraintLayout, ImageView imageView, ItemCategoryInChequeBinding itemCategoryInChequeBinding, TextView textView, TextView textView2, TextView textView3, TextView textView4, View view) {
        this.rootView = constraintLayout;
        this.btnClose = imageView;
        this.category = itemCategoryInChequeBinding;
        this.text = textView;
        this.title = textView2;
        this.tvName = textView3;
        this.tvSumWord = textView4;
        this.viewSelection = view;
    }

    public static TutorialDialogReportCategoriesBinding bind(View view) {
        int i = R.id.btn_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
        if (imageView != null) {
            i = R.id.category;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.category);
            if (viewFindChildViewById != null) {
                ItemCategoryInChequeBinding itemCategoryInChequeBindingBind = ItemCategoryInChequeBinding.bind(viewFindChildViewById);
                i = R.id.text;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text);
                if (textView != null) {
                    i = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        i = R.id.tv_name;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                        if (textView3 != null) {
                            i = R.id.tv_sum_word;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_sum_word);
                            if (textView4 != null) {
                                i = R.id.view_selection;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_selection);
                                if (viewFindChildViewById2 != null) {
                                    return new TutorialDialogReportCategoriesBinding((ConstraintLayout) view, imageView, itemCategoryInChequeBindingBind, textView, textView2, textView3, textView4, viewFindChildViewById2);
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

    public static TutorialDialogReportCategoriesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tutorial_dialog_report_categories, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static TutorialDialogReportCategoriesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentAddChequeBinding implements ViewBinding {
    public final ImageView btnBack;
    public final ImageView btnDelete;
    public final MaterialCardView cardReceiptData;
    public final RejectedReceiptLayoutBinding incldHeader;
    public final ImageView ivReceiptDataQr;
    public final LayoutQrInfoBinding layoutReceiptDataQrInfo;
    public final NestedScrollView queueChequeContent;
    private final CoordinatorLayout rootView;
    public final AppBarLayout toolbar;
    public final TextView toolbarTitle;
    public final TextView tvReceiptDataSum;
    public final TextView tvReceiptDataTitle;

    private FragmentAddChequeBinding(CoordinatorLayout coordinatorLayout, ImageView imageView, ImageView imageView2, MaterialCardView materialCardView, RejectedReceiptLayoutBinding rejectedReceiptLayoutBinding, ImageView imageView3, LayoutQrInfoBinding layoutQrInfoBinding, NestedScrollView nestedScrollView, AppBarLayout appBarLayout, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = coordinatorLayout;
        this.btnBack = imageView;
        this.btnDelete = imageView2;
        this.cardReceiptData = materialCardView;
        this.incldHeader = rejectedReceiptLayoutBinding;
        this.ivReceiptDataQr = imageView3;
        this.layoutReceiptDataQrInfo = layoutQrInfoBinding;
        this.queueChequeContent = nestedScrollView;
        this.toolbar = appBarLayout;
        this.toolbarTitle = textView;
        this.tvReceiptDataSum = textView2;
        this.tvReceiptDataTitle = textView3;
    }

    public static FragmentAddChequeBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.btn_delete;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_delete);
            if (imageView2 != null) {
                i = R.id.card_receipt_data;
                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_receipt_data);
                if (materialCardView != null) {
                    i = R.id.incld_header;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_header);
                    if (viewFindChildViewById != null) {
                        RejectedReceiptLayoutBinding rejectedReceiptLayoutBindingBind = RejectedReceiptLayoutBinding.bind(viewFindChildViewById);
                        i = R.id.iv_receipt_data_qr;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_receipt_data_qr);
                        if (imageView3 != null) {
                            i = R.id.layout_receipt_data_qr_info;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.layout_receipt_data_qr_info);
                            if (viewFindChildViewById2 != null) {
                                LayoutQrInfoBinding layoutQrInfoBindingBind = LayoutQrInfoBinding.bind(viewFindChildViewById2);
                                i = R.id.queue_cheque_content;
                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.queue_cheque_content);
                                if (nestedScrollView != null) {
                                    i = R.id.toolbar;
                                    AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                                    if (appBarLayout != null) {
                                        i = R.id.toolbar_title;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.toolbar_title);
                                        if (textView != null) {
                                            i = R.id.tv_receipt_data_sum;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_receipt_data_sum);
                                            if (textView2 != null) {
                                                i = R.id.tv_receipt_data_title;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_receipt_data_title);
                                                if (textView3 != null) {
                                                    return new FragmentAddChequeBinding((CoordinatorLayout) view, imageView, imageView2, materialCardView, rejectedReceiptLayoutBindingBind, imageView3, layoutQrInfoBindingBind, nestedScrollView, appBarLayout, textView, textView2, textView3);
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

    public static FragmentAddChequeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_add_cheque, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAddChequeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

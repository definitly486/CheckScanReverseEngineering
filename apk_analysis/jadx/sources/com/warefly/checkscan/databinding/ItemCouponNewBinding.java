package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemCouponNewBinding implements ViewBinding {
    public final LoadingButton btnCopyCode;
    public final ImageView divider;
    public final ImageView ivBanner;
    public final ImageView ivImageCode;
    public final ImageView ivQrCode;
    public final FrameLayout layoutCode;
    public final ItemCouponPromocodeBinding layoutPromocode;
    private final ConstraintLayout rootView;
    public final TextView tvDescription;
    public final TextView tvExpiration;
    public final TextView tvTitle;
    public final LayoutBarcodeBinding viewBarcode;

    private ItemCouponNewBinding(ConstraintLayout constraintLayout, LoadingButton loadingButton, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, FrameLayout frameLayout, ItemCouponPromocodeBinding itemCouponPromocodeBinding, TextView textView, TextView textView2, TextView textView3, LayoutBarcodeBinding layoutBarcodeBinding) {
        this.rootView = constraintLayout;
        this.btnCopyCode = loadingButton;
        this.divider = imageView;
        this.ivBanner = imageView2;
        this.ivImageCode = imageView3;
        this.ivQrCode = imageView4;
        this.layoutCode = frameLayout;
        this.layoutPromocode = itemCouponPromocodeBinding;
        this.tvDescription = textView;
        this.tvExpiration = textView2;
        this.tvTitle = textView3;
        this.viewBarcode = layoutBarcodeBinding;
    }

    public static ItemCouponNewBinding bind(View view) {
        int i = R.id.btn_copy_code;
        LoadingButton loadingButton = (LoadingButton) ViewBindings.findChildViewById(view, R.id.btn_copy_code);
        if (loadingButton != null) {
            i = R.id.divider;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.divider);
            if (imageView != null) {
                i = R.id.iv_banner;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_banner);
                if (imageView2 != null) {
                    i = R.id.iv_image_code;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_image_code);
                    if (imageView3 != null) {
                        i = R.id.iv_qr_code;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_qr_code);
                        if (imageView4 != null) {
                            i = R.id.layout_code;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.layout_code);
                            if (frameLayout != null) {
                                i = R.id.layout_promocode;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_promocode);
                                if (viewFindChildViewById != null) {
                                    ItemCouponPromocodeBinding itemCouponPromocodeBindingBind = ItemCouponPromocodeBinding.bind(viewFindChildViewById);
                                    i = R.id.tv_description;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                    if (textView != null) {
                                        i = R.id.tv_expiration;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_expiration);
                                        if (textView2 != null) {
                                            i = R.id.tv_title;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                            if (textView3 != null) {
                                                i = R.id.view_barcode;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_barcode);
                                                if (viewFindChildViewById2 != null) {
                                                    return new ItemCouponNewBinding((ConstraintLayout) view, loadingButton, imageView, imageView2, imageView3, imageView4, frameLayout, itemCouponPromocodeBindingBind, textView, textView2, textView3, LayoutBarcodeBinding.bind(viewFindChildViewById2));
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

    public static ItemCouponNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.item_coupon_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemCouponNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

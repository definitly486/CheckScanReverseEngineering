package com.warefly.checkscan.scannerml.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.camera.view.PreviewView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentScannerNewBinding implements ViewBinding {
    public final Barrier barrierTopButtons;
    public final AppCompatTextView btnLoad;
    public final AppCompatTextView btnManual;
    public final Guideline glTop;
    public final Group groupCheques;
    public final ImageView ivBrandlink;
    public final ImageView ivClose;
    public final ImageView ivFlash;
    public final ImageView ivGallery;
    public final ImageView ivInfo;
    public final ImageView ivScannerFrame;
    public final ItemMessageBinding message;
    public final ItemMessageErrorBinding messageError;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContent;
    public final ItemChequeWithCountBinding tvChequeInfo;
    public final PreviewView viewPreview;

    private FragmentScannerNewBinding(ConstraintLayout constraintLayout, Barrier barrier, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, Guideline guideline, Group group, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, ImageView imageView6, ItemMessageBinding itemMessageBinding, ItemMessageErrorBinding itemMessageErrorBinding, RecyclerView recyclerView, ItemChequeWithCountBinding itemChequeWithCountBinding, PreviewView previewView) {
        this.rootView = constraintLayout;
        this.barrierTopButtons = barrier;
        this.btnLoad = appCompatTextView;
        this.btnManual = appCompatTextView2;
        this.glTop = guideline;
        this.groupCheques = group;
        this.ivBrandlink = imageView;
        this.ivClose = imageView2;
        this.ivFlash = imageView3;
        this.ivGallery = imageView4;
        this.ivInfo = imageView5;
        this.ivScannerFrame = imageView6;
        this.message = itemMessageBinding;
        this.messageError = itemMessageErrorBinding;
        this.rvContent = recyclerView;
        this.tvChequeInfo = itemChequeWithCountBinding;
        this.viewPreview = previewView;
    }

    public static FragmentScannerNewBinding bind(View view) {
        int i = R.id.barrier_top_buttons;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, R.id.barrier_top_buttons);
        if (barrier != null) {
            i = R.id.btn_load;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_load);
            if (appCompatTextView != null) {
                i = R.id.btn_manual;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.btn_manual);
                if (appCompatTextView2 != null) {
                    i = R.id.gl_top;
                    Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, R.id.gl_top);
                    if (guideline != null) {
                        i = R.id.group_cheques;
                        Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_cheques);
                        if (group != null) {
                            i = R.id.iv_brandlink;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_brandlink);
                            if (imageView != null) {
                                i = R.id.iv_close;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                                if (imageView2 != null) {
                                    i = R.id.iv_flash;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_flash);
                                    if (imageView3 != null) {
                                        i = R.id.iv_gallery;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_gallery);
                                        if (imageView4 != null) {
                                            i = R.id.iv_info;
                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_info);
                                            if (imageView5 != null) {
                                                i = R.id.iv_scanner_frame;
                                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_scanner_frame);
                                                if (imageView6 != null) {
                                                    i = R.id.message;
                                                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.message);
                                                    if (viewFindChildViewById != null) {
                                                        ItemMessageBinding itemMessageBindingBind = ItemMessageBinding.bind(viewFindChildViewById);
                                                        i = R.id.message_error;
                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.message_error);
                                                        if (viewFindChildViewById2 != null) {
                                                            ItemMessageErrorBinding itemMessageErrorBindingBind = ItemMessageErrorBinding.bind(viewFindChildViewById2);
                                                            i = R.id.rv_content;
                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
                                                            if (recyclerView != null) {
                                                                i = R.id.tv_cheque_info;
                                                                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.tv_cheque_info);
                                                                if (viewFindChildViewById3 != null) {
                                                                    ItemChequeWithCountBinding itemChequeWithCountBindingBind = ItemChequeWithCountBinding.bind(viewFindChildViewById3);
                                                                    i = R.id.view_preview;
                                                                    PreviewView previewView = (PreviewView) ViewBindings.findChildViewById(view, R.id.view_preview);
                                                                    if (previewView != null) {
                                                                        return new FragmentScannerNewBinding((ConstraintLayout) view, barrier, appCompatTextView, appCompatTextView2, guideline, group, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, itemMessageBindingBind, itemMessageErrorBindingBind, recyclerView, itemChequeWithCountBindingBind, previewView);
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

    public static FragmentScannerNewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_scanner_new, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentScannerNewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

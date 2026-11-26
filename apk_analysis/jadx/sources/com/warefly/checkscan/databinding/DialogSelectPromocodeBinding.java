package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.LayoutAdsBadgeBinding;
import com.warefly.checkscan.core.ui.databinding.LayoutBlueHint12Binding;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogSelectPromocodeBinding implements ViewBinding {
    public final TextView btnPrimary;
    public final Group groupHint;
    public final LayoutAdsBadgeBinding incldAdsBadge;
    public final ItemSelectPromocodeExchangeGivenBinding incldGivenToUser;
    public final LayoutBlueHint12Binding incldLayoutHint;
    public final ItemSelectPromocodeExchangeTakenBinding incldTakenFromUser;
    public final ImageView ivArrow;
    public final ImageView ivIndicator;
    public final ImageView ivLogo;
    private final ConstraintLayout rootView;
    public final Space spaceBottomHint;
    public final TextView tvDescription;
    public final TextView tvTitle;
    public final View vDragZone;

    private DialogSelectPromocodeBinding(ConstraintLayout constraintLayout, TextView textView, Group group, LayoutAdsBadgeBinding layoutAdsBadgeBinding, ItemSelectPromocodeExchangeGivenBinding itemSelectPromocodeExchangeGivenBinding, LayoutBlueHint12Binding layoutBlueHint12Binding, ItemSelectPromocodeExchangeTakenBinding itemSelectPromocodeExchangeTakenBinding, ImageView imageView, ImageView imageView2, ImageView imageView3, Space space, TextView textView2, TextView textView3, View view) {
        this.rootView = constraintLayout;
        this.btnPrimary = textView;
        this.groupHint = group;
        this.incldAdsBadge = layoutAdsBadgeBinding;
        this.incldGivenToUser = itemSelectPromocodeExchangeGivenBinding;
        this.incldLayoutHint = layoutBlueHint12Binding;
        this.incldTakenFromUser = itemSelectPromocodeExchangeTakenBinding;
        this.ivArrow = imageView;
        this.ivIndicator = imageView2;
        this.ivLogo = imageView3;
        this.spaceBottomHint = space;
        this.tvDescription = textView2;
        this.tvTitle = textView3;
        this.vDragZone = view;
    }

    public static DialogSelectPromocodeBinding bind(View view) {
        int i = R.id.btn_primary;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_primary);
        if (textView != null) {
            i = R.id.group_hint;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_hint);
            if (group != null) {
                i = R.id.incld_ads_badge;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.incld_ads_badge);
                if (viewFindChildViewById != null) {
                    LayoutAdsBadgeBinding layoutAdsBadgeBindingBind = LayoutAdsBadgeBinding.bind(viewFindChildViewById);
                    i = R.id.incld_given_to_user;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.incld_given_to_user);
                    if (viewFindChildViewById2 != null) {
                        ItemSelectPromocodeExchangeGivenBinding itemSelectPromocodeExchangeGivenBindingBind = ItemSelectPromocodeExchangeGivenBinding.bind(viewFindChildViewById2);
                        i = R.id.incld_layout_hint;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.incld_layout_hint);
                        if (viewFindChildViewById3 != null) {
                            LayoutBlueHint12Binding layoutBlueHint12BindingBind = LayoutBlueHint12Binding.bind(viewFindChildViewById3);
                            i = R.id.incld_taken_from_user;
                            View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.incld_taken_from_user);
                            if (viewFindChildViewById4 != null) {
                                ItemSelectPromocodeExchangeTakenBinding itemSelectPromocodeExchangeTakenBindingBind = ItemSelectPromocodeExchangeTakenBinding.bind(viewFindChildViewById4);
                                i = R.id.iv_arrow;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow);
                                if (imageView != null) {
                                    i = R.id.iv_indicator;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_indicator);
                                    if (imageView2 != null) {
                                        i = R.id.iv_logo;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_logo);
                                        if (imageView3 != null) {
                                            i = R.id.space_bottom_hint;
                                            Space space = (Space) ViewBindings.findChildViewById(view, R.id.space_bottom_hint);
                                            if (space != null) {
                                                i = R.id.tv_description;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_description);
                                                if (textView2 != null) {
                                                    i = R.id.tv_title;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                    if (textView3 != null) {
                                                        i = R.id.v_drag_zone;
                                                        View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.v_drag_zone);
                                                        if (viewFindChildViewById5 != null) {
                                                            return new DialogSelectPromocodeBinding((ConstraintLayout) view, textView, group, layoutAdsBadgeBindingBind, itemSelectPromocodeExchangeGivenBindingBind, layoutBlueHint12BindingBind, itemSelectPromocodeExchangeTakenBindingBind, imageView, imageView2, imageView3, space, textView2, textView3, viewFindChildViewById5);
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

    public static DialogSelectPromocodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_select_promocode, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogSelectPromocodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

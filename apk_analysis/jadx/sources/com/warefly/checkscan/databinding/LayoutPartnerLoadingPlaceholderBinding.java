package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutPartnerLoadingPlaceholderBinding implements ViewBinding {
    public final View placeholder1;
    public final View placeholder2;
    public final View placeholder3;
    public final View placeholder4;
    public final View placeholder5;
    public final View placeholder6;
    public final View placeholder7;
    public final View placeholder8;
    public final View placeholderLogo;
    public final View placeholderTitle;
    public final View placeholderValue;
    private final FrameLayout rootView;

    private LayoutPartnerLoadingPlaceholderBinding(FrameLayout frameLayout, View view, View view2, View view3, View view4, View view5, View view6, View view7, View view8, View view9, View view10, View view11) {
        this.rootView = frameLayout;
        this.placeholder1 = view;
        this.placeholder2 = view2;
        this.placeholder3 = view3;
        this.placeholder4 = view4;
        this.placeholder5 = view5;
        this.placeholder6 = view6;
        this.placeholder7 = view7;
        this.placeholder8 = view8;
        this.placeholderLogo = view9;
        this.placeholderTitle = view10;
        this.placeholderValue = view11;
    }

    public static LayoutPartnerLoadingPlaceholderBinding bind(View view) {
        int i = R.id.placeholder_1;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.placeholder_1);
        if (viewFindChildViewById != null) {
            i = R.id.placeholder_2;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.placeholder_2);
            if (viewFindChildViewById2 != null) {
                i = R.id.placeholder_3;
                View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.placeholder_3);
                if (viewFindChildViewById3 != null) {
                    i = R.id.placeholder_4;
                    View viewFindChildViewById4 = ViewBindings.findChildViewById(view, R.id.placeholder_4);
                    if (viewFindChildViewById4 != null) {
                        i = R.id.placeholder_5;
                        View viewFindChildViewById5 = ViewBindings.findChildViewById(view, R.id.placeholder_5);
                        if (viewFindChildViewById5 != null) {
                            i = R.id.placeholder_6;
                            View viewFindChildViewById6 = ViewBindings.findChildViewById(view, R.id.placeholder_6);
                            if (viewFindChildViewById6 != null) {
                                i = R.id.placeholder_7;
                                View viewFindChildViewById7 = ViewBindings.findChildViewById(view, R.id.placeholder_7);
                                if (viewFindChildViewById7 != null) {
                                    i = R.id.placeholder_8;
                                    View viewFindChildViewById8 = ViewBindings.findChildViewById(view, R.id.placeholder_8);
                                    if (viewFindChildViewById8 != null) {
                                        i = R.id.placeholder_logo;
                                        View viewFindChildViewById9 = ViewBindings.findChildViewById(view, R.id.placeholder_logo);
                                        if (viewFindChildViewById9 != null) {
                                            i = R.id.placeholder_title;
                                            View viewFindChildViewById10 = ViewBindings.findChildViewById(view, R.id.placeholder_title);
                                            if (viewFindChildViewById10 != null) {
                                                i = R.id.placeholder_value;
                                                View viewFindChildViewById11 = ViewBindings.findChildViewById(view, R.id.placeholder_value);
                                                if (viewFindChildViewById11 != null) {
                                                    return new LayoutPartnerLoadingPlaceholderBinding((FrameLayout) view, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4, viewFindChildViewById5, viewFindChildViewById6, viewFindChildViewById7, viewFindChildViewById8, viewFindChildViewById9, viewFindChildViewById10, viewFindChildViewById11);
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

    public static LayoutPartnerLoadingPlaceholderBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_partner_loading_placeholder, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LayoutPartnerLoadingPlaceholderBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

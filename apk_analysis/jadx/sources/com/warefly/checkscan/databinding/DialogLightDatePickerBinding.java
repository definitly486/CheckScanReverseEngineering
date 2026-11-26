package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class DialogLightDatePickerBinding implements ViewBinding {
    public final TextView btnClear;
    public final ImageView btnClose;
    public final TextView btnShow;
    public final ItemNamesDayOfWeekBinding layoutNamesDay;
    private final ConstraintLayout rootView;
    public final RecyclerView rvCalendarCustom;
    public final RecyclerView rvDaysOfWeek;
    public final TextView tvTitle;
    public final View viewHeader;

    private DialogLightDatePickerBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, TextView textView2, ItemNamesDayOfWeekBinding itemNamesDayOfWeekBinding, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView3, View view) {
        this.rootView = constraintLayout;
        this.btnClear = textView;
        this.btnClose = imageView;
        this.btnShow = textView2;
        this.layoutNamesDay = itemNamesDayOfWeekBinding;
        this.rvCalendarCustom = recyclerView;
        this.rvDaysOfWeek = recyclerView2;
        this.tvTitle = textView3;
        this.viewHeader = view;
    }

    public static DialogLightDatePickerBinding bind(View view) {
        int i = R.id.btn_clear;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btn_clear);
        if (textView != null) {
            i = R.id.btn_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_close);
            if (imageView != null) {
                i = R.id.btn_show;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.btn_show);
                if (textView2 != null) {
                    i = R.id.layout_names_day;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.layout_names_day);
                    if (viewFindChildViewById != null) {
                        ItemNamesDayOfWeekBinding itemNamesDayOfWeekBindingBind = ItemNamesDayOfWeekBinding.bind(viewFindChildViewById);
                        i = R.id.rv_calendar_custom;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_calendar_custom);
                        if (recyclerView != null) {
                            i = R.id.rv_days_of_week;
                            RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_days_of_week);
                            if (recyclerView2 != null) {
                                i = R.id.tv_title;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView3 != null) {
                                    i = R.id.view_header;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.view_header);
                                    if (viewFindChildViewById2 != null) {
                                        return new DialogLightDatePickerBinding((ConstraintLayout) view, textView, imageView, textView2, itemNamesDayOfWeekBindingBind, recyclerView, recyclerView2, textView3, viewFindChildViewById2);
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

    public static DialogLightDatePickerBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_light_date_picker, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogLightDatePickerBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

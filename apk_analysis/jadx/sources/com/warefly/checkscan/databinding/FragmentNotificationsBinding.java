package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class FragmentNotificationsBinding implements ViewBinding {
    public final ImageView btnBack;
    public final Group groupNoNotifications;
    public final ProgressBar pbBottomLoading;
    public final CircularProgressIndicator pbLoading;
    private final ConstraintLayout rootView;
    public final RecyclerView rvNotifs;
    public final ConstraintLayout toolbar;
    public final TextView tvNoNotificationsMessage;
    public final TextView tvNoNotificationsTitle;
    public final TextView tvTitle;

    private FragmentNotificationsBinding(ConstraintLayout constraintLayout, ImageView imageView, Group group, ProgressBar progressBar, CircularProgressIndicator circularProgressIndicator, RecyclerView recyclerView, ConstraintLayout constraintLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.btnBack = imageView;
        this.groupNoNotifications = group;
        this.pbBottomLoading = progressBar;
        this.pbLoading = circularProgressIndicator;
        this.rvNotifs = recyclerView;
        this.toolbar = constraintLayout2;
        this.tvNoNotificationsMessage = textView;
        this.tvNoNotificationsTitle = textView2;
        this.tvTitle = textView3;
    }

    public static FragmentNotificationsBinding bind(View view) {
        int i = R.id.btn_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btn_back);
        if (imageView != null) {
            i = R.id.group_no_notifications;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_no_notifications);
            if (group != null) {
                i = R.id.pb_bottom_loading;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_bottom_loading);
                if (progressBar != null) {
                    i = R.id.pb_loading;
                    CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, R.id.pb_loading);
                    if (circularProgressIndicator != null) {
                        i = R.id.rv_notifs;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_notifs);
                        if (recyclerView != null) {
                            i = R.id.toolbar;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.toolbar);
                            if (constraintLayout != null) {
                                i = R.id.tv_no_notifications_message;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_notifications_message);
                                if (textView != null) {
                                    i = R.id.tv_no_notifications_title;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_no_notifications_title);
                                    if (textView2 != null) {
                                        i = R.id.tv_title;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                        if (textView3 != null) {
                                            return new FragmentNotificationsBinding((ConstraintLayout) view, imageView, group, progressBar, circularProgressIndicator, recyclerView, constraintLayout, textView, textView2, textView3);
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

    public static FragmentNotificationsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_notifications, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentNotificationsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

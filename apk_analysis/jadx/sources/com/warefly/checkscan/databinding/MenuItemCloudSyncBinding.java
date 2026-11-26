package com.warefly.checkscan.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.warefly.checkscan.R;
import defpackage.o2;

/* JADX INFO: loaded from: classes5.dex */
public final class MenuItemCloudSyncBinding implements ViewBinding {
    public final ImageView icCloud;
    public final ImageView ivStartSyncBtn;
    public final ProgressBar progressNotesSync;
    private final ConstraintLayout rootView;

    private MenuItemCloudSyncBinding(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, ProgressBar progressBar) {
        this.rootView = constraintLayout;
        this.icCloud = imageView;
        this.ivStartSyncBtn = imageView2;
        this.progressNotesSync = progressBar;
    }

    public static MenuItemCloudSyncBinding bind(View view) {
        int i = R.id.ic_cloud;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_cloud);
        if (imageView != null) {
            i = R.id.iv_start_sync_btn;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_start_sync_btn);
            if (imageView2 != null) {
                i = R.id.progress_notes_sync;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_notes_sync);
                if (progressBar != null) {
                    return new MenuItemCloudSyncBinding((ConstraintLayout) view, imageView, imageView2, progressBar);
                }
            }
        }
        o2.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    public static MenuItemCloudSyncBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.menu_item_cloud_sync, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static MenuItemCloudSyncBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}

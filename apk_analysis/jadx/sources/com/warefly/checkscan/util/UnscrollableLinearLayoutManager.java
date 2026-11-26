package com.warefly.checkscan.util;

import androidx.recyclerview.widget.LinearLayoutManager;

/* JADX INFO: loaded from: classes5.dex */
public final class UnscrollableLinearLayoutManager extends LinearLayoutManager {
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return false;
    }
}

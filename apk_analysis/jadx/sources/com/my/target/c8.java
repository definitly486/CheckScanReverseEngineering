package com.my.target;

import android.view.View;
import defpackage.nz9;

/* JADX INFO: loaded from: classes4.dex */
public final class c8 extends nz9 {
    public e6 getAdChoicesButton() {
        return null;
    }

    public e8 getInteractiveView() {
        return null;
    }

    public f8 getPostView() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        getContext();
        throw null;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        getContext();
        View.MeasureSpec.makeMeasureSpec(size, 1073741824);
        View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
        throw null;
    }
}

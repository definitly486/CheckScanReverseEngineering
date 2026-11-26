package com.my.target;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.l3a;

/* JADX INFO: loaded from: classes4.dex */
public final class q3 extends FrameLayout {
    public final m b;

    public q3(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m mVar = new m(context);
        this.b = mVar;
        int iD = l3a.d(2, context);
        mVar.setPadding(iD, iD, iD, iD);
        mVar.setFixedHeight(l3a.d(17, context));
        addView(mVar);
    }

    public m getAdChoicesView() {
        return this.b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public q3(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public q3(Context context) {
        this(context, null);
    }
}

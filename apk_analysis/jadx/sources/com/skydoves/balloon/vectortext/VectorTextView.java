package com.skydoves.balloon.vectortext;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import defpackage.gc9;
import defpackage.jh2;
import defpackage.tk2;
import defpackage.ww6;
import defpackage.ys8;

/* JADX INFO: loaded from: classes4.dex */
public final class VectorTextView extends AppCompatTextView {
    public gc9 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ww6.a);
            typedArrayObtainStyledAttributes.getClass();
            setDrawableTextViewParams(new gc9(tk2.h(typedArrayObtainStyledAttributes.getResourceId(5, Integer.MIN_VALUE)), tk2.h(typedArrayObtainStyledAttributes.getResourceId(1, Integer.MIN_VALUE)), tk2.h(typedArrayObtainStyledAttributes.getResourceId(0, Integer.MIN_VALUE)), tk2.h(typedArrayObtainStyledAttributes.getResourceId(7, Integer.MIN_VALUE)), null, null, null, null, tk2.h(typedArrayObtainStyledAttributes.getResourceId(3, Integer.MIN_VALUE)), tk2.h(typedArrayObtainStyledAttributes.getColor(6, Integer.MIN_VALUE)), tk2.h(typedArrayObtainStyledAttributes.getResourceId(8, Integer.MIN_VALUE)), tk2.h(typedArrayObtainStyledAttributes.getResourceId(2, Integer.MIN_VALUE)), tk2.h(typedArrayObtainStyledAttributes.getResourceId(4, Integer.MIN_VALUE)), 8176));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final gc9 getDrawableTextViewParams() {
        return this.v;
    }

    public final void setDrawableTextViewParams(gc9 gc9Var) {
        if (gc9Var != null) {
            ys8.a(this, gc9Var);
        } else {
            gc9Var = null;
        }
        this.v = gc9Var;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VectorTextView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        context.getClass();
    }

    public /* synthetic */ VectorTextView(Context context, AttributeSet attributeSet, int i, jh2 jh2Var) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }
}

package com.warefly.checkscan.core.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class SmartNestedScrollView extends NestedScrollView {
    public float b;
    public float c;
    public float d;
    public float e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SmartNestedScrollView(Context context) {
        this(context, null);
        context.getClass();
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        motionEvent.getClass();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.c = 0.0f;
            this.b = 0.0f;
            this.d = motionEvent.getX();
            this.e = motionEvent.getY();
            computeScroll();
        } else if (action == 2) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.b = Math.abs(x - this.d) + this.b;
            float fAbs = Math.abs(y - this.e) + this.c;
            this.c = fAbs;
            this.d = x;
            this.e = y;
            if (this.b > fAbs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmartNestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }
}

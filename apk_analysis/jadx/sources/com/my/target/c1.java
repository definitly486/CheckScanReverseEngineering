package com.my.target;

import android.view.MotionEvent;
import android.view.View;
import defpackage.d6a;
import defpackage.e6a;
import defpackage.o6a;

/* JADX INFO: loaded from: classes4.dex */
public final class c1 implements View.OnTouchListener {
    public final a b;

    public interface a {
        void d(e6a e6aVar);
    }

    public c1(a aVar) {
        this.b = aVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        e6a d6aVar;
        if (motionEvent.getAction() == 1) {
            if (motionEvent.getAction() == 1) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                float f = view.getContext().getResources().getDisplayMetrics().widthPixels;
                float f2 = view.getContext().getResources().getDisplayMetrics().heightPixels;
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                d6aVar = new o6a((iArr[0] + x) / f, (iArr[1] + y) / f2);
            } else {
                d6aVar = null;
            }
            if (d6aVar == null) {
                d6aVar = new d6a();
            }
            this.b.d(d6aVar);
        }
        return false;
    }
}

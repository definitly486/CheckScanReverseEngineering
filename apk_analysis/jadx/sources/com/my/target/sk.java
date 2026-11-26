package com.my.target;

import android.content.Context;
import android.view.View;
import defpackage.pu;

/* JADX INFO: loaded from: classes4.dex */
public final class sk extends View {
    public a b;
    public boolean c;
    public boolean d;

    public interface a {
    }

    public sk(Context context) {
        super(context);
    }

    public final void a() {
        a aVar = this.b;
        if (aVar == null) {
            return;
        }
        if (this.c && this.d) {
            ((pu) aVar).a(true);
        } else {
            if (this.d) {
                return;
            }
            ((pu) aVar).a(false);
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.c = true;
        this.d = hasWindowFocus();
        a();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.c = false;
        this.d = hasWindowFocus();
        a();
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(1, 1);
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.d = z;
        a();
    }

    public void setStateChangedListener(a aVar) {
        this.b = aVar;
    }
}

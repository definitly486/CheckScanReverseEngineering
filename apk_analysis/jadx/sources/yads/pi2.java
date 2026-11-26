package yads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public class pi2 extends g03 implements s51, r16 {
    public final /* synthetic */ u16 l;

    public pi2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = new u16();
        setDefaultFocusHighlightEnabled(false);
        setImportantForAccessibility(2);
    }

    @Override // yads.r16
    public final void a(View view) {
        this.l.a(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() == 0) {
            super.addView(view, 0, layoutParams);
        } else {
            defpackage.fg.c("ViewWrapper can host only one child view");
        }
    }

    @Override // yads.r16
    public final void b(View view) {
        this.l.b(view);
    }

    @Override // yads.r16
    public final boolean g() {
        return this.l.g();
    }

    @Override // yads.s51
    public final l51 i() {
        KeyEvent.Callback callbackJ = j();
        s51 s51Var = callbackJ instanceof s51 ? (s51) callbackJ : null;
        if (s51Var != null) {
            return s51Var.i();
        }
        return null;
    }

    public final View j() {
        if (getChildCount() == 0) {
            return null;
        }
        return getChildAt(0);
    }

    @Override // yads.s51
    public void setBorder(tt ttVar, f51 f51Var, View view) {
        KeyEvent.Callback callbackJ = j();
        s51 s51Var = callbackJ instanceof s51 ? (s51) callbackJ : null;
        if (s51Var != null) {
            s51Var.setBorder(ttVar, f51Var, view);
        }
    }

    @Override // yads.s51
    public void setNeedClipping(boolean z) {
        KeyEvent.Callback callbackJ = j();
        s51 s51Var = callbackJ instanceof s51 ? (s51) callbackJ : null;
        if (s51Var == null) {
            return;
        }
        s51Var.setNeedClipping(z);
    }

    public pi2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
    }

    public /* synthetic */ pi2(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }

    public pi2(Context context) {
        this(context, null, 6, 0);
    }
}

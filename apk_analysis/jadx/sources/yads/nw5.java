package yads;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class nw5 extends an2 {
    public final ArrayList n;
    public final ArrayList o;
    public final lw5 p;
    public String q;

    public nw5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = new ArrayList();
        this.o = new ArrayList();
        Boolean boolValueOf = s0.a;
        if (boolValueOf == null) {
            Object systemService = context.getSystemService("accessibility");
            AccessibilityManager accessibilityManager = systemService instanceof AccessibilityManager ? (AccessibilityManager) systemService : null;
            boolValueOf = accessibilityManager != null ? Boolean.valueOf(accessibilityManager.isTouchExplorationEnabled()) : Boolean.FALSE;
            s0.a = boolValueOf;
        }
        if (!defpackage.aa4.e(boolValueOf, Boolean.TRUE)) {
            this.p = null;
            return;
        }
        lw5 lw5Var = new lw5(this);
        this.p = lw5Var;
        ViewCompat.setAccessibilityDelegate(this, lw5Var);
        setAccessibilityLiveRegion(1);
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        lw5 lw5Var = this.p;
        return (lw5Var != null && lw5Var.dispatchHoverEvent(motionEvent)) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        lw5 lw5Var = this.p;
        return (lw5Var != null && lw5Var.dispatchKeyEvent(keyEvent)) || super.dispatchKeyEvent(keyEvent);
    }

    public final void h() {
        String string;
        if (!defpackage.aa4.e(s0.a, Boolean.TRUE)) {
            super.setContentDescription(this.q);
            return;
        }
        ArrayList arrayList = this.o;
        if (arrayList == null || this.q != null) {
            string = this.q;
        } else {
            string = null;
            string = null;
            if (arrayList.size() != 0 && getText().length() != 0) {
                CharSequence text = getText();
                SpannableString spannableString = text instanceof SpannableString ? (SpannableString) text : null;
                if (spannableString != null) {
                    ArrayList arrayList2 = this.o;
                    ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(arrayList2, 10));
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(Integer.valueOf(spannableString.getSpanStart((nd3) it.next())));
                    }
                    List listN0 = defpackage.qn1.n0(arrayList3, new mw5());
                    StringBuilder sb = new StringBuilder();
                    Iterator it2 = listN0.iterator();
                    int i = 0;
                    while (it2.hasNext()) {
                        int iIntValue = ((Number) it2.next()).intValue();
                        sb.append(getText().subSequence(i, iIntValue));
                        i = iIntValue + 1;
                    }
                    sb.append(getText().subSequence(i, getText().length()));
                    string = sb.toString();
                } else {
                    string = getText().toString();
                }
            }
        }
        super.setContentDescription(string);
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = 0;
        for (Object obj : this.n) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            lw5 lw5Var = this.p;
            if (lw5Var != null) {
                lw5Var.invalidateVirtualView(i);
            }
            i = i2;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        lw5 lw5Var = this.p;
        if (lw5Var != null) {
            lw5Var.onFocusChanged(z, i, rect);
        }
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        this.q = charSequence != null ? charSequence.toString() : null;
        super.setContentDescription(charSequence);
    }

    @Override // yads.an2, android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        h();
    }
}

package yads;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.Button;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import defpackage.nl3;
import defpackage.x07;
import defpackage.zo7;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class q0 extends RecyclerViewAccessibilityDelegate {
    public final ln a;
    public final ArrayList b;
    public final ViewTreeObserver.OnGlobalLayoutListener c;
    public m0 d;
    public boolean e;

    public q0(ln lnVar) {
        super(lnVar);
        this.a = lnVar;
        this.b = new ArrayList();
        defpackage.k72 k72Var = new defpackage.k72(this, 1);
        this.c = k72Var;
        if (lnVar.isAttachedToWindow()) {
            lnVar.getViewTreeObserver().addOnGlobalLayoutListener(k72Var);
        }
        lnVar.addOnAttachStateChangeListener(new k0(this));
        int childCount = lnVar.getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(lnVar.getChildAt(i));
        }
        this.a.setOnBackClickListener(new l0(this));
    }

    public final void a(ViewGroup viewGroup) {
        ViewParent parent = viewGroup.getParent();
        ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup2 == null || viewGroup.equals(viewGroup2.getRootView())) {
            return;
        }
        for (View view : ViewGroupKt.getChildren(viewGroup2)) {
            if (!defpackage.aa4.e(view, viewGroup) && view.getImportantForAccessibility() != 4) {
                this.b.add(new n0(new WeakReference(view), view.getImportantForAccessibility()));
                view.setImportantForAccessibility(4);
            }
        }
        a(viewGroup2);
    }

    @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate
    public final AccessibilityDelegateCompat getItemDelegate() {
        m0 m0Var = this.d;
        if (m0Var != null) {
            return m0Var;
        }
        m0 m0Var2 = new m0(this);
        this.d = m0Var2;
        return m0Var2;
    }

    @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(this.e ? x07.a(RecyclerView.class).a() : x07.a(Button.class).a());
        accessibilityNodeInfoCompat.addAction(16);
        accessibilityNodeInfoCompat.setClickable(true);
        accessibilityNodeInfoCompat.setImportantForAccessibility(true);
        accessibilityNodeInfoCompat.setScreenReaderFocusable(true);
        ln lnVar = this.a;
        int childCount = lnVar.getChildCount();
        for (int i = 0; i < childCount; i++) {
            a(lnVar.getChildAt(i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        boolean z;
        View next;
        int iA;
        if (i == 16) {
            if (!this.e) {
                this.e = true;
                ln lnVar = this.a;
                int childCount = lnVar.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    a(lnVar.getChildAt(i2));
                }
            }
            a((ViewGroup) this.a);
            zo7<View> children = ViewGroupKt.getChildren(this.a);
            nl3[] nl3VarArr = {o0.b, p0.b};
            children.getClass();
            Iterator<View> it = children.iterator();
            View viewJ = null;
            if (it.hasNext()) {
                next = it.next();
                while (it.hasNext()) {
                    View next2 = it.next();
                    int length = nl3VarArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            iA = 0;
                            break;
                        }
                        nl3 nl3Var = nl3VarArr[i3];
                        iA = defpackage.pp1.a((Comparable) nl3Var.invoke(next), (Comparable) nl3Var.invoke(next2));
                        if (iA != 0) {
                            break;
                        }
                        i3++;
                    }
                    if (iA > 0) {
                        next = next2;
                    }
                }
            } else {
                next = null;
            }
            View view2 = next;
            if (view2 != null && (!(view2 instanceof pi2) || (viewJ = ((pi2) view2).j()) == null)) {
                viewJ = view2;
            }
            if (viewJ != null) {
                tq.a(viewJ);
            }
            z = true;
        } else {
            z = false;
        }
        return super.performAccessibilityAction(view, i, bundle) || z;
    }

    public final void a() {
        if (this.e) {
            this.e = false;
            ln lnVar = this.a;
            int childCount = lnVar.getChildCount();
            for (int i = 0; i < childCount; i++) {
                a(lnVar.getChildAt(i));
            }
        }
        for (n0 n0Var : this.b) {
            View view = (View) n0Var.a.get();
            if (view != null) {
                view.setImportantForAccessibility(n0Var.b);
            }
        }
        this.b.clear();
    }

    public final void a(View view) {
        view.setImportantForAccessibility(this.e ? 1 : 4);
    }

    public static final void a(q0 q0Var) {
        if (!q0Var.e || q0Var.a.getVisibility() == 0) {
            return;
        }
        q0Var.a();
    }
}

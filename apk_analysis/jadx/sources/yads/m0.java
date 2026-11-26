package yads;

import android.view.View;
import android.widget.Button;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import defpackage.x07;

/* JADX INFO: loaded from: classes6.dex */
public final class m0 extends RecyclerViewAccessibilityDelegate.ItemDelegate {
    public final /* synthetic */ q0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(q0 q0Var) {
        super(q0Var);
        this.a = q0Var;
    }

    @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate.ItemDelegate, androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(x07.a(Button.class).a());
        this.a.a(view);
    }
}

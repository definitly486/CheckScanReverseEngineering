package yads;

import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class vs2 extends AccessibilityDelegateCompat {
    public final String a;
    public final boolean b;
    public final boolean c;
    public Boolean d;

    public vs2(String str, boolean z, boolean z2) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        if (this.a.length() > 0) {
            accessibilityNodeInfoCompat.setClassName(this.a);
        }
        accessibilityNodeInfoCompat.setHeading(this.b);
        if (this.c) {
            accessibilityNodeInfoCompat.setCheckable(true);
            Boolean bool = this.d;
            if (bool != null) {
                accessibilityNodeInfoCompat.setChecked(bool.booleanValue());
            }
        }
    }
}

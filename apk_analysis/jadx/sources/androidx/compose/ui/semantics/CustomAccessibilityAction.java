package androidx.compose.ui.semantics;

import defpackage.aa4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomAccessibilityAction {
    public static final int $stable = 0;
    private final ll3<Boolean> action;
    private final String label;

    public CustomAccessibilityAction(String str, ll3<Boolean> ll3Var) {
        this.label = str;
        this.action = ll3Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAccessibilityAction)) {
            return false;
        }
        CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) obj;
        return aa4.e(this.label, customAccessibilityAction.label) && this.action == customAccessibilityAction.action;
    }

    public final ll3<Boolean> getAction() {
        return this.action;
    }

    public final String getLabel() {
        return this.label;
    }

    public int hashCode() {
        return this.action.hashCode() + (this.label.hashCode() * 31);
    }

    public String toString() {
        return "CustomAccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }
}

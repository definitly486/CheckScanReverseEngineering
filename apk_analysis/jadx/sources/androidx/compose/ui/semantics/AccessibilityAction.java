package androidx.compose.ui.semantics;

import defpackage.aa4;
import defpackage.cm3;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityAction<T extends cm3<? extends Boolean>> {
    public static final int $stable = 0;
    private final T action;
    private final String label;

    public AccessibilityAction(String str, T t) {
        this.label = str;
        this.action = t;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessibilityAction)) {
            return false;
        }
        AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
        return aa4.e(this.label, accessibilityAction.label) && aa4.e(this.action, accessibilityAction.action);
    }

    public final T getAction() {
        return this.action;
    }

    public final String getLabel() {
        return this.label;
    }

    public int hashCode() {
        String str = this.label;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        T t = this.action;
        return iHashCode + (t != null ? t.hashCode() : 0);
    }

    public String toString() {
        return "AccessibilityAction(label=" + this.label + ", action=" + this.action + ')';
    }
}

package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class of0 {
    public final boolean a;

    public of0(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof of0) && this.a == ((of0) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return defpackage.l2.c("DebugPanelErrorIndicatorData(isEnabled=", ")", this.a);
    }
}

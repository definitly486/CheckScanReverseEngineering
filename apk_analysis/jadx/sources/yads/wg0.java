package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wg0 implements ah0 {
    public final boolean a;

    public wg0(boolean z) {
        this.a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof wg0) && this.a == ((wg0) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return defpackage.l2.c("OnDebugErrorIndicatorSwitch(isChecked=", ")", this.a);
    }
}

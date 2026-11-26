package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ue6 {
    public final String a;
    public final boolean b;

    public ue6(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ue6)) {
            return false;
        }
        ue6 ue6Var = (ue6) obj;
        return defpackage.aa4.e(this.a, ue6Var.a) && this.b == ue6Var.b;
    }

    public final int hashCode() {
        String str = this.a;
        return Boolean.hashCode(this.b) + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "VideoSelection(preferableMimeType=" + this.a + ", inOrderOfList=" + this.b + ")";
    }
}

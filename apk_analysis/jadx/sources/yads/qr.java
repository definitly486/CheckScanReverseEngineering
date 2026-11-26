package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qr extends rr {
    public final char a;

    public qr(char c) {
        this.a = c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qr) && this.a == ((qr) obj).a;
    }

    public final int hashCode() {
        return Character.hashCode(this.a);
    }

    public final String toString() {
        return "Static(char=" + this.a + ")";
    }
}

package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class a10 implements u0 {
    public final String a;

    public a10(String str) {
        this.a = str;
    }

    @Override // yads.u0
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a10) && defpackage.aa4.e(this.a, ((a10) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return defpackage.me0.c("CloseAction(actionType=", this.a, ")");
    }
}

package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kx5 {

    @bq7("blockType")
    private final dk0 a;

    public kx5(dk0 dk0Var) {
        dk0Var.getClass();
        this.a = dk0Var;
    }

    public final dk0 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kx5) && this.a == ((kx5) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "OnlineShopBlockResponse(block=" + this.a + ")";
    }
}

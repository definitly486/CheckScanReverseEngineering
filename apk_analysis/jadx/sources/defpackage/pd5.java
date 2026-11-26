package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pd5 implements pz3 {
    public final int a;

    public pd5(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pd5) && this.a == ((pd5) obj).a;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return jh.b(this.a, "more_button_content");
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return jh.b(this.a, "more_button_id");
    }

    public final String toString() {
        return kv2.b(this.a, "MoreProductButtonViewModel(selectionId=", ")");
    }
}

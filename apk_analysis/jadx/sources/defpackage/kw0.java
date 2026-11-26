package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class kw0 implements pz3 {
    public final ArrayList a;

    public kw0(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kw0) && this.a.equals(((kw0) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return qn1.a0(this.a, null, null, null, 0, null, 63);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return "ButtonsViewModel(buttons=" + this.a + ")";
    }
}

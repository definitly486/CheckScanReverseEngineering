package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class o71 implements pz3 {
    public final ArrayList a;

    public o71(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o71) && this.a.equals(((o71) obj).a);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return "CategoriesViewModel(data=" + this.a + ")";
    }
}

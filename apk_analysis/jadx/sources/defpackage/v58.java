package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class v58 implements pz3 {
    public final ArrayList a;

    public v58(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v58) && this.a.equals(((v58) obj).a);
    }

    @Override // defpackage.pz3
    public final /* bridge */ /* synthetic */ Object f() {
        return 1;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.pz3
    public final /* bridge */ /* synthetic */ Object id() {
        return 1;
    }

    public final String toString() {
        return "SpecialsViewModel(data=" + this.a + ")";
    }
}

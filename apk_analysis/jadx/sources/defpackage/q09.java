package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class q09 implements pz3 {
    public final ArrayList a;

    public q09(ArrayList arrayList) {
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q09) && this.a.equals(((q09) obj).a);
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
        return "banks";
    }

    public final String toString() {
        return "TransferSBPBanksViewModel(banks=" + this.a + ")";
    }
}

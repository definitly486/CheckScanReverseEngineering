package yads;

import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class vq5 implements tq5 {
    public final /* synthetic */ LinkedHashSet a;

    public vq5(LinkedHashSet linkedHashSet) {
        this.a = linkedHashSet;
    }

    @Override // yads.tq5
    public final void a(z00 z00Var) {
        z00Var.a("DELETE FROM raw_json WHERE raw_json_id IN " + zq5.a(this.a)).executeUpdateDelete();
    }

    public final String toString() {
        return "Deleting raw jsons with ids: " + this.a;
    }
}

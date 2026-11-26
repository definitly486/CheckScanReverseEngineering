package androidx.savedstate.compose.serialization.serializers;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.df4;
import defpackage.mp7;
import defpackage.mr;
import defpackage.qn1;
import defpackage.rp7;
import defpackage.ud2;
import defpackage.ux2;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class SnapshotStateListSerializer<T> implements df4<SnapshotStateList<T>> {
    private final df4<List<T>> base;
    private final mp7 descriptor;
    private final df4<T> elementSerializer;

    public SnapshotStateListSerializer(df4<T> df4Var) {
        df4Var.getClass();
        this.elementSerializer = df4Var;
        mr mrVar = new mr(df4Var);
        this.base = mrVar;
        this.descriptor = rp7.b("androidx.compose.runtime.SnapshotStateList", mrVar.b);
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }

    @Override // defpackage.xl2
    public SnapshotStateList<T> deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        List list = (List) ud2Var.decodeSerializableValue(this.base);
        SnapshotStateList<T> snapshotStateList = new SnapshotStateList<>();
        snapshotStateList.addAll(qn1.t0(list));
        return snapshotStateList;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return this.descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, SnapshotStateList<T> snapshotStateList) {
        ux2Var.getClass();
        snapshotStateList.getClass();
        ux2Var.encodeSerializableValue(this.base, snapshotStateList);
    }
}

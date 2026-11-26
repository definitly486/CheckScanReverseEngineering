package androidx.savedstate.compose.serialization.serializers;

import androidx.compose.runtime.snapshots.SnapshotStateMap;
import defpackage.df4;
import defpackage.mp7;
import defpackage.rp7;
import defpackage.ud2;
import defpackage.uq4;
import defpackage.ux2;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class SnapshotStateMapSerializer<K, V> implements df4<SnapshotStateMap<K, V>> {
    private final df4<Map<K, V>> base;
    private final mp7 descriptor;

    public SnapshotStateMapSerializer(df4<K> df4Var, df4<V> df4Var2) {
        df4Var.getClass();
        df4Var2.getClass();
        uq4 uq4Var = new uq4(df4Var, df4Var2);
        this.base = uq4Var;
        this.descriptor = rp7.b("androidx.compose.runtime.SnapshotStateMap", uq4Var.c);
    }

    public static /* synthetic */ void getDescriptor$annotations() {
    }

    @Override // defpackage.xl2
    public SnapshotStateMap<K, V> deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        Map<? extends K, ? extends V> map = (Map) ud2Var.decodeSerializableValue(this.base);
        SnapshotStateMap<K, V> snapshotStateMap = new SnapshotStateMap<>();
        snapshotStateMap.putAll(map);
        return snapshotStateMap;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public mp7 getDescriptor() {
        return this.descriptor;
    }

    @Override // defpackage.xp7
    public void serialize(ux2 ux2Var, SnapshotStateMap<K, V> snapshotStateMap) {
        ux2Var.getClass();
        snapshotStateMap.getClass();
        ux2Var.encodeSerializableValue(this.base, snapshotStateMap);
    }
}

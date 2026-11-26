package androidx.compose.ui.modifier;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import defpackage.b36;
import defpackage.n05;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiLocalMap extends ModifierLocalMap {
    public static final int $stable = 0;
    private final SnapshotStateMap<ModifierLocal<?>, Object> map;

    /* JADX WARN: Multi-variable type inference failed */
    public MultiLocalMap(b36<? extends ModifierLocal<?>, ? extends Object> b36Var, b36<? extends ModifierLocal<?>, ? extends Object>... b36VarArr) {
        super(null);
        SnapshotStateMap<ModifierLocal<?>, Object> snapshotStateMapMutableStateMapOf = SnapshotStateKt.mutableStateMapOf();
        this.map = snapshotStateMapMutableStateMapOf;
        snapshotStateMapMutableStateMapOf.put(b36Var.b, b36Var.c);
        snapshotStateMapMutableStateMapOf.putAll(n05.m(b36VarArr));
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public boolean contains$ui(ModifierLocal<?> modifierLocal) {
        return this.map.containsKey(modifierLocal);
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    public <T> T get$ui(ModifierLocal<T> modifierLocal) {
        T t = (T) this.map.get(modifierLocal);
        if (t == null) {
            return null;
        }
        return t;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalMap
    /* JADX INFO: renamed from: set$ui */
    public <T> void mo7855set$ui(ModifierLocal<T> modifierLocal, T t) {
        this.map.put(modifierLocal, t);
    }
}

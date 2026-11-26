package androidx.compose.runtime;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.runtime.snapshots.SnapshotStateSet;
import defpackage.b36;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.o22;
import defpackage.y68;
import defpackage.ze4;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotStateKt {
    public static final <T extends R, R> State<R> collectAsState(hd3<? extends T> hd3Var, R r, o22 o22Var, Composer composer, int i, int i2) {
        return SnapshotStateKt__SnapshotFlowKt.collectAsState(hd3Var, r, o22Var, composer, i, i2);
    }

    public static final MutableVector<DerivedStateObserver> derivedStateObservers() {
        return SnapshotStateKt__DerivedStateKt.derivedStateObservers();
    }

    public static final <T> State<T> derivedStateOf(ll3<? extends T> ll3Var) {
        return SnapshotStateKt__DerivedStateKt.derivedStateOf(ll3Var);
    }

    public static final <T> T getValue(State<? extends T> state, Object obj, ze4<?> ze4Var) {
        return (T) SnapshotStateKt__SnapshotStateKt.getValue(state, obj, ze4Var);
    }

    public static final <T> SnapshotStateList<T> mutableStateListOf() {
        return SnapshotStateKt__SnapshotStateKt.mutableStateListOf();
    }

    public static final <K, V> SnapshotStateMap<K, V> mutableStateMapOf() {
        return SnapshotStateKt__SnapshotStateKt.mutableStateMapOf();
    }

    public static final <T> MutableState<T> mutableStateOf(T t, SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf(t, snapshotMutationPolicy);
    }

    public static final <T> SnapshotStateSet<T> mutableStateSetOf() {
        return SnapshotStateKt__SnapshotStateKt.mutableStateSetOf();
    }

    public static final <T> SnapshotMutationPolicy<T> neverEqualPolicy() {
        return SnapshotStateKt__SnapshotMutationPolicyKt.neverEqualPolicy();
    }

    public static final <R> void observeDerivedStateRecalculations(DerivedStateObserver derivedStateObserver, ll3<? extends R> ll3Var) {
        SnapshotStateKt__DerivedStateKt.observeDerivedStateRecalculations(derivedStateObserver, ll3Var);
    }

    public static final <T> State<T> produceState(T t, bm3<? super ProduceStateScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        return SnapshotStateKt__ProduceStateKt.produceState(t, bm3Var, composer, i);
    }

    public static final <T> SnapshotMutationPolicy<T> referentialEqualityPolicy() {
        return SnapshotStateKt__SnapshotMutationPolicyKt.referentialEqualityPolicy();
    }

    public static final <T> State<T> rememberUpdatedState(T t, Composer composer, int i) {
        return SnapshotStateKt__SnapshotStateKt.rememberUpdatedState(t, composer, i);
    }

    public static final <T> void setValue(MutableState<T> mutableState, Object obj, ze4<?> ze4Var, T t) {
        SnapshotStateKt__SnapshotStateKt.setValue(mutableState, obj, ze4Var, t);
    }

    public static final <T> hd3<T> snapshotFlow(ll3<? extends T> ll3Var) {
        return SnapshotStateKt__SnapshotFlowKt.snapshotFlow(ll3Var);
    }

    public static final <T> SnapshotMutationPolicy<T> structuralEqualityPolicy() {
        return SnapshotStateKt__SnapshotMutationPolicyKt.structuralEqualityPolicy();
    }

    public static final <T> SnapshotStateList<T> toMutableStateList(Collection<? extends T> collection) {
        return SnapshotStateKt__SnapshotStateKt.toMutableStateList(collection);
    }

    public static final <K, V> SnapshotStateMap<K, V> toMutableStateMap(Iterable<? extends b36<? extends K, ? extends V>> iterable) {
        return SnapshotStateKt__SnapshotStateKt.toMutableStateMap(iterable);
    }

    public static final <T> State<T> collectAsState(y68<? extends T> y68Var, o22 o22Var, Composer composer, int i, int i2) {
        return SnapshotStateKt__SnapshotFlowKt.collectAsState(y68Var, o22Var, composer, i, i2);
    }

    public static final <T> State<T> derivedStateOf(SnapshotMutationPolicy<T> snapshotMutationPolicy, ll3<? extends T> ll3Var) {
        return SnapshotStateKt__DerivedStateKt.derivedStateOf(snapshotMutationPolicy, ll3Var);
    }

    public static final <T> SnapshotStateList<T> mutableStateListOf(T... tArr) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateListOf(tArr);
    }

    public static final <K, V> SnapshotStateMap<K, V> mutableStateMapOf(b36<? extends K, ? extends V>... b36VarArr) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateMapOf(b36VarArr);
    }

    public static final <T> SnapshotStateSet<T> mutableStateSetOf(T... tArr) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateSetOf(tArr);
    }

    public static final <T> State<T> produceState(T t, Object obj, bm3<? super ProduceStateScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        return SnapshotStateKt__ProduceStateKt.produceState(t, obj, bm3Var, composer, i);
    }

    public static final <T> hd3<T> snapshotFlow(SnapshotFlowManager snapshotFlowManager, ll3<? extends T> ll3Var) {
        return SnapshotStateKt__SnapshotFlowKt.snapshotFlow(snapshotFlowManager, ll3Var);
    }

    public static final <T> State<T> produceState(T t, Object obj, Object obj2, bm3<? super ProduceStateScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        return SnapshotStateKt__ProduceStateKt.produceState(t, obj, obj2, bm3Var, composer, i);
    }

    public static final <T> State<T> produceState(T t, Object obj, Object obj2, Object obj3, bm3<? super ProduceStateScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        return SnapshotStateKt__ProduceStateKt.produceState(t, obj, obj2, obj3, bm3Var, composer, i);
    }

    public static final <T> State<T> produceState(T t, Object[] objArr, bm3<? super ProduceStateScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, Composer composer, int i) {
        return SnapshotStateKt__ProduceStateKt.produceState((Object) t, objArr, (bm3) bm3Var, composer, i);
    }
}

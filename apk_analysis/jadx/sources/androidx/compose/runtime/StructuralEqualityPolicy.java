package androidx.compose.runtime;

import defpackage.aa4;

/* JADX INFO: loaded from: classes2.dex */
final class StructuralEqualityPolicy implements SnapshotMutationPolicy<Object> {
    public static final StructuralEqualityPolicy INSTANCE = new StructuralEqualityPolicy();

    private StructuralEqualityPolicy() {
    }

    @Override // androidx.compose.runtime.SnapshotMutationPolicy
    public boolean equivalent(Object obj, Object obj2) {
        return aa4.e(obj, obj2);
    }

    public String toString() {
        return "StructuralEqualityPolicy";
    }
}

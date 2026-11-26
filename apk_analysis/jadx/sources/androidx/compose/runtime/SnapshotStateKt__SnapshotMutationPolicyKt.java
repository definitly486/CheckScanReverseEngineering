package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SnapshotStateKt__SnapshotMutationPolicyKt {
    public static final <T> SnapshotMutationPolicy<T> neverEqualPolicy() {
        NeverEqualPolicy neverEqualPolicy = NeverEqualPolicy.INSTANCE;
        neverEqualPolicy.getClass();
        return neverEqualPolicy;
    }

    public static final <T> SnapshotMutationPolicy<T> referentialEqualityPolicy() {
        ReferentialEqualityPolicy referentialEqualityPolicy = ReferentialEqualityPolicy.INSTANCE;
        referentialEqualityPolicy.getClass();
        return referentialEqualityPolicy;
    }

    public static final <T> SnapshotMutationPolicy<T> structuralEqualityPolicy() {
        StructuralEqualityPolicy structuralEqualityPolicy = StructuralEqualityPolicy.INSTANCE;
        structuralEqualityPolicy.getClass();
        return structuralEqualityPolicy;
    }
}

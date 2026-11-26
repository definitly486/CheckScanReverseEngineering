package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface SnapshotMutationPolicy<T> {

    public static final class DefaultImpls {
        @Deprecated
        public static <T> T merge(SnapshotMutationPolicy<T> snapshotMutationPolicy, T t, T t2, T t3) {
            return (T) SnapshotMutationPolicy.super.merge(t, t2, t3);
        }
    }

    boolean equivalent(T t, T t2);

    default T merge(T t, T t2, T t3) {
        return null;
    }
}

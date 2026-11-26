package androidx.compose.runtime.tooling;

/* JADX INFO: loaded from: classes2.dex */
public interface CompositionData {
    default CompositionGroup find(Object obj) {
        return null;
    }

    Iterable<CompositionGroup> getCompositionGroups();

    boolean isEmpty();
}

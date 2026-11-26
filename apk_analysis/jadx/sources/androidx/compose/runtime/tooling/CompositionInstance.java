package androidx.compose.runtime.tooling;

/* JADX INFO: loaded from: classes2.dex */
public interface CompositionInstance {
    CompositionGroup findContextGroup();

    CompositionData getData();

    CompositionInstance getParent();
}

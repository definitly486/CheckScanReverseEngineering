package androidx.compose.runtime.retain;

/* JADX INFO: loaded from: classes2.dex */
public interface RetainObserver {
    void onEnteredComposition();

    void onExitedComposition();

    void onRetained();

    void onRetired();

    void onUnused();
}

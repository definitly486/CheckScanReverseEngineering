package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface ComposeNodeLifecycleCallback {
    void onDeactivate();

    void onRelease();

    void onReuse();
}

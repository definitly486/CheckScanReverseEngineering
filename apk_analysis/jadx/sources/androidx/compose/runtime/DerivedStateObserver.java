package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface DerivedStateObserver {
    void done(DerivedState<?> derivedState);

    void start(DerivedState<?> derivedState);
}

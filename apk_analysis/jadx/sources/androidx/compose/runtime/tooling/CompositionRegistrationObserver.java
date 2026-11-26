package androidx.compose.runtime.tooling;

/* JADX INFO: loaded from: classes2.dex */
public interface CompositionRegistrationObserver {
    void onCompositionRegistered(ObservableComposition observableComposition);

    void onCompositionUnregistered(ObservableComposition observableComposition);
}

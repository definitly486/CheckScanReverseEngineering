package androidx.window.embedding;

import androidx.window.reflection.Consumer2;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityStackConsumer implements Consumer2<List<? extends androidx.window.extensions.embedding.ActivityStack>> {
    private final EmbeddingAdapter adapter;
    private final EmbeddingInterfaceCompat.EmbeddingCallbackInterface callback;

    public ActivityStackConsumer(EmbeddingInterfaceCompat.EmbeddingCallbackInterface embeddingCallbackInterface, EmbeddingAdapter embeddingAdapter) {
        embeddingCallbackInterface.getClass();
        embeddingAdapter.getClass();
        this.callback = embeddingCallbackInterface;
        this.adapter = embeddingAdapter;
    }

    @Override // androidx.window.reflection.Consumer2
    public void accept(List<? extends androidx.window.extensions.embedding.ActivityStack> list) {
        list.getClass();
        this.callback.onActivityStackChanged(this.adapter.translate$window_release(list));
    }
}

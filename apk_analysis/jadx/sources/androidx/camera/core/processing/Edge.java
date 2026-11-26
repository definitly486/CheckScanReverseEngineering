package androidx.camera.core.processing;

import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class Edge<T> implements Consumer<T> {
    private Consumer<T> mListener;

    @Override // androidx.core.util.Consumer
    public void accept(T t) {
        this.mListener.getClass();
        this.mListener.accept(t);
    }

    public void setListener(Consumer<T> consumer) {
        this.mListener = consumer;
    }
}

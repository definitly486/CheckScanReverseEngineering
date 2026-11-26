package androidx.compose.material3.internal;

/* JADX INFO: loaded from: classes2.dex */
public interface DraggableAnchors<T> {
    T closestAnchor(float f);

    T closestAnchor(float f, boolean z);

    int getSize();

    boolean hasAnchorFor(T t);

    float maxAnchor();

    float minAnchor();

    float positionOf(T t);
}

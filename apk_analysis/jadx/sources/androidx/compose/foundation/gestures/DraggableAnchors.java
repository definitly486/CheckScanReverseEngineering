package androidx.compose.foundation.gestures;

/* JADX INFO: loaded from: classes.dex */
public interface DraggableAnchors<T> {
    T anchorAt(int i);

    T closestAnchor(float f);

    T closestAnchor(float f, boolean z);

    int getSize();

    boolean hasPositionFor(T t);

    float maxPosition();

    float minPosition();

    float positionAt(int i);

    float positionOf(T t);
}

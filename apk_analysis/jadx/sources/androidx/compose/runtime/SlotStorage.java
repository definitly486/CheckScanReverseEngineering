package androidx.compose.runtime;

import androidx.collection.ObjectList;
import androidx.collection.ScatterMap;
import androidx.compose.runtime.composer.RememberManager;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SlotStorage {
    public static final int $stable = 0;

    public abstract void clear(RememberManager rememberManager);

    public abstract void collectCalledByInformation();

    public abstract void collectSourceInformation();

    public abstract void deactivateAll(RememberManager rememberManager);

    public abstract void dispose();

    public abstract void disposeUnusedMovableContent(RememberManager rememberManager, MovableContentState movableContentState);

    public abstract ScatterMap<MovableContentStateReference, MovableContentState> extractNestedStates(Applier<?> applier, ObjectList<MovableContentStateReference> objectList);

    /* JADX INFO: renamed from: getSlots */
    public abstract Iterable<Object> mo5506getSlots();

    public abstract boolean groupContainsAnchor(int i, Anchor anchor);

    public abstract boolean inGroup(Anchor anchor, Anchor anchor2);

    public abstract void invalidateAll();

    public abstract List<RecomposeScopeImpl> invalidateGroupsWithKey(int i);

    public abstract boolean isEmpty();

    public abstract boolean ownsRecomposeScope(RecomposeScopeImpl recomposeScopeImpl);

    public abstract String toDebugString();

    public abstract void verifyWellFormed();
}

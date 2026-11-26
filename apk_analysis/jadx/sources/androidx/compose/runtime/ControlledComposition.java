package androidx.compose.runtime;

import defpackage.b36;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public interface ControlledComposition extends Composition {
    void abandonChanges();

    void applyChanges();

    void applyLateChanges();

    void changesApplied();

    void composeContent(bm3<? super Composer, ? super Integer, j59> bm3Var);

    <R> R delegateInvalidations(ControlledComposition controlledComposition, int i, ll3<? extends R> ll3Var);

    void disposeUnusedMovableContent(MovableContentState movableContentState);

    ShouldPauseCallback getAndSetShouldPauseCallback(ShouldPauseCallback shouldPauseCallback);

    boolean getHasPendingChanges();

    void insertMovableContent(List<b36<MovableContentStateReference, MovableContentStateReference>> list);

    void invalidateAll();

    boolean isComposing();

    boolean observesAnyOf(Set<? extends Object> set);

    void prepareCompose(ll3<j59> ll3Var);

    boolean recompose();

    void recordModificationsOf(Set<? extends Object> set);

    void recordReadOf(Object obj);

    void recordWriteOf(Object obj);

    void verifyConsistent();
}

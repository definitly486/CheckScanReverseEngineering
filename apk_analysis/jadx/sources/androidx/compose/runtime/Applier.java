package androidx.compose.runtime;

import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public interface Applier<N> {

    public static final class DefaultImpls {
        @Deprecated
        public static <N> void apply(Applier<N> applier, bm3<? super N, Object, j59> bm3Var, Object obj) {
            Applier.super.apply(bm3Var, obj);
        }

        @Deprecated
        public static <N> void onBeginChanges(Applier<N> applier) {
            Applier.super.onBeginChanges();
        }

        @Deprecated
        public static <N> void onEndChanges(Applier<N> applier) {
            Applier.super.onEndChanges();
        }

        @Deprecated
        public static <N> void reuse(Applier<N> applier) {
            Applier.super.reuse();
        }
    }

    default void apply(bm3<? super N, Object, j59> bm3Var, Object obj) {
        bm3Var.invoke(getCurrent(), obj);
    }

    void clear();

    void down(N n);

    N getCurrent();

    void insertBottomUp(int i, N n);

    void insertTopDown(int i, N n);

    void move(int i, int i2, int i3);

    default void onBeginChanges() {
    }

    default void onEndChanges() {
    }

    void remove(int i, int i2);

    default void reuse() {
        N current = getCurrent();
        ComposeNodeLifecycleCallback composeNodeLifecycleCallback = current instanceof ComposeNodeLifecycleCallback ? (ComposeNodeLifecycleCallback) current : null;
        if (composeNodeLifecycleCallback != null) {
            composeNodeLifecycleCallback.onReuse();
        }
    }

    void up();
}

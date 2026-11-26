package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.v39;

/* JADX INFO: loaded from: classes2.dex */
public final class RecordingApplier<N> implements Applier<N> {
    public static final int APPLY = 7;
    public static final int CLEAR = 4;
    public static final int DOWN = 1;
    public static final int INSERT_BOTTOM_UP = 5;
    public static final int INSERT_TOP_DOWN = 6;
    public static final int MOVE = 3;
    public static final int RECOMPOSE_PENDING = 9;
    public static final int REMOVE = 2;
    public static final int REUSE = 8;
    public static final int UP = 0;
    private N current;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private final MutableIntList operations = new MutableIntList(0, 1, null);
    private final MutableObjectList<Object> instances = new MutableObjectList<>(0, 1, null);

    public RecordingApplier(N n) {
        this.current = n;
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(bm3<? super N, Object, j59> bm3Var, Object obj) {
        this.operations.add(7);
        this.instances.add(bm3Var);
        this.instances.add(obj);
    }

    @Override // androidx.compose.runtime.Applier
    public void clear() {
        this.operations.add(4);
    }

    @Override // androidx.compose.runtime.Applier
    public void down(N n) {
        this.operations.add(1);
        this.instances.add(n);
    }

    @Override // androidx.compose.runtime.Applier
    public N getCurrent() {
        return this.current;
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i, N n) {
        this.operations.add(5);
        this.operations.add(i);
        this.instances.add(n);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i, N n) {
        this.operations.add(6);
        this.operations.add(i);
        this.instances.add(n);
    }

    public final void markRecomposePending() {
        this.operations.add(9);
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i, int i2, int i3) {
        this.operations.add(3);
        this.operations.add(i);
        this.operations.add(i2);
        this.operations.add(i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void playTo(Applier<N> applier, RememberEventDispatcher rememberEventDispatcher) {
        Exception exc;
        int i;
        MutableIntList mutableIntList = this.operations;
        int i2 = mutableIntList._size;
        MutableObjectList<Object> mutableObjectList = this.instances;
        int i3 = 0;
        MutableObjectList mutableObjectList2 = new MutableObjectList(0, 1, null);
        applier.onBeginChanges();
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i3 + 1;
            try {
                try {
                    switch (mutableIntList.get(i3)) {
                        case 0:
                            applier.up();
                            i3 = i5;
                            break;
                        case 1:
                            int i6 = i4 + 1;
                            applier.down(mutableObjectList.get(i4));
                            i4 = i6;
                            i3 = i5;
                            break;
                        case 2:
                            int i7 = i3 + 2;
                            i3 += 3;
                            applier.remove(mutableIntList.get(i5), mutableIntList.get(i7));
                            break;
                        case 3:
                            int i8 = i3 + 2;
                            try {
                                int i9 = i3 + 3;
                                try {
                                    i3 += 4;
                                    applier.move(mutableIntList.get(i5), mutableIntList.get(i8), mutableIntList.get(i9));
                                } catch (Exception e) {
                                    exc = e;
                                    i3 = i9;
                                    throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i3 - 1, exc);
                                }
                            } catch (Exception e2) {
                                exc = e2;
                                i3 = i8;
                            }
                            break;
                        case 4:
                            applier.clear();
                            i3 = i5;
                            break;
                        case 5:
                            i3 += 2;
                            i = i4 + 1;
                            applier.insertBottomUp(mutableIntList.get(i5), mutableObjectList.get(i4));
                            i4 = i;
                            break;
                        case 6:
                            i3 += 2;
                            try {
                                i = i4 + 1;
                                applier.insertTopDown(mutableIntList.get(i5), mutableObjectList.get(i4));
                                i4 = i;
                            } catch (Exception e3) {
                                exc = e3;
                                throw new ComposePausableCompositionException(mutableObjectList, mutableObjectList2, mutableIntList, i3 - 1, exc);
                            }
                            break;
                        case 7:
                            int i10 = i4 + 1;
                            Object obj = mutableObjectList.get(i4);
                            obj.getClass();
                            v39.c(2, obj);
                            i4 += 2;
                            applier.apply((bm3) obj, mutableObjectList.get(i10));
                            i3 = i5;
                            break;
                        case 8:
                            Object current = applier.getCurrent();
                            if (current instanceof ComposeNodeLifecycleCallback) {
                                rememberEventDispatcher.dispatchOnDeactivateIfNecessary((ComposeNodeLifecycleCallback) current);
                            }
                            mutableObjectList2.add(current);
                            applier.reuse();
                            i3 = i5;
                            break;
                        default:
                            i3 = i5;
                            break;
                    }
                } catch (Throwable th) {
                    applier.onEndChanges();
                    throw th;
                }
            } catch (Exception e4) {
                exc = e4;
                i3 = i5;
            }
        }
        if (i4 != mutableObjectList.getSize()) {
            ComposerKt.composeImmediateRuntimeError("Applier operation size mismatch");
        }
        mutableObjectList.clear();
        mutableIntList.clear();
        applier.onEndChanges();
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i, int i2) {
        this.operations.add(2);
        this.operations.add(i);
        this.operations.add(i2);
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        this.operations.add(8);
    }

    public void setCurrent(N n) {
        this.current = n;
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        this.operations.add(0);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}

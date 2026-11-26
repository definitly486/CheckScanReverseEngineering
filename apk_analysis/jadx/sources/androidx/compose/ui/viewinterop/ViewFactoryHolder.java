package androidx.compose.ui.viewinterop;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.ViewRootForInspector;
import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewFactoryHolder<T extends View> extends AndroidViewHolder implements ViewRootForInspector {
    public static final int $stable = 8;
    private final int compositeKeyHash;
    private final NestedScrollDispatcher dispatcher;
    private nl3<? super T, j59> releaseBlock;
    private nl3<? super T, j59> resetBlock;
    private SaveableStateRegistry.Entry savableRegistryEntry;
    private final String saveStateKey;
    private final SaveableStateRegistry saveStateRegistry;
    private final T typedView;
    private nl3<? super T, j59> updateBlock;

    /* JADX INFO: renamed from: androidx.compose.ui.viewinterop.ViewFactoryHolder$registerSaveStateProvider$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements ll3<Object> {
        final /* synthetic */ ViewFactoryHolder<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ViewFactoryHolder<T> viewFactoryHolder) {
            super(0);
            this.this$0 = viewFactoryHolder;
        }

        @Override // defpackage.ll3
        public final Object invoke() {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            ((ViewFactoryHolder) this.this$0).typedView.saveHierarchyState(sparseArray);
            return sparseArray;
        }
    }

    private ViewFactoryHolder(Context context, CompositionContext compositionContext, T t, NestedScrollDispatcher nestedScrollDispatcher, SaveableStateRegistry saveableStateRegistry, int i, Owner owner) {
        super(context, compositionContext, i, nestedScrollDispatcher, t, owner);
        this.typedView = t;
        this.dispatcher = nestedScrollDispatcher;
        this.saveStateRegistry = saveableStateRegistry;
        this.compositeKeyHash = i;
        setClipChildren(false);
        String strValueOf = String.valueOf(i);
        this.saveStateKey = strValueOf;
        Object objConsumeRestored = saveableStateRegistry != null ? saveableStateRegistry.consumeRestored(strValueOf) : null;
        SparseArray<Parcelable> sparseArray = objConsumeRestored instanceof SparseArray ? (SparseArray) objConsumeRestored : null;
        if (sparseArray != null) {
            t.restoreHierarchyState(sparseArray);
        }
        registerSaveStateProvider();
        this.updateBlock = AndroidView_androidKt.getNoOpUpdate();
        this.resetBlock = AndroidView_androidKt.getNoOpUpdate();
        this.releaseBlock = AndroidView_androidKt.getNoOpUpdate();
    }

    private final void registerSaveStateProvider() {
        SaveableStateRegistry saveableStateRegistry = this.saveStateRegistry;
        if (saveableStateRegistry != null) {
            setSavableRegistryEntry(saveableStateRegistry.registerProvider(this.saveStateKey, new AnonymousClass1(this)));
        }
    }

    private final void setSavableRegistryEntry(SaveableStateRegistry.Entry entry) {
        SaveableStateRegistry.Entry entry2 = this.savableRegistryEntry;
        if (entry2 != null) {
            entry2.unregister();
        }
        this.savableRegistryEntry = entry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void unregisterSaveStateProvider() {
        setSavableRegistryEntry(null);
    }

    public final NestedScrollDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public final nl3<T, j59> getReleaseBlock() {
        return this.releaseBlock;
    }

    public final nl3<T, j59> getResetBlock() {
        return this.resetBlock;
    }

    public final nl3<T, j59> getUpdateBlock() {
        return this.updateBlock;
    }

    @Override // androidx.compose.ui.platform.ViewRootForInspector
    public View getViewRoot() {
        return this;
    }

    public final void setReleaseBlock(nl3<? super T, j59> nl3Var) {
        this.releaseBlock = nl3Var;
        setRelease(new ViewFactoryHolder$releaseBlock$1(this));
    }

    public final void setResetBlock(nl3<? super T, j59> nl3Var) {
        this.resetBlock = nl3Var;
        setReset(new ViewFactoryHolder$resetBlock$1(this));
    }

    public final void setUpdateBlock(nl3<? super T, j59> nl3Var) {
        this.updateBlock = nl3Var;
        setUpdate(new ViewFactoryHolder$updateBlock$1(this));
    }

    public /* synthetic */ ViewFactoryHolder(Context context, CompositionContext compositionContext, View view, NestedScrollDispatcher nestedScrollDispatcher, SaveableStateRegistry saveableStateRegistry, int i, Owner owner, int i2, jh2 jh2Var) {
        this(context, (i2 & 2) != 0 ? null : compositionContext, view, (i2 & 8) != 0 ? new NestedScrollDispatcher() : nestedScrollDispatcher, saveableStateRegistry, i, owner);
    }

    public /* synthetic */ ViewFactoryHolder(Context context, nl3 nl3Var, CompositionContext compositionContext, SaveableStateRegistry saveableStateRegistry, int i, Owner owner, int i2, jh2 jh2Var) {
        this(context, nl3Var, (i2 & 4) != 0 ? null : compositionContext, saveableStateRegistry, i, owner);
    }

    public ViewFactoryHolder(Context context, nl3<? super Context, ? extends T> nl3Var, CompositionContext compositionContext, SaveableStateRegistry saveableStateRegistry, int i, Owner owner) {
        this(context, compositionContext, nl3Var.invoke(context), null, saveableStateRegistry, i, owner, 8, null);
    }
}

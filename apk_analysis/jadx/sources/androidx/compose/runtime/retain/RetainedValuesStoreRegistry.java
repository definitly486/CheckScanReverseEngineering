package androidx.compose.runtime.retain;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.retain.impl.PreconditionsKt;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.gt3;
import defpackage.i67;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class RetainedValuesStoreRegistry {
    public static final int $stable = 8;
    private final MutableScatterMap<Object, ManagedRetainedValuesStore> childStores = new MutableScatterMap<>(0, 1, null);
    private boolean isDisposed;

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LocalRetainedValuesStoreProvider$lambda$0(RetainedValuesStoreRegistry retainedValuesStoreRegistry, Object obj, bm3 bm3Var, int i, Composer composer, int i2) {
        retainedValuesStoreRegistry.LocalRetainedValuesStoreProvider(obj, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean dispose$lambda$0(Object obj) {
        return true;
    }

    private final RetainedValuesStore getOrCreateRetainedValuesStoreForChild(Object obj) {
        if (this.isDisposed) {
            PreconditionsKt.throwIllegalStateException("Cannot get a RetainedValuesStore after a RetainedValuesStoreRegistry has been disposed.");
        }
        MutableScatterMap<Object, ManagedRetainedValuesStore> mutableScatterMap = this.childStores;
        ManagedRetainedValuesStore managedRetainedValuesStore = mutableScatterMap.get(obj);
        if (managedRetainedValuesStore == null) {
            managedRetainedValuesStore = new ManagedRetainedValuesStore();
            mutableScatterMap.set(obj, managedRetainedValuesStore);
        }
        return managedRetainedValuesStore;
    }

    public final void LocalRetainedValuesStoreProvider(Object obj, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1626630244);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(obj) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(this) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1626630244, i2, -1, "androidx.compose.runtime.retain.RetainedValuesStoreRegistry.LocalRetainedValuesStoreProvider (RetainedValuesStoreRegistry.kt:70)");
            }
            LocalRetainedValuesStoreKt.LocalRetainedValuesStoreProvider(getOrCreateRetainedValuesStoreForChild(obj), bm3Var, composerStartRestartGroup, i2 & 112);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new i67(i, 0, this, obj, bm3Var));
        }
    }

    public final void clearChild(Object obj) {
        ManagedRetainedValuesStore managedRetainedValuesStoreRemove = this.childStores.remove(obj);
        if (managedRetainedValuesStoreRemove != null) {
            managedRetainedValuesStoreRemove.dispose();
        }
    }

    public final void clearChildren(nl3<Object, Boolean> nl3Var) {
        MutableScatterMap<Object, ManagedRetainedValuesStore> mutableScatterMap = this.childStores;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            long j = jArr[i];
            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                int i2 = 8 - ((~(i - length)) >>> 31);
                for (int i3 = 0; i3 < i2; i3++) {
                    if ((255 & j) < 128) {
                        int i4 = (i << 3) + i3;
                        Object obj = mutableScatterMap.keys[i4];
                        ManagedRetainedValuesStore managedRetainedValuesStore = (ManagedRetainedValuesStore) mutableScatterMap.values[i4];
                        Boolean boolInvoke = nl3Var.invoke(obj);
                        if (boolInvoke.booleanValue()) {
                            managedRetainedValuesStore.dispose();
                        }
                        if (boolInvoke.booleanValue()) {
                            mutableScatterMap.removeValueAt(i4);
                        }
                    }
                    j >>= 8;
                }
                if (i2 != 8) {
                    return;
                }
            }
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void dispose() {
        this.isDisposed = true;
        clearChildren(new gt3(2));
    }
}

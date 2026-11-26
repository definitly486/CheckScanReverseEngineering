package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.xn4;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class LazySaveableStateHolder implements SaveableStateRegistry, SaveableStateHolder {
    public static final Companion Companion = new Companion(null);
    private final MutableScatterSet<Object> previouslyComposedKeys;
    private final SaveableStateHolder wrappedHolder;
    private final SaveableStateRegistry wrappedRegistry;

    public LazySaveableStateHolder(SaveableStateRegistry saveableStateRegistry, SaveableStateHolder saveableStateHolder) {
        this.wrappedRegistry = saveableStateRegistry;
        this.wrappedHolder = saveableStateHolder;
        this.previouslyComposedKeys = ScatterSetKt.mutableScatterSetOf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult SaveableStateProvider$lambda$0$0(final LazySaveableStateHolder lazySaveableStateHolder, final Object obj, DisposableEffectScope disposableEffectScope) {
        lazySaveableStateHolder.previouslyComposedKeys.minusAssign(obj);
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazySaveableStateHolder$SaveableStateProvider$lambda$0$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                this.this$0.previouslyComposedKeys.plusAssign(obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SaveableStateProvider$lambda$1(LazySaveableStateHolder lazySaveableStateHolder, Object obj, bm3 bm3Var, int i, Composer composer, int i2) {
        lazySaveableStateHolder.SaveableStateProvider(obj, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(SaveableStateRegistry saveableStateRegistry, Object obj) {
        if (saveableStateRegistry != null) {
            return saveableStateRegistry.canBeSaved(obj);
        }
        return true;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public void SaveableStateProvider(final Object obj, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-858296452);
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
                ComposerKt.traceEventStart(-858296452, i2, -1, "androidx.compose.foundation.lazy.layout.LazySaveableStateHolder.SaveableStateProvider (LazySaveableStateHolder.kt:74)");
            }
            int i3 = i2 & 14;
            this.wrappedHolder.SaveableStateProvider(obj, bm3Var, composerStartRestartGroup, i2 & 126);
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(this) | composerStartRestartGroup.changedInstance(obj);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: androidx.compose.foundation.lazy.layout.m
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return LazySaveableStateHolder.SaveableStateProvider$lambda$0$0(this.b, obj, (DisposableEffectScope) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            EffectsKt.DisposableEffect(obj, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue, composerStartRestartGroup, i3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: androidx.compose.foundation.lazy.layout.n
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return LazySaveableStateHolder.SaveableStateProvider$lambda$1(this.b, obj, bm3Var, i, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean canBeSaved(Object obj) {
        return this.wrappedRegistry.canBeSaved(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Object consumeRestored(String str) {
        return this.wrappedRegistry.consumeRestored(str);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0042 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x0044 A[LOOP:0: B:5:0x000d->B:15:0x0044, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0047 A[EDGE_INSN: B:19:0x0047->B:16:0x0047 BREAK  A[LOOP:0: B:5:0x000d->B:15:0x0044], SYNTHETIC] */
    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Map<String, List<Object>> performSave() {
        MutableScatterSet<Object> mutableScatterSet = this.previouslyComposedKeys;
        Object[] objArr = mutableScatterSet.elements;
        long[] jArr = mutableScatterSet.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            this.wrappedHolder.removeState(objArr[(i << 3) + i3]);
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                    if (i != length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return this.wrappedRegistry.performSave();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public SaveableStateRegistry.Entry registerProvider(String str, ll3<? extends Object> ll3Var) {
        return this.wrappedRegistry.registerProvider(str, ll3Var);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateHolder
    public void removeState(Object obj) {
        this.wrappedHolder.removeState(obj);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Map saver$lambda$0(SaverScope saverScope, LazySaveableStateHolder lazySaveableStateHolder) {
            Map<String, List<Object>> mapPerformSave = lazySaveableStateHolder.performSave();
            if (mapPerformSave.isEmpty()) {
                return null;
            }
            return mapPerformSave;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final LazySaveableStateHolder saver$lambda$1(SaveableStateRegistry saveableStateRegistry, SaveableStateHolder saveableStateHolder, Map map) {
            return new LazySaveableStateHolder(saveableStateRegistry, map, saveableStateHolder);
        }

        public final Saver<LazySaveableStateHolder, Map<String, List<Object>>> saver(SaveableStateRegistry saveableStateRegistry, SaveableStateHolder saveableStateHolder) {
            return SaverKt.Saver(new p(), new xn4(0, saveableStateRegistry, saveableStateHolder));
        }

        private Companion() {
        }
    }

    public LazySaveableStateHolder(final SaveableStateRegistry saveableStateRegistry, Map<String, ? extends List<? extends Object>> map, SaveableStateHolder saveableStateHolder) {
        this(SaveableStateRegistryKt.SaveableStateRegistry(map, new nl3() { // from class: androidx.compose.foundation.lazy.layout.o
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(LazySaveableStateHolder._init_$lambda$0(saveableStateRegistry, obj));
            }
        }), saveableStateHolder);
    }
}

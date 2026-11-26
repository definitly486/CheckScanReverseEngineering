package androidx.compose.foundation.contextmenu;

import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jm3;
import defpackage.ll3;
import defpackage.ta8;

/* JADX INFO: loaded from: classes.dex */
public final class ContextMenuScope {
    public static final int $stable = 0;
    private final SnapshotStateList<dm3<ContextMenuColors, Composer, Integer, j59>> composables = SnapshotStateKt.mutableStateListOf();
    private final jm3<Modifier, String, Boolean, ContextMenuColors, dm3<? super Color, ? super Composer, ? super Integer, j59>, ll3<j59>, Composer, Integer, j59> itemUi;

    /* JADX WARN: Multi-variable type inference failed */
    public ContextMenuScope(jm3<? super Modifier, ? super String, ? super Boolean, ? super ContextMenuColors, ? super dm3<? super Color, ? super Composer, ? super Integer, j59>, ? super ll3<j59>, ? super Composer, ? super Integer, j59> jm3Var) {
        this.itemUi = jm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Content$lambda$1(ContextMenuScope contextMenuScope, ContextMenuColors contextMenuColors, int i, Composer composer, int i2) {
        contextMenuScope.Content$foundation(contextMenuColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void item$default(ContextMenuScope contextMenuScope, bm3 bm3Var, Modifier modifier, boolean z, dm3 dm3Var, ll3 ll3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            modifier = Modifier.Companion;
        }
        Modifier modifier2 = modifier;
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z2 = z;
        if ((i & 8) != 0) {
            dm3Var = null;
        }
        contextMenuScope.item(bm3Var, modifier2, z2, dm3Var, ll3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 item$lambda$0(bm3 bm3Var, ContextMenuScope contextMenuScope, Modifier modifier, boolean z, dm3 dm3Var, ll3 ll3Var, ContextMenuColors contextMenuColors, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = i | (composer.changed(contextMenuColors) ? 4 : 2);
        } else {
            i2 = i;
        }
        if (composer.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1789283891, i2, -1, "androidx.compose.foundation.contextmenu.ContextMenuScope.item.<anonymous> (ContextMenuUi.kt:297)");
            }
            String str = (String) bm3Var.invoke(composer, 0);
            if (ta8.M(str)) {
                InlineClassHelperKt.throwIllegalStateException("Label must not be blank");
            }
            contextMenuScope.itemUi.invoke(modifier, str, Boolean.valueOf(z), contextMenuColors, dm3Var, ll3Var, composer, Integer.valueOf((i2 << 9) & 7168));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public final void Content$foundation(final ContextMenuColors contextMenuColors, Composer composer, final int i) {
        Composer composerStartRestartGroup = composer.startRestartGroup(-798501095);
        int i2 = (i & 6) == 0 ? (composerStartRestartGroup.changed(contextMenuColors) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(this) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-798501095, i2, -1, "androidx.compose.foundation.contextmenu.ContextMenuScope.Content (ContextMenuUi.kt:255)");
            }
            SnapshotStateList<dm3<ContextMenuColors, Composer, Integer, j59>> snapshotStateList = this.composables;
            int size = snapshotStateList.size();
            for (int i3 = 0; i3 < size; i3++) {
                snapshotStateList.get(i3).invoke(contextMenuColors, composerStartRestartGroup, Integer.valueOf(i2 & 14));
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yy1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextMenuScope.Content$lambda$1(this.b, contextMenuColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public final void clear$foundation() {
        this.composables.clear();
    }

    public final void item(final bm3<? super Composer, ? super Integer, String> bm3Var, final Modifier modifier, final boolean z, final dm3<? super Color, ? super Composer, ? super Integer, j59> dm3Var, final ll3<j59> ll3Var) {
        this.composables.add(ComposableLambdaKt.composableLambdaInstance(-1789283891, true, new dm3() { // from class: xy1
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return ContextMenuScope.item$lambda$0(bm3Var, this, modifier, z, dm3Var, ll3Var, (ContextMenuColors) obj, (Composer) obj2, iIntValue);
            }
        }));
    }

    public final void separator() {
        this.composables.add(ComposableSingletons$ContextMenuUiKt.INSTANCE.m1395getLambda$1455401925$foundation());
    }
}

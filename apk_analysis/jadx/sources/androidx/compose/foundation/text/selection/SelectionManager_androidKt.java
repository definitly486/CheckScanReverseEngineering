package androidx.compose.foundation.text.selection;

import android.content.Context;
import android.view.KeyEvent;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.PlatformMagnifierFactory;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.KeyMapping_androidKt;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifier_androidKt;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b22;
import defpackage.b36;
import defpackage.bm3;
import defpackage.c22;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jg0;
import defpackage.ll3;
import defpackage.mk;
import defpackage.nl3;
import defpackage.nz;
import defpackage.of3;
import defpackage.pn7;
import defpackage.qn7;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionManager_androidKt {
    public static final Modifier addSelectionContainerTextContextMenuComponents(Modifier modifier, final SelectionManager selectionManager) {
        return TextContextMenuModifier_androidKt.addTextContextMenuComponentsWithContext(modifier, new bm3() { // from class: rn7
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return SelectionManager_androidKt.addSelectionContainerTextContextMenuComponents$lambda$0(selectionManager, (TextContextMenuBuilderScope) obj, (Context) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addSelectionContainerTextContextMenuComponents$lambda$0(SelectionManager selectionManager, TextContextMenuBuilderScope textContextMenuBuilderScope, Context context) {
        b36<AnnotatedString, TextRange> contextTextAndSelection$foundation = selectionManager.getContextTextAndSelection$foundation();
        PlatformSelectionBehaviors_androidKt.m2981addPlatformTextContextMenuItems71BSaZU(textContextMenuBuilderScope, context, false, contextTextAndSelection$foundation != null ? contextTextAndSelection$foundation.b : null, contextTextAndSelection$foundation != null ? contextTextAndSelection$foundation.c : null, selectionManager.getPlatformSelectionBehaviors$foundation(), new of3(2, selectionManager, context));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addSelectionContainerTextContextMenuComponents$lambda$0$1(SelectionManager selectionManager, Context context, TextContextMenuBuilderScope textContextMenuBuilderScope) {
        textContextMenuBuilderScope.separator();
        addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem$default(textContextMenuBuilderScope, context, TextContextMenuItems.Copy, selectionManager.isNonEmptySelection$foundation(), null, new b22(selectionManager, 1), 8, null);
        int i = 3;
        addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem(textContextMenuBuilderScope, context, TextContextMenuItems.SelectAll, !selectionManager.isEntireContainerSelected$foundation(), new c22(selectionManager, i), new jg0(selectionManager, i));
        textContextMenuBuilderScope.separator();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addSelectionContainerTextContextMenuComponents$lambda$0$1$0$0(SelectionManager selectionManager) {
        selectionManager.copy$foundation();
        if (selectionManager.isInTouchMode()) {
            selectionManager.onRelease();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addSelectionContainerTextContextMenuComponents$lambda$0$1$0$1(SelectionManager selectionManager) {
        return (selectionManager.getShowToolbar$foundation() && selectionManager.isInTouchMode()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addSelectionContainerTextContextMenuComponents$lambda$0$1$0$2(SelectionManager selectionManager) {
        selectionManager.selectAll$foundation();
        return j59.a;
    }

    private static final void addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, TextContextMenuItems textContextMenuItems, boolean z, ll3<Boolean> ll3Var, ll3<j59> ll3Var2) {
        ContextMenu_androidKt.textItem(textContextMenuBuilderScope, context.getResources(), textContextMenuItems, z, new pn7(0, ll3Var2, ll3Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem$0(ll3 ll3Var, ll3 ll3Var2, TextContextMenuSession textContextMenuSession) {
        ll3Var.invoke();
        if (ll3Var2 != null ? ((Boolean) ll3Var2.invoke()).booleanValue() : true) {
            textContextMenuSession.close();
        }
        return j59.a;
    }

    public static /* synthetic */ void addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem$default(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, TextContextMenuItems textContextMenuItems, boolean z, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        if ((i & 8) != 0) {
            ll3Var = null;
        }
        addSelectionContainerTextContextMenuComponents$lambda$0$selectionContainerItem(textContextMenuBuilderScope, context, textContextMenuItems, z, ll3Var, ll3Var2);
    }

    /* JADX INFO: renamed from: isCopyKeyEvent-ZmokQxo, reason: not valid java name */
    public static final boolean m3017isCopyKeyEventZmokQxo(KeyEvent keyEvent) {
        return KeyMapping_androidKt.getPlatformDefaultKeyMapping().mo2496mapZmokQxo(keyEvent) == KeyCommand.COPY;
    }

    public static final Modifier selectionMagnifier(Modifier modifier, final SelectionManager selectionManager) {
        return !Magnifier_androidKt.isPlatformMagnifierSupported$default(0, 1, null) ? modifier : ComposedModifierKt.composed$default(modifier, null, new dm3() { // from class: sn7
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return SelectionManager_androidKt.selectionMagnifier$lambda$0(selectionManager, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier selectionMagnifier$lambda$0(final SelectionManager selectionManager, Modifier modifier, Composer composer, int i) {
        composer.startReplaceGroup(-1914520728);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1914520728, i, -1, "androidx.compose.foundation.text.selection.selectionMagnifier.<anonymous> (SelectionManager.android.kt:51)");
        }
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        int i2 = 2;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m9205boximpl(IntSize.Companion.m9218getZeroYbymL2g()), null, 2, null);
            composer.updateRememberedValue(objRememberedValue);
        }
        final MutableState mutableState = (MutableState) objRememberedValue;
        boolean zChangedInstance = composer.changedInstance(selectionManager);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new ll3() { // from class: tn7
                @Override // defpackage.ll3
                public final Object invoke() {
                    return SelectionManager_androidKt.selectionMagnifier$lambda$0$3$0(selectionManager, mutableState);
                }
            };
            composer.updateRememberedValue(objRememberedValue2);
        }
        ll3 ll3Var = (ll3) objRememberedValue2;
        boolean zChanged = composer.changed(density);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChanged || objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new nz(i2, density, mutableState);
            composer.updateRememberedValue(objRememberedValue3);
        }
        Modifier modifierAnimatedSelectionMagnifier = SelectionMagnifierKt.animatedSelectionMagnifier(modifier, ll3Var, (nl3) objRememberedValue3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierAnimatedSelectionMagnifier;
    }

    private static final long selectionMagnifier$lambda$0$1(MutableState<IntSize> mutableState) {
        return mutableState.getValue().m9217unboximpl();
    }

    private static final void selectionMagnifier$lambda$0$2(MutableState<IntSize> mutableState, long j) {
        mutableState.setValue(IntSize.m9205boximpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset selectionMagnifier$lambda$0$3$0(SelectionManager selectionManager, MutableState mutableState) {
        return Offset.m5976boximpl(SelectionManagerKt.m3014calculateSelectionMagnifierCenterAndroidO0kMr_c(selectionManager, selectionMagnifier$lambda$0$1(mutableState)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier selectionMagnifier$lambda$0$4$0(Density density, MutableState mutableState, ll3 ll3Var) {
        return Magnifier_androidKt.m1358magnifierjPUL71Q$default(Modifier.Companion, new mk(ll3Var, 3), null, new qn7(0, density, mutableState), 0.0f, true, 0L, 0.0f, 0.0f, false, PlatformMagnifierFactory.Companion.getForCurrentPlatform(), 490, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset selectionMagnifier$lambda$0$4$0$0(ll3 ll3Var, Density density) {
        return (Offset) ll3Var.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 selectionMagnifier$lambda$0$4$0$1(Density density, MutableState mutableState, DpSize dpSize) {
        selectionMagnifier$lambda$0$2(mutableState, IntSize.m9208constructorimpl((((long) density.mo1428roundToPx0680j_4(DpSize.m9140getWidthD9Ej5fM(dpSize.m9148unboximpl()))) << 32) | (((long) density.mo1428roundToPx0680j_4(DpSize.m9138getHeightD9Ej5fM(dpSize.m9148unboximpl()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        return j59.a;
    }
}

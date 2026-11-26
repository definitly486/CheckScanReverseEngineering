package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.ClipboardEventsHandler_jvmAndAndroidKt;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.a32;
import defpackage.av0;
import defpackage.bm3;
import defpackage.c26;
import defpackage.c32;
import defpackage.e02;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jd6;
import defpackage.kg4;
import defpackage.l31;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.q27;
import defpackage.q92;
import defpackage.u96;
import defpackage.vu1;
import defpackage.y22;
import defpackage.yt0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionContainerKt {
    public static final void DisableSelection(bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1162635549);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1162635549, i2, -1, "androidx.compose.foundation.text.selection.DisableSelection (SelectionContainer.kt:73)");
            }
            CompositionLocalKt.CompositionLocalProvider(SelectionRegistrarKt.getLocalSelectionRegistrar().provides(null), bm3Var, composerStartRestartGroup, ((i2 << 3) & 112) | ProvidedValue.$stable);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new q27(bm3Var, i, i3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DisableSelection$lambda$0(bm3 bm3Var, int i, Composer composer, int i2) {
        DisableSelection(bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    public static final void SelectionContainer(Modifier modifier, final Selection selection, final nl3<? super Selection, j59> nl3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        Modifier modifier3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-917932944);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(selection) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 1171) != 1170, i3 & 1)) {
            modifier3 = i4 != 0 ? Modifier.Companion : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-917932944, i3, -1, "androidx.compose.foundation.text.selection.SelectionContainer (SelectionContainer.kt:93)");
            }
            Object[] objArr = new Object[0];
            Saver<SelectionRegistrarImpl, Long> saver = SelectionRegistrarImpl.Companion.getSaver();
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new vu1(6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue, composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new SelectionManager(selectionRegistrarImpl);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final SelectionManager selectionManager = (SelectionManager) objRememberedValue2;
            Clipboard clipboard = (Clipboard) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalClipboard());
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            y22 y22Var = (y22) objRememberedValue3;
            selectionManager.setHapticFeedBack((HapticFeedback) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalHapticFeedback()));
            boolean zChanged = composerStartRestartGroup.changed(y22Var) | composerStartRestartGroup.changed(clipboard);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            int i5 = 3;
            if (zChanged || objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = ClipboardUtils_androidKt.isWriteSupported(clipboard) ? new yt0(i5, y22Var, clipboard) : null;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            selectionManager.setOnCopyHandler((nl3) objRememberedValue4);
            selectionManager.setTextToolbar((TextToolbar) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalTextToolbar()));
            selectionManager.setOnSelectionChange(nl3Var);
            selectionManager.setSelection(selection);
            if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                composerStartRestartGroup.startReplaceGroup(-82280708);
                selectionManager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.StaticText, null, composerStartRestartGroup, 54));
                selectionManager.setCoroutineScope$foundation(y22Var);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-82105806);
                composerStartRestartGroup.endReplaceGroup();
            }
            selectionManager.isNonEmptySelection$foundation();
            ClipboardEventsHandler_jvmAndAndroidKt.AnonymousClass1 anonymousClass1 = ClipboardEventsHandler_jvmAndAndroidKt.AnonymousClass1.INSTANCE;
            ClipboardEventsHandler_jvmAndAndroidKt.AnonymousClass3 anonymousClass3 = ClipboardEventsHandler_jvmAndAndroidKt.AnonymousClass3.INSTANCE;
            selectionManager.setShouldIgnoreCopyKeyEvent$foundation(false);
            SimpleLayoutKt.SimpleLayout(modifier3.then(selectionManager.getModifier()), ComposableLambdaKt.rememberComposableLambda(-1799563674, true, new bm3() { // from class: wm7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SelectionContainerKt.SelectionContainer$lambda$9(selectionManager, selectionRegistrarImpl, bm3Var, (Composer) obj, iIntValue);
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 48, 0);
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(selectionManager);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = new q92(selectionManager, i5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            EffectsKt.DisposableEffect(selectionManager, (nl3<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue5, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xm7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SelectionContainerKt.SelectionContainer$lambda$11(modifier4, selection, nl3Var, bm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    private static final Selection SelectionContainer$lambda$1(MutableState<Selection> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult SelectionContainer$lambda$10$0(final SelectionManager selectionManager, DisposableEffectScope disposableEffectScope) {
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$lambda$10$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                selectionManager.onRelease();
                selectionManager.setHasFocus(false);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionContainer$lambda$11(Modifier modifier, Selection selection, nl3 nl3Var, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        SelectionContainer(modifier, selection, nl3Var, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionContainer$lambda$3$0(MutableState mutableState, Selection selection) {
        mutableState.setValue(selection);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionContainer$lambda$4(Modifier modifier, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        SelectionContainer(modifier, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SelectionRegistrarImpl SelectionContainer$lambda$5$0() {
        return new SelectionRegistrarImpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionContainer$lambda$7$0(y22 y22Var, Clipboard clipboard, AnnotatedString annotatedString) {
        av0.c(y22Var, null, c32.UNDISPATCHED, new SelectionContainerKt$SelectionContainer$3$1$1(clipboard, annotatedString, null), 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionContainer$lambda$9(final SelectionManager selectionManager, final SelectionRegistrarImpl selectionRegistrarImpl, final bm3 bm3Var, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1799563674, i, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous> (SelectionContainer.kt:136)");
            }
            ContextMenu_androidKt.ContextMenuArea(selectionManager, ComposableLambdaKt.rememberComposableLambda(-284825865, true, new bm3() { // from class: ym7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    SelectionManager selectionManager2 = selectionManager;
                    return SelectionContainerKt.SelectionContainer$lambda$9$0(selectionRegistrarImpl, bm3Var, selectionManager2, (Composer) obj, iIntValue);
                }
            }, composer, 54), composer, 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionContainer$lambda$9$0(SelectionRegistrarImpl selectionRegistrarImpl, final bm3 bm3Var, final SelectionManager selectionManager, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-284825865, i, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous>.<anonymous> (SelectionContainer.kt:137)");
            }
            CompositionLocalKt.CompositionLocalProvider(SelectionRegistrarKt.getLocalSelectionRegistrar().provides(selectionRegistrarImpl), ComposableLambdaKt.rememberComposableLambda(610483127, true, new bm3() { // from class: vm7
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return SelectionContainerKt.SelectionContainer$lambda$9$0$0(bm3Var, selectionManager, (Composer) obj, iIntValue);
                }
            }, composer, 54), composer, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionContainer$lambda$9$0$0(bm3 bm3Var, SelectionManager selectionManager, Composer composer, int i) {
        int i2 = 1;
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(610483127, i, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous>.<anonymous>.<anonymous> (SelectionContainer.kt:138)");
            }
            bm3Var.invoke(composer, 0);
            if (selectionManager.isInTouchMode() && selectionManager.getHasFocus() && !selectionManager.isTriviallyCollapsedSelection$foundation()) {
                composer.startReplaceGroup(-1736224054);
                Selection selection = selectionManager.getSelection();
                if (selection == null) {
                    composer.startReplaceGroup(2011629175);
                    composer.endReplaceGroup();
                } else {
                    composer.startReplaceGroup(2011629176);
                    composer.startReplaceGroup(-1736222526);
                    List listI = u96.i(Boolean.TRUE, Boolean.FALSE);
                    int size = listI.size();
                    int i3 = 0;
                    while (i3 < size) {
                        boolean zBooleanValue = ((Boolean) listI.get(i3)).booleanValue();
                        boolean zChanged = composer.changed(zBooleanValue);
                        Object objRememberedValue = composer.rememberedValue();
                        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = selectionManager.handleDragObserver(zBooleanValue);
                            composer.updateRememberedValue(objRememberedValue);
                        }
                        final TextDragObserver textDragObserver = (TextDragObserver) objRememberedValue;
                        boolean zChanged2 = composer.changed(zBooleanValue);
                        Object objRememberedValue2 = composer.rememberedValue();
                        if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = zBooleanValue ? new jd6(selectionManager, i2) : new l31(selectionManager, 3);
                            composer.updateRememberedValue(objRememberedValue2);
                        }
                        ll3 ll3Var = (ll3) objRememberedValue2;
                        ResolvedTextDirection direction = zBooleanValue ? selection.getStart().getDirection() : selection.getEnd().getDirection();
                        float startHandleLineHeight = zBooleanValue ? selectionManager.getStartHandleLineHeight() : selectionManager.getEndHandleLineHeight();
                        int i4 = i3;
                        SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 = new SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0(ll3Var);
                        boolean handlesCrossed = selection.getHandlesCrossed();
                        Modifier.Companion companion = Modifier.Companion;
                        boolean zChangedInstance = composer.changedInstance(textDragObserver);
                        Object objRememberedValue3 = composer.rememberedValue();
                        if (zChangedInstance || objRememberedValue3 == Composer.Companion.getEmpty()) {
                            objRememberedValue3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                                    Object objDetectDownAndDragGesturesWithObserver = LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver(pointerInputScope, textDragObserver, e02Var);
                                    return objDetectDownAndDragGesturesWithObserver == a32.COROUTINE_SUSPENDED ? objDetectDownAndDragGesturesWithObserver : j59.a;
                                }
                            };
                            composer.updateRememberedValue(objRememberedValue3);
                        }
                        AndroidSelectionHandles_androidKt.m2960SelectionHandlewLIcFTc(selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0, zBooleanValue, direction, handlesCrossed, 0L, startHandleLineHeight, SuspendingPointerInputFilterKt.pointerInput(companion, textDragObserver, (PointerInputEventHandler) objRememberedValue3), composer, 0, 16);
                        i3 = i4 + 1;
                    }
                    composer.endReplaceGroup();
                    composer.endReplaceGroup();
                }
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(2013602667);
                composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset SelectionContainer$lambda$9$0$0$0$0$1$0(SelectionManager selectionManager) {
        Offset offsetM3008getStartHandlePosition_m7T9E = selectionManager.m3008getStartHandlePosition_m7T9E();
        return Offset.m5976boximpl(offsetM3008getStartHandlePosition_m7T9E != null ? offsetM3008getStartHandlePosition_m7T9E.m5997unboximpl() : Offset.Companion.m6002getUnspecifiedF1C5BW0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset SelectionContainer$lambda$9$0$0$0$0$1$1(SelectionManager selectionManager) {
        Offset offsetM3007getEndHandlePosition_m7T9E = selectionManager.m3007getEndHandlePosition_m7T9E();
        return Offset.m5976boximpl(offsetM3007getEndHandlePosition_m7T9E != null ? offsetM3007getEndHandlePosition_m7T9E.m5997unboximpl() : Offset.Companion.m6002getUnspecifiedF1C5BW0());
    }

    public static final void SelectionContainer(Modifier modifier, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        int i3;
        bm3<? super Composer, ? super Integer, j59> bm3Var2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1949207773);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        int i5 = 1;
        if (composerStartRestartGroup.shouldExecute((i3 & 19) != 18, i3 & 1)) {
            if (i4 != 0) {
                modifier = Modifier.Companion;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1949207773, i3, -1, "androidx.compose.foundation.text.selection.SelectionContainer (SelectionContainer.kt:56)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MutableState mutableState = (MutableState) objRememberedValue;
            int i6 = i3;
            Selection selectionSelectionContainer$lambda$1 = SelectionContainer$lambda$1(mutableState);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new kg4(mutableState, i5);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            int i7 = (i6 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ((i6 << 6) & 7168);
            Modifier modifier2 = modifier;
            bm3Var2 = bm3Var;
            SelectionContainer(modifier2, selectionSelectionContainer$lambda$1, (nl3) objRememberedValue2, bm3Var2, composerStartRestartGroup, i7, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier = modifier2;
        } else {
            bm3Var2 = bm3Var;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new c26(modifier, bm3Var2, i, i2));
        }
    }
}

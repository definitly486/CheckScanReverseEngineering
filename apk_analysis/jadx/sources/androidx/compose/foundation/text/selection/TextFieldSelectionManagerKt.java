package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.internal.PlatformUtils_androidKt;
import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.MenuItemsAvailability;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.bm3;
import defpackage.cw3;
import defpackage.e02;
import defpackage.ib7;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.lz0;
import defpackage.me0;
import defpackage.nl3;
import defpackage.vo1;
import defpackage.w77;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSelectionManagerKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            try {
                iArr[Handle.Cursor.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Handle.SelectionStart.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Handle.SelectionEnd.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void TextFieldSelectionHandle(final boolean z, final ResolvedTextDirection resolvedTextDirection, final TextFieldSelectionManager textFieldSelectionManager, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1344558920);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(resolvedTextDirection.ordinal()) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(textFieldSelectionManager) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1344558920, i2, -1, "androidx.compose.foundation.text.selection.TextFieldSelectionHandle (TextFieldSelectionManager.kt:1365)");
            }
            int i3 = i2 & 14;
            boolean zChanged = (i3 == 4) | composerStartRestartGroup.changed(textFieldSelectionManager);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = textFieldSelectionManager.handleDragObserver$foundation(z);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final TextDragObserver textDragObserver = (TextDragObserver) objRememberedValue;
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(textFieldSelectionManager) | (i3 == 4);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1
                    @Override // androidx.compose.foundation.text.selection.OffsetProvider
                    /* JADX INFO: renamed from: provide-F1C5BW0 */
                    public final long mo2453provideF1C5BW0() {
                        return textFieldSelectionManager.m3040getHandlePositiontuRUvjQ$foundation(z);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            OffsetProvider offsetProvider = (OffsetProvider) objRememberedValue2;
            boolean zM8490getReversedimpl = TextRange.m8490getReversedimpl(textFieldSelectionManager.getValue$foundation().m8741getSelectiond9O1mEE());
            float handleLineHeight$foundation = textFieldSelectionManager.getHandleLineHeight$foundation(z);
            Modifier.Companion companion = Modifier.Companion;
            boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(textDragObserver);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$2$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                        Object objDetectDownAndDragGesturesWithObserver = LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver(pointerInputScope, textDragObserver, e02Var);
                        return objDetectDownAndDragGesturesWithObserver == a32.COROUTINE_SUSPENDED ? objDetectDownAndDragGesturesWithObserver : j59.a;
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            AndroidSelectionHandles_androidKt.m2960SelectionHandlewLIcFTc(offsetProvider, z, resolvedTextDirection, zM8490getReversedimpl, 0L, handleLineHeight$foundation, SuspendingPointerInputFilterKt.pointerInput(companion, textDragObserver, (PointerInputEventHandler) objRememberedValue3), composerStartRestartGroup, (i2 << 3) & 1008, 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: or8
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextFieldSelectionManagerKt.TextFieldSelectionHandle$lambda$3(z, resolvedTextDirection, textFieldSelectionManager, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 TextFieldSelectionHandle$lambda$3(boolean z, ResolvedTextDirection resolvedTextDirection, TextFieldSelectionManager textFieldSelectionManager, int i, Composer composer, int i2) {
        TextFieldSelectionHandle(z, resolvedTextDirection, textFieldSelectionManager, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: renamed from: calculateSelectionMagnifierCenterAndroid-O0kMr_c, reason: not valid java name */
    public static final long m3047calculateSelectionMagnifierCenterAndroidO0kMr_c(TextFieldSelectionManager textFieldSelectionManager, long j) {
        int iM8491getStartimpl;
        TextLayoutResultProxy layoutResult;
        TextDelegate textDelegate;
        AnnotatedString text;
        Offset offsetM3038getCurrentDragPosition_m7T9E = textFieldSelectionManager.m3038getCurrentDragPosition_m7T9E();
        if (offsetM3038getCurrentDragPosition_m7T9E == null) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        long jM5997unboximpl = offsetM3038getCurrentDragPosition_m7T9E.m5997unboximpl();
        AnnotatedString transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation();
        if (transformedText$foundation == null || transformedText$foundation.length() == 0) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        Handle draggingHandle = textFieldSelectionManager.getDraggingHandle();
        int i = draggingHandle == null ? -1 : WhenMappings.$EnumSwitchMapping$0[draggingHandle.ordinal()];
        if (i == -1) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        if (i == 1 || i == 2) {
            iM8491getStartimpl = TextRange.m8491getStartimpl(textFieldSelectionManager.getValue$foundation().m8741getSelectiond9O1mEE());
        } else {
            if (i != 3) {
                me0.e();
                return 0L;
            }
            iM8491getStartimpl = TextRange.m8486getEndimpl(textFieldSelectionManager.getValue$foundation().m8741getSelectiond9O1mEE());
        }
        LegacyTextFieldState state$foundation = textFieldSelectionManager.getState$foundation();
        if (state$foundation == null || (layoutResult = state$foundation.getLayoutResult()) == null) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        LegacyTextFieldState state$foundation2 = textFieldSelectionManager.getState$foundation();
        if (state$foundation2 == null || (textDelegate = state$foundation2.getTextDelegate()) == null || (text = textDelegate.getText()) == null) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        int iF = kx6.f(textFieldSelectionManager.getOffsetMapping$foundation().originalToTransformed(iM8491getStartimpl), 0, text.length());
        float fIntBitsToFloat = Float.intBitsToFloat((int) (layoutResult.m2630translateDecorationToInnerCoordinatesMKHz9U$foundation(jM5997unboximpl) >> 32));
        TextLayoutResult value = layoutResult.getValue();
        int lineForOffset = value.getLineForOffset(iF);
        float lineLeft = value.getLineLeft(lineForOffset);
        float lineRight = value.getLineRight(lineForOffset);
        float fD = kx6.d(fIntBitsToFloat, Math.min(lineLeft, lineRight), Math.max(lineLeft, lineRight));
        if (!IntSize.m9211equalsimpl0(j, IntSize.Companion.m9218getZeroYbymL2g()) && Math.abs(fIntBitsToFloat - fD) > ((int) (j >> 32)) / 2) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        float lineTop = value.getLineTop(lineForOffset);
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fD)) << 32) | (((long) Float.floatToRawIntBits(((value.getLineBottom(lineForOffset) - lineTop) / 2.0f) + lineTop)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final nl3<ContextMenuScope, j59> contextMenuBuilder(final TextFieldSelectionManager textFieldSelectionManager, final ContextMenuState contextMenuState, final State<MenuItemsAvailability> state) {
        return new nl3() { // from class: nr8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldSelectionManagerKt.contextMenuBuilder$lambda$0(state, textFieldSelectionManager, contextMenuState, (ContextMenuScope) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0(State state, TextFieldSelectionManager textFieldSelectionManager, ContextMenuState contextMenuState, ContextMenuScope contextMenuScope) {
        int iM2582unboximpl = ((MenuItemsAvailability) state.getValue()).m2582unboximpl();
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, TextContextMenuItems.Cut, MenuItemsAvailability.m2577getCanCutimpl(iM2582unboximpl), new w77(textFieldSelectionManager, 1));
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, TextContextMenuItems.Copy, MenuItemsAvailability.m2576getCanCopyimpl(iM2582unboximpl), new ib7(textFieldSelectionManager, 2));
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, TextContextMenuItems.Paste, MenuItemsAvailability.m2578getCanPasteimpl(iM2582unboximpl), new cw3(textFieldSelectionManager, 3));
        contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, TextContextMenuItems.SelectAll, MenuItemsAvailability.m2579getCanSelectAllimpl(iM2582unboximpl), new lz0(textFieldSelectionManager, 5));
        if (PlatformUtils_androidKt.isAutofillAvailable()) {
            contextMenuBuilder$lambda$0$textFieldItem(contextMenuScope, contextMenuState, TextContextMenuItems.Autofill, MenuItemsAvailability.m2575getCanAutofillimpl(iM2582unboximpl), new vo1(textFieldSelectionManager, 4));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0$0(TextFieldSelectionManager textFieldSelectionManager) {
        textFieldSelectionManager.cut$foundation();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0$1(TextFieldSelectionManager textFieldSelectionManager) {
        textFieldSelectionManager.copy$foundation(false);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0$2(TextFieldSelectionManager textFieldSelectionManager) {
        textFieldSelectionManager.paste$foundation();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0$3(TextFieldSelectionManager textFieldSelectionManager) {
        textFieldSelectionManager.selectAll$foundation();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0$4(TextFieldSelectionManager textFieldSelectionManager) {
        textFieldSelectionManager.autofill$foundation();
        return j59.a;
    }

    private static final void contextMenuBuilder$lambda$0$textFieldItem(ContextMenuScope contextMenuScope, ContextMenuState contextMenuState, TextContextMenuItems textContextMenuItems, boolean z, ll3<j59> ll3Var) {
        if (z) {
            ContextMenuScope.item$default(contextMenuScope, new CommonContextMenuAreaKt.AnonymousClass1(textContextMenuItems), null, false, null, new CommonContextMenuAreaKt.AnonymousClass2(ll3Var, contextMenuState), 14, null);
        }
    }

    public static final boolean isSelectionHandleInVisibleBoundDefault(TextFieldSelectionManager textFieldSelectionManager, boolean z) {
        LayoutCoordinates layoutCoordinates;
        Rect rectVisibleBounds;
        LegacyTextFieldState state$foundation = textFieldSelectionManager.getState$foundation();
        if (state$foundation == null || (layoutCoordinates = state$foundation.getLayoutCoordinates()) == null || (rectVisibleBounds = SelectionManagerKt.visibleBounds(layoutCoordinates)) == null) {
            return false;
        }
        return SelectionManagerKt.m3015containsInclusiveUv8p0NA(rectVisibleBounds, textFieldSelectionManager.m3040getHandlePositiontuRUvjQ$foundation(z));
    }
}

package androidx.compose.foundation.text.selection;

import android.content.Context;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.PlatformMagnifierFactory;
import androidx.compose.foundation.internal.ClipboardUtils;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifier_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.am4;
import defpackage.av0;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.hr2;
import defpackage.ir2;
import defpackage.j59;
import defpackage.jv2;
import defpackage.jx6;
import defpackage.ll3;
import defpackage.mca;
import defpackage.nl3;
import defpackage.ro4;
import defpackage.xh0;
import defpackage.xh2;
import defpackage.y22;
import defpackage.yh2;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldSelectionManager_androidKt {
    public static final Modifier addBasicTextFieldTextContextMenuComponents(Modifier modifier, final TextFieldSelectionManager textFieldSelectionManager, final y22 y22Var) {
        return TextContextMenuModifier_androidKt.addTextContextMenuComponentsWithContext(modifier, new bm3() { // from class: pr8
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0(textFieldSelectionManager, y22Var, (TextContextMenuBuilderScope) obj, (Context) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0(final TextFieldSelectionManager textFieldSelectionManager, final y22 y22Var, TextContextMenuBuilderScope textContextMenuBuilderScope, final Context context) {
        boolean editable = textFieldSelectionManager.getEditable();
        AnnotatedString transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation();
        TextRange textRangeM8479boximpl = null;
        String text = transformedText$foundation != null ? transformedText$foundation.getText() : null;
        TextRange textRangeM3041getLatestSelectionMzsxiRA$foundation = textFieldSelectionManager.m3041getLatestSelectionMzsxiRA$foundation();
        if (textRangeM3041getLatestSelectionMzsxiRA$foundation != null) {
            long jM8495unboximpl = textRangeM3041getLatestSelectionMzsxiRA$foundation.m8495unboximpl();
            OffsetMapping offsetMapping$foundation = textFieldSelectionManager.getOffsetMapping$foundation();
            textRangeM8479boximpl = TextRange.m8479boximpl(TextRangeKt.TextRange(offsetMapping$foundation.originalToTransformed(TextRange.m8491getStartimpl(jM8495unboximpl)), offsetMapping$foundation.originalToTransformed(TextRange.m8486getEndimpl(jM8495unboximpl))));
        }
        PlatformSelectionBehaviors_androidKt.m2981addPlatformTextContextMenuItems71BSaZU(textContextMenuBuilderScope, context, editable, text, textRangeM8479boximpl, textFieldSelectionManager.getPlatformSelectionBehaviors$foundation(), new nl3() { // from class: qr8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$3(textFieldSelectionManager, y22Var, context, (TextContextMenuBuilderScope) obj);
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$3(TextFieldSelectionManager textFieldSelectionManager, y22 y22Var, Context context, TextContextMenuBuilderScope textContextMenuBuilderScope) {
        textContextMenuBuilderScope.separator();
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(textContextMenuBuilderScope, y22Var, context, TextContextMenuItems.Cut, textFieldSelectionManager.canShowCutMenuItem$foundation(), new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$1(textFieldSelectionManager, null));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(textContextMenuBuilderScope, y22Var, context, TextContextMenuItems.Copy, textFieldSelectionManager.canShowCopyMenuItem$foundation(), new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$2(textFieldSelectionManager, null));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(textContextMenuBuilderScope, y22Var, context, TextContextMenuItems.Paste, textFieldSelectionManager.canShowPasteMenuItem$foundation(), new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$2$1$3(textFieldSelectionManager, null));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem(textContextMenuBuilderScope, context, TextContextMenuItems.SelectAll, textFieldSelectionManager.canShowSelectAllMenuItem$foundation(), new xh2(textFieldSelectionManager, 3), new mca(textFieldSelectionManager, 6));
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$default(textContextMenuBuilderScope, context, TextContextMenuItems.Autofill, textFieldSelectionManager.canShowAutofillMenuItem$foundation(), null, new ro4(textFieldSelectionManager, 1), 8, null);
        textContextMenuBuilderScope.separator();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean addBasicTextFieldTextContextMenuComponents$lambda$0$3$0$0(TextFieldSelectionManager textFieldSelectionManager) {
        return !textFieldSelectionManager.getTextToolbarShown$foundation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$3$0$1(TextFieldSelectionManager textFieldSelectionManager) {
        textFieldSelectionManager.selectAll$foundation();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$3$0$2(TextFieldSelectionManager textFieldSelectionManager) {
        textFieldSelectionManager.autofill$foundation();
        return j59.a;
    }

    private static final void addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, TextContextMenuItems textContextMenuItems, boolean z, ll3<Boolean> ll3Var, ll3<j59> ll3Var2) {
        ContextMenu_androidKt.textItem(textContextMenuBuilderScope, context.getResources(), textContextMenuItems, z, new jv2(2, ll3Var2, ll3Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$0(ll3 ll3Var, ll3 ll3Var2, TextContextMenuSession textContextMenuSession) {
        ll3Var.invoke();
        if (ll3Var2 != null ? ((Boolean) ll3Var2.invoke()).booleanValue() : true) {
            textContextMenuSession.close();
        }
        return j59.a;
    }

    public static /* synthetic */ void addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$default(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, TextContextMenuItems textContextMenuItems, boolean z, ll3 ll3Var, ll3 ll3Var2, int i, Object obj) {
        if ((i & 8) != 0) {
            ll3Var = null;
        }
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem(textContextMenuBuilderScope, context, textContextMenuItems, z, ll3Var, ll3Var2);
    }

    private static final void addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem(TextContextMenuBuilderScope textContextMenuBuilderScope, y22 y22Var, Context context, TextContextMenuItems textContextMenuItems, boolean z, nl3<? super e02<? super j59>, ? extends Object> nl3Var) {
        addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldItem$default(textContextMenuBuilderScope, context, textContextMenuItems, z, null, new yh2(1, y22Var, nl3Var), 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 addBasicTextFieldTextContextMenuComponents$lambda$0$textFieldSuspendItem$1(y22 y22Var, nl3 nl3Var) {
        av0.c(y22Var, null, c32.UNDISPATCHED, new TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1(nl3Var, null), 1);
        return j59.a;
    }

    public static final Object hasAvailableTextToPaste(TextFieldSelectionManager textFieldSelectionManager, e02<? super Boolean> e02Var) {
        Clipboard clipboard$foundation = textFieldSelectionManager.getClipboard$foundation();
        return Boolean.valueOf(clipboard$foundation != null ? ClipboardUtils.hasText(clipboard$foundation) : false);
    }

    public static final boolean isSelectionHandleInVisibleBound(TextFieldSelectionManager textFieldSelectionManager, boolean z) {
        return TextFieldSelectionManagerKt.isSelectionHandleInVisibleBoundDefault(textFieldSelectionManager, z);
    }

    public static final Modifier textFieldMagnifier(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager) {
        return !Magnifier_androidKt.isPlatformMagnifierSupported$default(0, 1, null) ? modifier : ComposedModifierKt.composed$default(modifier, null, new hr2(textFieldSelectionManager, 1), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier textFieldMagnifier$lambda$0(TextFieldSelectionManager textFieldSelectionManager, Modifier modifier, Composer composer, int i) {
        composer.startReplaceGroup(1980580247);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1980580247, i, -1, "androidx.compose.foundation.text.selection.textFieldMagnifier.<anonymous> (TextFieldSelectionManager.android.kt:54)");
        }
        Density density = (Density) composer.consume(CompositionLocalsKt.getLocalDensity());
        Object objRememberedValue = composer.rememberedValue();
        Composer.Companion companion = Composer.Companion;
        int i2 = 2;
        if (objRememberedValue == companion.getEmpty()) {
            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m9205boximpl(IntSize.Companion.m9218getZeroYbymL2g()), null, 2, null);
            composer.updateRememberedValue(objRememberedValue);
        }
        MutableState mutableState = (MutableState) objRememberedValue;
        boolean zChangedInstance = composer.changedInstance(textFieldSelectionManager);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == companion.getEmpty()) {
            objRememberedValue2 = new xh0(3, textFieldSelectionManager, mutableState);
            composer.updateRememberedValue(objRememberedValue2);
        }
        ll3 ll3Var = (ll3) objRememberedValue2;
        boolean zChanged = composer.changed(density);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChanged || objRememberedValue3 == companion.getEmpty()) {
            objRememberedValue3 = new am4(i2, density, mutableState);
            composer.updateRememberedValue(objRememberedValue3);
        }
        Modifier modifierAnimatedSelectionMagnifier = SelectionMagnifierKt.animatedSelectionMagnifier(modifier, ll3Var, (nl3) objRememberedValue3);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierAnimatedSelectionMagnifier;
    }

    private static final long textFieldMagnifier$lambda$0$1(MutableState<IntSize> mutableState) {
        return mutableState.getValue().m9217unboximpl();
    }

    private static final void textFieldMagnifier$lambda$0$2(MutableState<IntSize> mutableState, long j) {
        mutableState.setValue(IntSize.m9205boximpl(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset textFieldMagnifier$lambda$0$3$0(TextFieldSelectionManager textFieldSelectionManager, MutableState mutableState) {
        return Offset.m5976boximpl(TextFieldSelectionManagerKt.m3047calculateSelectionMagnifierCenterAndroidO0kMr_c(textFieldSelectionManager, textFieldMagnifier$lambda$0$1(mutableState)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier textFieldMagnifier$lambda$0$4$0(Density density, MutableState mutableState, ll3 ll3Var) {
        int i = 1;
        return Magnifier_androidKt.m1358magnifierjPUL71Q$default(Modifier.Companion, new ir2(ll3Var, i), null, new jx6(i, density, mutableState), 0.0f, true, 0L, 0.0f, 0.0f, false, PlatformMagnifierFactory.Companion.getForCurrentPlatform(), 490, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset textFieldMagnifier$lambda$0$4$0$0(ll3 ll3Var, Density density) {
        return (Offset) ll3Var.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 textFieldMagnifier$lambda$0$4$0$1(Density density, MutableState mutableState, DpSize dpSize) {
        textFieldMagnifier$lambda$0$2(mutableState, IntSize.m9208constructorimpl((((long) density.mo1428roundToPx0680j_4(DpSize.m9140getWidthD9Ej5fM(dpSize.m9148unboximpl()))) << 32) | (((long) density.mo1428roundToPx0680j_4(DpSize.m9138getHeightD9Ej5fM(dpSize.m9148unboximpl()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        return j59.a;
    }
}

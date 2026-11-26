package androidx.compose.foundation.text.selection;

import android.content.Context;
import android.os.Build;
import androidx.compose.foundation.text.contextmenu.ProcessText_androidKt;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.intl.LocaleList;
import defpackage.aa4;
import defpackage.fm3;
import defpackage.j59;
import defpackage.k96;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.sh2;
import defpackage.y70;

/* JADX INFO: loaded from: classes.dex */
public final class PlatformSelectionBehaviors_androidKt {
    private static final ProvidableCompositionLocal<o22> LocalTextClassifierCoroutineContext = CompositionLocalKt.staticCompositionLocalOf(new y70(1));
    private static fm3<? super o22, ? super Context, ? super SelectedTextType, ? super LocaleList, ? extends PlatformSelectionBehaviors> PlatformSelectionBehaviorsFactory = new k96();
    private static final long TEXT_CLASSIFICATION_TIMEOUT_MILLIS = 200;
    private static final long TEXT_CLASSIFIER_INITIALIZATION_TIMEOUT_MILLIS = 300;

    /* JADX INFO: Access modifiers changed from: private */
    public static final o22 LocalTextClassifierCoroutineContext$lambda$0() {
        oi2 oi2Var = qo2.a;
        return sh2.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlatformSelectionBehaviorsImpl PlatformSelectionBehaviorsFactory$lambda$0(o22 o22Var, Context context, SelectedTextType selectedTextType, LocaleList localeList) {
        return new PlatformSelectionBehaviorsImpl(o22Var, context, selectedTextType, localeList);
    }

    /* JADX INFO: renamed from: addPlatformTextContextMenuItems-71BSaZU, reason: not valid java name */
    public static final void m2981addPlatformTextContextMenuItems71BSaZU(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, boolean z, CharSequence charSequence, TextRange textRange, PlatformSelectionBehaviors platformSelectionBehaviors, nl3<? super TextContextMenuBuilderScope, j59> nl3Var) {
        if (Build.VERSION.SDK_INT >= 28 && charSequence != null && textRange != null && platformSelectionBehaviors != null && (platformSelectionBehaviors instanceof PlatformSelectionBehaviorsImpl)) {
            ((PlatformSelectionBehaviorsImpl) platformSelectionBehaviors).m2978addSmartSelectionTextContextMenuItemsYmzfRxQ$foundation(textContextMenuBuilderScope, charSequence, textRange.m8495unboximpl(), nl3Var);
            ProcessText_androidKt.m2634addProcessedTextContextMenuItemsUAq72N0(textContextMenuBuilderScope, context, z, charSequence, textRange.m8495unboximpl());
            return;
        }
        nl3Var.invoke(textContextMenuBuilderScope);
        if (charSequence == null || textRange == null) {
            return;
        }
        ProcessText_androidKt.m2634addProcessedTextContextMenuItemsUAq72N0(textContextMenuBuilderScope, context, z, charSequence, textRange.m8495unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: canReuse-h5sm0ck, reason: not valid java name */
    public static final boolean m2982canReuseh5sm0ck(TextClassificationResult textClassificationResult, CharSequence charSequence, long j) {
        return TextRange.m8484equalsimpl0(j, textClassificationResult.m3027getSelectiond9O1mEE()) && aa4.e(charSequence, textClassificationResult.getText());
    }

    public static final ProvidableCompositionLocal<o22> getLocalTextClassifierCoroutineContext() {
        return LocalTextClassifierCoroutineContext;
    }

    public static final fm3<o22, Context, SelectedTextType, LocaleList, PlatformSelectionBehaviors> getPlatformSelectionBehaviorsFactory() {
        return PlatformSelectionBehaviorsFactory;
    }

    public static /* synthetic */ void getPlatformSelectionBehaviorsFactory$annotations() {
    }

    public static final PlatformSelectionBehaviors rememberPlatformSelectionBehaviors(SelectedTextType selectedTextType, LocaleList localeList, Composer composer, int i) {
        composer.startReplaceGroup(430530635);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(430530635, i, -1, "androidx.compose.foundation.text.selection.rememberPlatformSelectionBehaviors (PlatformSelectionBehaviors.android.kt:95)");
        }
        if (Build.VERSION.SDK_INT < 28) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceGroup();
            return null;
        }
        Context context = (Context) composer.consume(AndroidCompositionLocals_androidKt.getLocalContext());
        o22 o22Var = (o22) composer.consume(LocalTextClassifierCoroutineContext);
        boolean zChanged = composer.changed(o22Var) | composer.changed(context) | ((((i & 14) ^ 6) > 4 && composer.changed(selectedTextType.ordinal())) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer.changed(localeList)) || (i & 48) == 32);
        PlatformSelectionBehaviors platformSelectionBehaviorsRememberedValue = composer.rememberedValue();
        if (zChanged || platformSelectionBehaviorsRememberedValue == Composer.Companion.getEmpty()) {
            platformSelectionBehaviorsRememberedValue = PlatformSelectionBehaviorsFactory.invoke(o22Var, context, selectedTextType, localeList);
            composer.updateRememberedValue(platformSelectionBehaviorsRememberedValue);
        }
        PlatformSelectionBehaviors platformSelectionBehaviors = (PlatformSelectionBehaviors) platformSelectionBehaviorsRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return platformSelectionBehaviors;
    }

    public static final void setPlatformSelectionBehaviorsFactory(fm3<? super o22, ? super Context, ? super SelectedTextType, ? super LocaleList, ? extends PlatformSelectionBehaviors> fm3Var) {
        PlatformSelectionBehaviorsFactory = fm3Var;
    }
}

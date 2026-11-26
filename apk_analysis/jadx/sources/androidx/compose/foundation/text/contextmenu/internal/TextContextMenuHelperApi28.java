package androidx.compose.foundation.text.contextmenu.internal;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuHelperApi28 {
    public static final TextContextMenuHelperApi28 INSTANCE = new TextContextMenuHelperApi28();

    private TextContextMenuHelperApi28() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void IconBox(final Icon icon, Composer composer, final int i) {
        int i2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        bm3<? super Composer, ? super Integer, j59> bm3Var;
        Composer composerStartRestartGroup = composer.startRestartGroup(2116504409);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(icon) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(this) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2116504409, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28.IconBox (DefaultTextContextMenuDropdownProvider.android.kt:267)");
            }
            Context context = (Context) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
            boolean zChanged = composerStartRestartGroup.changed(icon) | composerStartRestartGroup.changed(context);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = icon.loadDrawable(context);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Drawable drawable = (Drawable) objRememberedValue;
            if (drawable == null) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup == null) {
                    return;
                } else {
                    bm3Var = new bm3() { // from class: androidx.compose.foundation.text.contextmenu.internal.d
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return TextContextMenuHelperApi28.IconBox$lambda$1(this.b, icon, i, (Composer) obj, iIntValue);
                        }
                    };
                }
            } else {
                IconBox(drawable, composerStartRestartGroup, i2 & 112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
        composerStartRestartGroup.skipToGroupEnd();
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            bm3Var = new bm3() { // from class: androidx.compose.foundation.text.contextmenu.internal.e
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextContextMenuHelperApi28.IconBox$lambda$2(this.b, icon, i, (Composer) obj, iIntValue);
                }
            };
            scopeUpdateScopeEndRestartGroup.updateScope(bm3Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IconBox$lambda$1(TextContextMenuHelperApi28 textContextMenuHelperApi28, Icon icon, int i, Composer composer, int i2) {
        textContextMenuHelperApi28.IconBox(icon, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IconBox$lambda$2(TextContextMenuHelperApi28 textContextMenuHelperApi28, Icon icon, int i, Composer composer, int i2) {
        textContextMenuHelperApi28.IconBox(icon, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IconBox$lambda$3$0(Drawable drawable, DrawScope drawScope) {
        Canvas canvas = drawScope.getDrawContext().getCanvas();
        drawable.setBounds(0, 0, (int) Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)), (int) Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        drawable.draw(AndroidCanvas_androidKt.getNativeCanvas(canvas));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IconBox$lambda$4(TextContextMenuHelperApi28 textContextMenuHelperApi28, Drawable drawable, int i, Composer composer, int i2) {
        textContextMenuHelperApi28.IconBox(drawable, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String textClassificationItem$lambda$0(TextClassification textClassification, Composer composer, int i) {
        composer.startReplaceGroup(950061013);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(950061013, i, -1, "androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28.textClassificationItem.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:246)");
        }
        String strValueOf = String.valueOf(textClassification.getLabel());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return strValueOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 textClassificationItem$lambda$2(Context context, TextClassification textClassification) throws PendingIntent.CanceledException {
        TextClassificationHelperApi28.INSTANCE.sendLegacyIntent(context, textClassification);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String textClassificationItem$lambda$3(RemoteAction remoteAction, Composer composer, int i) {
        composer.startReplaceGroup(-1376593684);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1376593684, i, -1, "androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28.textClassificationItem.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:254)");
        }
        String string = remoteAction.getTitle().toString();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 textClassificationItem$lambda$4(RemoteAction remoteAction) throws PendingIntent.CanceledException {
        TextClassificationHelperApi28.INSTANCE.sendPendingIntent(remoteAction.getActionIntent());
        return j59.a;
    }

    public final void textClassificationItem(ContextMenuScope contextMenuScope, final Context context, TextContextMenuTextClassificationItem textContextMenuTextClassificationItem) {
        if (context == null) {
            return;
        }
        int index = textContextMenuTextClassificationItem.getIndex();
        final TextClassification textClassification = textContextMenuTextClassificationItem.getTextClassification();
        if (index < 0) {
            bm3 bm3Var = new bm3() { // from class: androidx.compose.foundation.text.contextmenu.internal.f
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextContextMenuHelperApi28.textClassificationItem$lambda$0(textClassification, (Composer) obj, iIntValue);
                }
            };
            final Drawable icon = textClassification.getIcon();
            ContextMenuScope.item$default(contextMenuScope, bm3Var, null, false, icon != null ? ComposableLambdaKt.composableLambdaInstance(-1123224187, true, new dm3<Color, Composer, Integer, j59>() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$textClassificationItem$2$1
                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(Color color, Composer composer, Integer num) {
                    m2645invokeek8zF_U(color.m6242unboximpl(), composer, num.intValue());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-ek8zF_U, reason: not valid java name */
                public final void m2645invokeek8zF_U(long j, Composer composer, int i) {
                    if (!composer.shouldExecute((i & 17) != 16, i & 1)) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1123224187, i, -1, "androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28.textClassificationItem.<anonymous>.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:247)");
                    }
                    TextContextMenuHelperApi28.INSTANCE.IconBox(icon, composer, 48);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }) : null, new ll3() { // from class: androidx.compose.foundation.text.contextmenu.internal.g
                @Override // defpackage.ll3
                public final Object invoke() {
                    return TextContextMenuHelperApi28.textClassificationItem$lambda$2(context, textClassification);
                }
            }, 6, null);
        } else {
            final RemoteAction remoteAction = textClassification.getActions().get(index);
            ContextMenuScope.item$default(contextMenuScope, new bm3() { // from class: androidx.compose.foundation.text.contextmenu.internal.h
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextContextMenuHelperApi28.textClassificationItem$lambda$3(remoteAction, (Composer) obj, iIntValue);
                }
            }, null, false, ((index == 0) || remoteAction.shouldShowIcon()) ? ComposableLambdaKt.composableLambdaInstance(-1261173016, true, new dm3<Color, Composer, Integer, j59>() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28.textClassificationItem.5
                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(Color color, Composer composer, Integer num) {
                    m2646invokeek8zF_U(color.m6242unboximpl(), composer, num.intValue());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-ek8zF_U, reason: not valid java name */
                public final void m2646invokeek8zF_U(long j, Composer composer, int i) {
                    if (!composer.shouldExecute((i & 17) != 16, i & 1)) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1261173016, i, -1, "androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28.textClassificationItem.<anonymous> (DefaultTextContextMenuDropdownProvider.android.kt:257)");
                    }
                    TextContextMenuHelperApi28.INSTANCE.IconBox(remoteAction.getIcon(), composer, 48);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }) : null, new ll3() { // from class: androidx.compose.foundation.text.contextmenu.internal.i
                @Override // defpackage.ll3
                public final Object invoke() {
                    return TextContextMenuHelperApi28.textClassificationItem$lambda$4(remoteAction);
                }
            }, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void IconBox(final Drawable drawable, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(257732500);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(drawable) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 3) != 2, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(257732500, i2, -1, "androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28.IconBox (DefaultTextContextMenuDropdownProvider.android.kt:274)");
            }
            Modifier modifierM2099size3ABfNKs = SizeKt.m2099size3ABfNKs(Modifier.Companion, ContextMenuSpec.INSTANCE.m1410getIconSizeD9Ej5fM());
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(drawable);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: androidx.compose.foundation.text.contextmenu.internal.j
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return TextContextMenuHelperApi28.IconBox$lambda$3$0(drawable, (DrawScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            BoxKt.Box(DrawModifierKt.drawBehind(modifierM2099size3ABfNKs, (nl3) objRememberedValue), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: androidx.compose.foundation.text.contextmenu.internal.k
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return TextContextMenuHelperApi28.IconBox$lambda$4(this.b, drawable, i, (Composer) obj, iIntValue);
                }
            });
        }
    }
}

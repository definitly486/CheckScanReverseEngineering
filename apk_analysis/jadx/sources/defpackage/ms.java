package defpackage;

import android.content.Context;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.lifecycle.Lifecycle;
import androidx.media3.exoplayer.RendererCapabilities;

/* JADX INFO: loaded from: classes2.dex */
public final class ms {
    public static final void a(final ts tsVar, final Modifier modifier, final nl3 nl3Var, final nl3 nl3Var2, final Alignment alignment, final ContentScale contentScale, final int i, Composer composer, final int i2, final int i3) {
        int i4;
        nl3 nl3Var3;
        nl3 nl3Var4;
        Alignment alignment2;
        int i5;
        int i6;
        b24 b24Var;
        ss ssVar;
        Composer composerStartRestartGroup = composer.startRestartGroup(1236588022);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(tsVar) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed((Object) null) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            nl3Var3 = nl3Var;
            i4 |= composerStartRestartGroup.changedInstance(nl3Var3) ? 2048 : 1024;
        } else {
            nl3Var3 = nl3Var;
        }
        if ((i2 & 24576) == 0) {
            nl3Var4 = nl3Var2;
            i4 |= composerStartRestartGroup.changedInstance(nl3Var4) ? 16384 : 8192;
        } else {
            nl3Var4 = nl3Var2;
        }
        if ((196608 & i2) == 0) {
            alignment2 = alignment;
            i4 |= composerStartRestartGroup.changed(alignment2) ? 131072 : 65536;
        } else {
            alignment2 = alignment;
        }
        if ((1572864 & i2) == 0) {
            i4 |= composerStartRestartGroup.changed(contentScale) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= composerStartRestartGroup.changed(1.0f) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= composerStartRestartGroup.changed((Object) null) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((805306368 & i2) == 0) {
            i5 = i;
            i4 |= composerStartRestartGroup.changed(i5) ? 536870912 : 268435456;
        } else {
            i5 = i;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (composerStartRestartGroup.changed(true) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if (composerStartRestartGroup.shouldExecute(((306783379 & i4) == 306783378 && (i6 & 3) == 2) ? false : true, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1236588022, i4, i6, "coil3.compose.AsyncImage (AsyncImage.kt:152)");
            }
            Object obj = tsVar.a;
            int i7 = (i4 >> 15) & 112;
            int i8 = nb9.b;
            composerStartRestartGroup.startReplaceGroup(-329318062);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-329318062, i7, -1, "coil3.compose.internal.requestOfWithSizeResolver (utils.kt:61)");
            }
            if (obj instanceof b24) {
                composerStartRestartGroup.startReplaceGroup(-1008942344);
                b24Var = (b24) obj;
                if (b24Var.s.d != null) {
                    composerStartRestartGroup.startReplaceGroup(-1008902292);
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1008854118);
                    w18 w18VarA = nb9.a(contentScale, composerStartRestartGroup, (i7 >> 3) & 14);
                    boolean zChanged = composerStartRestartGroup.changed(obj) | composerStartRestartGroup.changed(w18VarA);
                    Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                        b24.a aVarA = b24.a(b24Var);
                        aVarA.i = w18VarA;
                        objRememberedValue = aVarA.a();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    b24Var = (b24) objRememberedValue;
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            } else {
                composerStartRestartGroup.startReplaceGroup(-1008595950);
                Context context = (Context) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext());
                w18 w18VarA2 = nb9.a(contentScale, composerStartRestartGroup, (i7 >> 3) & 14);
                boolean zChanged2 = composerStartRestartGroup.changed(context) | composerStartRestartGroup.changed(obj) | composerStartRestartGroup.changed(w18VarA2);
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    b24.a aVar = new b24.a(context);
                    aVar.c = obj;
                    aVar.i = w18VarA2;
                    objRememberedValue2 = aVar.a();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                b24Var = (b24) objRememberedValue2;
                composerStartRestartGroup.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            composerStartRestartGroup.endReplaceGroup();
            b24 b24Var2 = b24Var;
            Object obj2 = b24Var2.b;
            if (obj2 instanceof b24.a) {
                fg.c("Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?");
                return;
            }
            if (obj2 instanceof ImageBitmap) {
                nb9.c("ImageBitmap");
                throw null;
            }
            if (obj2 instanceof ImageVector) {
                nb9.c("ImageVector");
                throw null;
            }
            if (obj2 instanceof Painter) {
                nb9.c("Painter");
                throw null;
            }
            if (b24Var2.c != null) {
                fg.c("request.target must be null.");
                return;
            }
            if (((Lifecycle) c53.a(b24Var2, f24.e)) != null) {
                fg.c("request.lifecycle must be null.");
                return;
            }
            r14 r14Var = tsVar.c;
            ns nsVar = tsVar.b;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2074249623, 0, -1, "coil3.compose.internal.previewHandler (utils.kt:218)");
            }
            if (((Boolean) composerStartRestartGroup.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue()) {
                composerStartRestartGroup.startReplaceGroup(2019030948);
                ssVar = (ss) composerStartRestartGroup.consume(bt4.a);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(2019088453);
                composerStartRestartGroup.endReplaceGroup();
                ssVar = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            Modifier modifierThen = modifier.then(new fy1(b24Var2, r14Var, nsVar, nl3Var3, nl3Var4, i5, alignment2, contentScale, ssVar));
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            Updater.m5363setimpl(composerM5355constructorimpl, nb9.a.a, companion.getSetMeasurePolicy());
            Updater.m5363setimpl(composerM5355constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            bm3<ComposeUiNode, Integer, j59> setCompositeKeyHash = companion.getSetCompositeKeyHash();
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(iHashCode))) {
                dc.b(setCompositeKeyHash, iHashCode, composerM5355constructorimpl, iHashCode);
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ls
                @Override // defpackage.bm3
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    ms.a(tsVar, modifier, nl3Var, nl3Var2, alignment, contentScale, i, (Composer) obj3, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
                    return j59.a;
                }
            });
        }
    }
}

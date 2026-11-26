package androidx.compose.foundation;

import androidx.compose.foundation.ImageKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.BitmapPainterKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.m14;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0114  */
    /* JADX WARN: Code duplicated, block: B:102:0x0122  */
    /* JADX WARN: Code duplicated, block: B:103:0x0124  */
    /* JADX WARN: Code duplicated, block: B:106:0x012b  */
    /* JADX WARN: Code duplicated, block: B:110:0x0136  */
    /* JADX WARN: Code duplicated, block: B:112:0x0149  */
    /* JADX WARN: Code duplicated, block: B:115:0x0178  */
    /* JADX WARN: Code duplicated, block: B:118:0x019b  */
    /* JADX WARN: Code duplicated, block: B:121:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:122:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:125:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:127:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:130:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0057  */
    /* JADX WARN: Code duplicated, block: B:35:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:0x006b  */
    /* JADX WARN: Code duplicated, block: B:44:0x0072  */
    /* JADX WARN: Code duplicated, block: B:46:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:51:0x0086  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x0096  */
    /* JADX WARN: Code duplicated, block: B:61:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:67:0x00af  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:72:0x00be  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x00da  */
    /* JADX WARN: Code duplicated, block: B:82:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:95:0x0101  */
    /* JADX WARN: Code duplicated, block: B:98:0x0109  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void Image(final Painter painter, final String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        int i5;
        int i6;
        ContentScale contentScale2;
        int i7;
        int i8;
        float f2;
        int i9;
        int i10;
        int i11;
        boolean z;
        final Alignment alignment2;
        final ColorFilter colorFilter2;
        final Modifier modifier3;
        final ContentScale contentScale3;
        final float f3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        Alignment center;
        ContentScale fit;
        float f4;
        ColorFilter colorFilter3;
        boolean z2;
        Modifier modifierSemantics$default;
        Object objRememberedValue;
        ll3<ComposeUiNode> constructor;
        boolean z3;
        Object objRememberedValue2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1142754848);
        if ((i & 6) == 0) {
            i3 = ((i & 8) == 0 ? composerStartRestartGroup.changed(painter) : composerStartRestartGroup.changedInstance(painter) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(str) ? 32 : 16;
        }
        int i12 = i2 & 4;
        if (i12 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            i4 = i2 & 8;
            if (i4 != 0) {
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(alignment)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 16;
                if (i6 != 0) {
                    if ((i & 24576) == 0) {
                        contentScale2 = contentScale;
                        if (composerStartRestartGroup.changed(contentScale2)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 32;
                    if (i8 != 0) {
                        if ((196608 & i) == 0) {
                            f2 = f;
                            if (composerStartRestartGroup.changed(f2)) {
                                i9 = 131072;
                            } else {
                                i9 = 65536;
                            }
                            i3 |= i9;
                        }
                        i10 = i2 & 64;
                        if (i10 != 0) {
                            i3 |= 1572864;
                        } else if ((i & 1572864) == 0) {
                            if (composerStartRestartGroup.changed(colorFilter)) {
                                i11 = 1048576;
                            } else {
                                i11 = 524288;
                            }
                            i3 |= i11;
                        }
                        if ((i3 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                            if (i12 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i4 != 0) {
                                center = Alignment.Companion.getCenter();
                            } else {
                                center = alignment;
                            }
                            if (i6 != 0) {
                                fit = ContentScale.Companion.getFit();
                            } else {
                                fit = contentScale2;
                            }
                            if (i8 != 0) {
                                f4 = 1.0f;
                            } else {
                                f4 = f2;
                            }
                            if (i10 != 0) {
                                colorFilter3 = null;
                            } else {
                                colorFilter3 = colorFilter;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                            }
                            if (str != null) {
                                composerStartRestartGroup.startReplaceGroup(1899222916);
                                Modifier.Companion companion = Modifier.Companion;
                                if ((i3 & 112) == 32) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (!z3 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    z2 = false;
                                    objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                } else {
                                    z2 = false;
                                }
                                modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, z2, (nl3) objRememberedValue2, 1, null);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                z2 = false;
                                composerStartRestartGroup.startReplaceGroup(1899381698);
                                composerStartRestartGroup.endReplaceGroup();
                                modifierSemantics$default = Modifier.Companion;
                            }
                            boolean z4 = z2;
                            Modifier modifier5 = modifier4;
                            Modifier modifierPaint$default = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
                            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z4 ? 1 : 0));
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default);
                            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                            constructor = companion2.getConstructor();
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
                            Updater.m5363setimpl(composerM5355constructorimpl, measurePolicy, companion2.getSetMeasurePolicy());
                            Updater.m5363setimpl(composerM5355constructorimpl, currentCompositionLocalMap, companion2.getSetResolvedCompositionLocals());
                            Updater.m5361reconcileimpl(composerM5355constructorimpl, companion2.getApplyOnDeactivatedNodeAssertion());
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
                            Updater.m5363setimpl(composerM5355constructorimpl, Integer.valueOf(iHashCode), companion2.getSetCompositeKeyHash());
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            colorFilter2 = colorFilter3;
                            f3 = f4;
                            contentScale3 = fit;
                            alignment2 = center;
                            modifier3 = modifier5;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            alignment2 = alignment;
                            colorFilter2 = colorFilter;
                            modifier3 = modifier2;
                            contentScale3 = contentScale2;
                            f3 = f2;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    f2 = f;
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(colorFilter)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            center = Alignment.Companion.getCenter();
                        } else {
                            center = alignment;
                        }
                        if (i6 != 0) {
                            fit = ContentScale.Companion.getFit();
                        } else {
                            fit = contentScale2;
                        }
                        if (i8 != 0) {
                            f4 = 1.0f;
                        } else {
                            f4 = f2;
                        }
                        if (i10 != 0) {
                            colorFilter3 = null;
                        } else {
                            colorFilter3 = colorFilter;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                        }
                        if (str != null) {
                            composerStartRestartGroup.startReplaceGroup(1899222916);
                            Modifier.Companion companion3 = Modifier.Companion;
                            if ((i3 & 112) == 32) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z3) {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            modifierSemantics$default = SemanticsModifierKt.semantics$default(companion3, z2, (nl3) objRememberedValue2, 1, null);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            z2 = false;
                            composerStartRestartGroup.startReplaceGroup(1899381698);
                            composerStartRestartGroup.endReplaceGroup();
                            modifierSemantics$default = Modifier.Companion;
                        }
                        boolean z5 = z2;
                        Modifier modifier6 = modifier4;
                        Modifier modifierPaint$default2 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue;
                        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z5 ? 1 : 0));
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default2);
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                        constructor = companion4.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        Updater.m5363setimpl(composerM5355constructorimpl2, measurePolicy2, companion4.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl2, currentCompositionLocalMap2, companion4.getSetResolvedCompositionLocals());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl2, companion4.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                        Updater.m5363setimpl(composerM5355constructorimpl2, Integer.valueOf(iHashCode2), companion4.getSetCompositeKeyHash());
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorFilter2 = colorFilter3;
                        f3 = f4;
                        contentScale3 = fit;
                        alignment2 = center;
                        modifier3 = modifier6;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        alignment2 = alignment;
                        colorFilter2 = colorFilter;
                        modifier3 = modifier2;
                        contentScale3 = contentScale2;
                        f3 = f2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                contentScale2 = contentScale;
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        f2 = f;
                        if (composerStartRestartGroup.changed(f2)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(colorFilter)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            center = Alignment.Companion.getCenter();
                        } else {
                            center = alignment;
                        }
                        if (i6 != 0) {
                            fit = ContentScale.Companion.getFit();
                        } else {
                            fit = contentScale2;
                        }
                        if (i8 != 0) {
                            f4 = 1.0f;
                        } else {
                            f4 = f2;
                        }
                        if (i10 != 0) {
                            colorFilter3 = null;
                        } else {
                            colorFilter3 = colorFilter;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                        }
                        if (str != null) {
                            composerStartRestartGroup.startReplaceGroup(1899222916);
                            Modifier.Companion companion5 = Modifier.Companion;
                            if ((i3 & 112) == 32) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z3) {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            modifierSemantics$default = SemanticsModifierKt.semantics$default(companion5, z2, (nl3) objRememberedValue2, 1, null);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            z2 = false;
                            composerStartRestartGroup.startReplaceGroup(1899381698);
                            composerStartRestartGroup.endReplaceGroup();
                            modifierSemantics$default = Modifier.Companion;
                        }
                        boolean z6 = z2;
                        Modifier modifier7 = modifier4;
                        Modifier modifierPaint$default3 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        MeasurePolicy measurePolicy3 = (MeasurePolicy) objRememberedValue;
                        int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z6 ? 1 : 0));
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default3);
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                        constructor = companion6.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        Updater.m5363setimpl(composerM5355constructorimpl3, measurePolicy3, companion6.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl3, currentCompositionLocalMap3, companion6.getSetResolvedCompositionLocals());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl3, companion6.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion6.getSetModifier());
                        Updater.m5363setimpl(composerM5355constructorimpl3, Integer.valueOf(iHashCode3), companion6.getSetCompositeKeyHash());
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorFilter2 = colorFilter3;
                        f3 = f4;
                        contentScale3 = fit;
                        alignment2 = center;
                        modifier3 = modifier7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        alignment2 = alignment;
                        colorFilter2 = colorFilter;
                        modifier3 = modifier2;
                        contentScale3 = contentScale2;
                        f3 = f2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                f2 = f;
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(colorFilter)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        center = Alignment.Companion.getCenter();
                    } else {
                        center = alignment;
                    }
                    if (i6 != 0) {
                        fit = ContentScale.Companion.getFit();
                    } else {
                        fit = contentScale2;
                    }
                    if (i8 != 0) {
                        f4 = 1.0f;
                    } else {
                        f4 = f2;
                    }
                    if (i10 != 0) {
                        colorFilter3 = null;
                    } else {
                        colorFilter3 = colorFilter;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                    }
                    if (str != null) {
                        composerStartRestartGroup.startReplaceGroup(1899222916);
                        Modifier.Companion companion7 = Modifier.Companion;
                        if ((i3 & 112) == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        modifierSemantics$default = SemanticsModifierKt.semantics$default(companion7, z2, (nl3) objRememberedValue2, 1, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        z2 = false;
                        composerStartRestartGroup.startReplaceGroup(1899381698);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierSemantics$default = Modifier.Companion;
                    }
                    boolean z7 = z2;
                    Modifier modifier8 = modifier4;
                    Modifier modifierPaint$default4 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy4 = (MeasurePolicy) objRememberedValue;
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z7 ? 1 : 0));
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default4);
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                    constructor = companion8.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl4, measurePolicy4, companion8.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl4, currentCompositionLocalMap4, companion8.getSetResolvedCompositionLocals());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl4, companion8.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, companion8.getSetModifier());
                    Updater.m5363setimpl(composerM5355constructorimpl4, Integer.valueOf(iHashCode4), companion8.getSetCompositeKeyHash());
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorFilter2 = colorFilter3;
                    f3 = f4;
                    contentScale3 = fit;
                    alignment2 = center;
                    modifier3 = modifier8;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    alignment2 = alignment;
                    colorFilter2 = colorFilter;
                    modifier3 = modifier2;
                    contentScale3 = contentScale2;
                    f3 = f2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    contentScale2 = contentScale;
                    if (composerStartRestartGroup.changed(contentScale2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        f2 = f;
                        if (composerStartRestartGroup.changed(f2)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(colorFilter)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            center = Alignment.Companion.getCenter();
                        } else {
                            center = alignment;
                        }
                        if (i6 != 0) {
                            fit = ContentScale.Companion.getFit();
                        } else {
                            fit = contentScale2;
                        }
                        if (i8 != 0) {
                            f4 = 1.0f;
                        } else {
                            f4 = f2;
                        }
                        if (i10 != 0) {
                            colorFilter3 = null;
                        } else {
                            colorFilter3 = colorFilter;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                        }
                        if (str != null) {
                            composerStartRestartGroup.startReplaceGroup(1899222916);
                            Modifier.Companion companion9 = Modifier.Companion;
                            if ((i3 & 112) == 32) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z3) {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            modifierSemantics$default = SemanticsModifierKt.semantics$default(companion9, z2, (nl3) objRememberedValue2, 1, null);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            z2 = false;
                            composerStartRestartGroup.startReplaceGroup(1899381698);
                            composerStartRestartGroup.endReplaceGroup();
                            modifierSemantics$default = Modifier.Companion;
                        }
                        boolean z8 = z2;
                        Modifier modifier9 = modifier4;
                        Modifier modifierPaint$default5 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        MeasurePolicy measurePolicy5 = (MeasurePolicy) objRememberedValue;
                        int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z8 ? 1 : 0));
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default5);
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                        constructor = companion10.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl5 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        Updater.m5363setimpl(composerM5355constructorimpl5, measurePolicy5, companion10.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl5, currentCompositionLocalMap5, companion10.getSetResolvedCompositionLocals());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl5, companion10.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, companion10.getSetModifier());
                        Updater.m5363setimpl(composerM5355constructorimpl5, Integer.valueOf(iHashCode5), companion10.getSetCompositeKeyHash());
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorFilter2 = colorFilter3;
                        f3 = f4;
                        contentScale3 = fit;
                        alignment2 = center;
                        modifier3 = modifier9;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        alignment2 = alignment;
                        colorFilter2 = colorFilter;
                        modifier3 = modifier2;
                        contentScale3 = contentScale2;
                        f3 = f2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                f2 = f;
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(colorFilter)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        center = Alignment.Companion.getCenter();
                    } else {
                        center = alignment;
                    }
                    if (i6 != 0) {
                        fit = ContentScale.Companion.getFit();
                    } else {
                        fit = contentScale2;
                    }
                    if (i8 != 0) {
                        f4 = 1.0f;
                    } else {
                        f4 = f2;
                    }
                    if (i10 != 0) {
                        colorFilter3 = null;
                    } else {
                        colorFilter3 = colorFilter;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                    }
                    if (str != null) {
                        composerStartRestartGroup.startReplaceGroup(1899222916);
                        Modifier.Companion companion11 = Modifier.Companion;
                        if ((i3 & 112) == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        modifierSemantics$default = SemanticsModifierKt.semantics$default(companion11, z2, (nl3) objRememberedValue2, 1, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        z2 = false;
                        composerStartRestartGroup.startReplaceGroup(1899381698);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierSemantics$default = Modifier.Companion;
                    }
                    boolean z9 = z2;
                    Modifier modifier10 = modifier4;
                    Modifier modifierPaint$default6 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy6 = (MeasurePolicy) objRememberedValue;
                    int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z9 ? 1 : 0));
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default6);
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                    constructor = companion12.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl6, measurePolicy6, companion12.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl6, currentCompositionLocalMap6, companion12.getSetResolvedCompositionLocals());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl6, companion12.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, companion12.getSetModifier());
                    Updater.m5363setimpl(composerM5355constructorimpl6, Integer.valueOf(iHashCode6), companion12.getSetCompositeKeyHash());
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorFilter2 = colorFilter3;
                    f3 = f4;
                    contentScale3 = fit;
                    alignment2 = center;
                    modifier3 = modifier10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    alignment2 = alignment;
                    colorFilter2 = colorFilter;
                    modifier3 = modifier2;
                    contentScale3 = contentScale2;
                    f3 = f2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            contentScale2 = contentScale;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    f2 = f;
                    if (composerStartRestartGroup.changed(f2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(colorFilter)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        center = Alignment.Companion.getCenter();
                    } else {
                        center = alignment;
                    }
                    if (i6 != 0) {
                        fit = ContentScale.Companion.getFit();
                    } else {
                        fit = contentScale2;
                    }
                    if (i8 != 0) {
                        f4 = 1.0f;
                    } else {
                        f4 = f2;
                    }
                    if (i10 != 0) {
                        colorFilter3 = null;
                    } else {
                        colorFilter3 = colorFilter;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                    }
                    if (str != null) {
                        composerStartRestartGroup.startReplaceGroup(1899222916);
                        Modifier.Companion companion13 = Modifier.Companion;
                        if ((i3 & 112) == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        modifierSemantics$default = SemanticsModifierKt.semantics$default(companion13, z2, (nl3) objRememberedValue2, 1, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        z2 = false;
                        composerStartRestartGroup.startReplaceGroup(1899381698);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierSemantics$default = Modifier.Companion;
                    }
                    boolean z10 = z2;
                    Modifier modifier11 = modifier4;
                    Modifier modifierPaint$default7 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy7 = (MeasurePolicy) objRememberedValue;
                    int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z10 ? 1 : 0));
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default7);
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                    constructor = companion14.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl7 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl7, measurePolicy7, companion14.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl7, currentCompositionLocalMap7, companion14.getSetResolvedCompositionLocals());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl7, companion14.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, companion14.getSetModifier());
                    Updater.m5363setimpl(composerM5355constructorimpl7, Integer.valueOf(iHashCode7), companion14.getSetCompositeKeyHash());
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorFilter2 = colorFilter3;
                    f3 = f4;
                    contentScale3 = fit;
                    alignment2 = center;
                    modifier3 = modifier11;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    alignment2 = alignment;
                    colorFilter2 = colorFilter;
                    modifier3 = modifier2;
                    contentScale3 = contentScale2;
                    f3 = f2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f2 = f;
            i10 = i2 & 64;
            if (i10 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(colorFilter)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i3 |= i11;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    center = Alignment.Companion.getCenter();
                } else {
                    center = alignment;
                }
                if (i6 != 0) {
                    fit = ContentScale.Companion.getFit();
                } else {
                    fit = contentScale2;
                }
                if (i8 != 0) {
                    f4 = 1.0f;
                } else {
                    f4 = f2;
                }
                if (i10 != 0) {
                    colorFilter3 = null;
                } else {
                    colorFilter3 = colorFilter;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                }
                if (str != null) {
                    composerStartRestartGroup.startReplaceGroup(1899222916);
                    Modifier.Companion companion15 = Modifier.Companion;
                    if ((i3 & 112) == 32) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    modifierSemantics$default = SemanticsModifierKt.semantics$default(companion15, z2, (nl3) objRememberedValue2, 1, null);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    z2 = false;
                    composerStartRestartGroup.startReplaceGroup(1899381698);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierSemantics$default = Modifier.Companion;
                }
                boolean z11 = z2;
                Modifier modifier12 = modifier4;
                Modifier modifierPaint$default8 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MeasurePolicy measurePolicy8 = (MeasurePolicy) objRememberedValue;
                int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z11 ? 1 : 0));
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default8);
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                constructor = companion16.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
                Updater.m5363setimpl(composerM5355constructorimpl8, measurePolicy8, companion16.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl8, currentCompositionLocalMap8, companion16.getSetResolvedCompositionLocals());
                Updater.m5361reconcileimpl(composerM5355constructorimpl8, companion16.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, companion16.getSetModifier());
                Updater.m5363setimpl(composerM5355constructorimpl8, Integer.valueOf(iHashCode8), companion16.getSetCompositeKeyHash());
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorFilter2 = colorFilter3;
                f3 = f4;
                contentScale3 = fit;
                alignment2 = center;
                modifier3 = modifier12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                alignment2 = alignment;
                colorFilter2 = colorFilter;
                modifier3 = modifier2;
                contentScale3 = contentScale2;
                f3 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        i4 = i2 & 8;
        if (i4 != 0) {
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(alignment)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i3 |= i5;
            }
            i6 = i2 & 16;
            if (i6 != 0) {
                if ((i & 24576) == 0) {
                    contentScale2 = contentScale;
                    if (composerStartRestartGroup.changed(contentScale2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 32;
                if (i8 != 0) {
                    if ((196608 & i) == 0) {
                        f2 = f;
                        if (composerStartRestartGroup.changed(f2)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 64;
                    if (i10 != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(colorFilter)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                        if (i12 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i4 != 0) {
                            center = Alignment.Companion.getCenter();
                        } else {
                            center = alignment;
                        }
                        if (i6 != 0) {
                            fit = ContentScale.Companion.getFit();
                        } else {
                            fit = contentScale2;
                        }
                        if (i8 != 0) {
                            f4 = 1.0f;
                        } else {
                            f4 = f2;
                        }
                        if (i10 != 0) {
                            colorFilter3 = null;
                        } else {
                            colorFilter3 = colorFilter;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                        }
                        if (str != null) {
                            composerStartRestartGroup.startReplaceGroup(1899222916);
                            Modifier.Companion companion17 = Modifier.Companion;
                            if ((i3 & 112) == 32) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z3) {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                z2 = false;
                                objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            modifierSemantics$default = SemanticsModifierKt.semantics$default(companion17, z2, (nl3) objRememberedValue2, 1, null);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            z2 = false;
                            composerStartRestartGroup.startReplaceGroup(1899381698);
                            composerStartRestartGroup.endReplaceGroup();
                            modifierSemantics$default = Modifier.Companion;
                        }
                        boolean z12 = z2;
                        Modifier modifier13 = modifier4;
                        Modifier modifierPaint$default9 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        MeasurePolicy measurePolicy9 = (MeasurePolicy) objRememberedValue;
                        int iHashCode9 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z12 ? 1 : 0));
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default9);
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                        constructor = companion18.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl9 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        Updater.m5363setimpl(composerM5355constructorimpl9, measurePolicy9, companion18.getSetMeasurePolicy());
                        Updater.m5363setimpl(composerM5355constructorimpl9, currentCompositionLocalMap9, companion18.getSetResolvedCompositionLocals());
                        Updater.m5361reconcileimpl(composerM5355constructorimpl9, companion18.getApplyOnDeactivatedNodeAssertion());
                        Updater.m5363setimpl(composerM5355constructorimpl9, modifierMaterializeModifier9, companion18.getSetModifier());
                        Updater.m5363setimpl(composerM5355constructorimpl9, Integer.valueOf(iHashCode9), companion18.getSetCompositeKeyHash());
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        colorFilter2 = colorFilter3;
                        f3 = f4;
                        contentScale3 = fit;
                        alignment2 = center;
                        modifier3 = modifier13;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        alignment2 = alignment;
                        colorFilter2 = colorFilter;
                        modifier3 = modifier2;
                        contentScale3 = contentScale2;
                        f3 = f2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                f2 = f;
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(colorFilter)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        center = Alignment.Companion.getCenter();
                    } else {
                        center = alignment;
                    }
                    if (i6 != 0) {
                        fit = ContentScale.Companion.getFit();
                    } else {
                        fit = contentScale2;
                    }
                    if (i8 != 0) {
                        f4 = 1.0f;
                    } else {
                        f4 = f2;
                    }
                    if (i10 != 0) {
                        colorFilter3 = null;
                    } else {
                        colorFilter3 = colorFilter;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                    }
                    if (str != null) {
                        composerStartRestartGroup.startReplaceGroup(1899222916);
                        Modifier.Companion companion19 = Modifier.Companion;
                        if ((i3 & 112) == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        modifierSemantics$default = SemanticsModifierKt.semantics$default(companion19, z2, (nl3) objRememberedValue2, 1, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        z2 = false;
                        composerStartRestartGroup.startReplaceGroup(1899381698);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierSemantics$default = Modifier.Companion;
                    }
                    boolean z13 = z2;
                    Modifier modifier14 = modifier4;
                    Modifier modifierPaint$default10 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy10 = (MeasurePolicy) objRememberedValue;
                    int iHashCode10 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z13 ? 1 : 0));
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default10);
                    CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                    constructor = companion110.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl10 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl10, measurePolicy10, companion110.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl10, currentCompositionLocalMap10, companion110.getSetResolvedCompositionLocals());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl10, companion110.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl10, modifierMaterializeModifier10, companion110.getSetModifier());
                    Updater.m5363setimpl(composerM5355constructorimpl10, Integer.valueOf(iHashCode10), companion110.getSetCompositeKeyHash());
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorFilter2 = colorFilter3;
                    f3 = f4;
                    contentScale3 = fit;
                    alignment2 = center;
                    modifier3 = modifier14;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    alignment2 = alignment;
                    colorFilter2 = colorFilter;
                    modifier3 = modifier2;
                    contentScale3 = contentScale2;
                    f3 = f2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            contentScale2 = contentScale;
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    f2 = f;
                    if (composerStartRestartGroup.changed(f2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(colorFilter)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        center = Alignment.Companion.getCenter();
                    } else {
                        center = alignment;
                    }
                    if (i6 != 0) {
                        fit = ContentScale.Companion.getFit();
                    } else {
                        fit = contentScale2;
                    }
                    if (i8 != 0) {
                        f4 = 1.0f;
                    } else {
                        f4 = f2;
                    }
                    if (i10 != 0) {
                        colorFilter3 = null;
                    } else {
                        colorFilter3 = colorFilter;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                    }
                    if (str != null) {
                        composerStartRestartGroup.startReplaceGroup(1899222916);
                        Modifier.Companion companion111 = Modifier.Companion;
                        if ((i3 & 112) == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        modifierSemantics$default = SemanticsModifierKt.semantics$default(companion111, z2, (nl3) objRememberedValue2, 1, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        z2 = false;
                        composerStartRestartGroup.startReplaceGroup(1899381698);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierSemantics$default = Modifier.Companion;
                    }
                    boolean z14 = z2;
                    Modifier modifier15 = modifier4;
                    Modifier modifierPaint$default11 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy11 = (MeasurePolicy) objRememberedValue;
                    int iHashCode11 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z14 ? 1 : 0));
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default11);
                    CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                    constructor = companion112.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl11 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl11, measurePolicy11, companion112.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl11, currentCompositionLocalMap11, companion112.getSetResolvedCompositionLocals());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl11, companion112.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl11, modifierMaterializeModifier11, companion112.getSetModifier());
                    Updater.m5363setimpl(composerM5355constructorimpl11, Integer.valueOf(iHashCode11), companion112.getSetCompositeKeyHash());
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorFilter2 = colorFilter3;
                    f3 = f4;
                    contentScale3 = fit;
                    alignment2 = center;
                    modifier3 = modifier15;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    alignment2 = alignment;
                    colorFilter2 = colorFilter;
                    modifier3 = modifier2;
                    contentScale3 = contentScale2;
                    f3 = f2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f2 = f;
            i10 = i2 & 64;
            if (i10 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(colorFilter)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i3 |= i11;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    center = Alignment.Companion.getCenter();
                } else {
                    center = alignment;
                }
                if (i6 != 0) {
                    fit = ContentScale.Companion.getFit();
                } else {
                    fit = contentScale2;
                }
                if (i8 != 0) {
                    f4 = 1.0f;
                } else {
                    f4 = f2;
                }
                if (i10 != 0) {
                    colorFilter3 = null;
                } else {
                    colorFilter3 = colorFilter;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                }
                if (str != null) {
                    composerStartRestartGroup.startReplaceGroup(1899222916);
                    Modifier.Companion companion113 = Modifier.Companion;
                    if ((i3 & 112) == 32) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    modifierSemantics$default = SemanticsModifierKt.semantics$default(companion113, z2, (nl3) objRememberedValue2, 1, null);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    z2 = false;
                    composerStartRestartGroup.startReplaceGroup(1899381698);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierSemantics$default = Modifier.Companion;
                }
                boolean z15 = z2;
                Modifier modifier16 = modifier4;
                Modifier modifierPaint$default12 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MeasurePolicy measurePolicy12 = (MeasurePolicy) objRememberedValue;
                int iHashCode12 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z15 ? 1 : 0));
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default12);
                CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                constructor = companion114.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl12 = Updater.m5355constructorimpl(composerStartRestartGroup);
                Updater.m5363setimpl(composerM5355constructorimpl12, measurePolicy12, companion114.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl12, currentCompositionLocalMap12, companion114.getSetResolvedCompositionLocals());
                Updater.m5361reconcileimpl(composerM5355constructorimpl12, companion114.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl12, modifierMaterializeModifier12, companion114.getSetModifier());
                Updater.m5363setimpl(composerM5355constructorimpl12, Integer.valueOf(iHashCode12), companion114.getSetCompositeKeyHash());
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorFilter2 = colorFilter3;
                f3 = f4;
                contentScale3 = fit;
                alignment2 = center;
                modifier3 = modifier16;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                alignment2 = alignment;
                colorFilter2 = colorFilter;
                modifier3 = modifier2;
                contentScale3 = contentScale2;
                f3 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        i6 = i2 & 16;
        if (i6 != 0) {
            if ((i & 24576) == 0) {
                contentScale2 = contentScale;
                if (composerStartRestartGroup.changed(contentScale2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i3 |= i7;
            }
            i8 = i2 & 32;
            if (i8 != 0) {
                if ((196608 & i) == 0) {
                    f2 = f;
                    if (composerStartRestartGroup.changed(f2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 64;
                if (i10 != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(colorFilter)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i3 |= i11;
                }
                if ((i3 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                    if (i12 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i4 != 0) {
                        center = Alignment.Companion.getCenter();
                    } else {
                        center = alignment;
                    }
                    if (i6 != 0) {
                        fit = ContentScale.Companion.getFit();
                    } else {
                        fit = contentScale2;
                    }
                    if (i8 != 0) {
                        f4 = 1.0f;
                    } else {
                        f4 = f2;
                    }
                    if (i10 != 0) {
                        colorFilter3 = null;
                    } else {
                        colorFilter3 = colorFilter;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                    }
                    if (str != null) {
                        composerStartRestartGroup.startReplaceGroup(1899222916);
                        Modifier.Companion companion115 = Modifier.Companion;
                        if ((i3 & 112) == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z3) {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            z2 = false;
                            objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        modifierSemantics$default = SemanticsModifierKt.semantics$default(companion115, z2, (nl3) objRememberedValue2, 1, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        z2 = false;
                        composerStartRestartGroup.startReplaceGroup(1899381698);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierSemantics$default = Modifier.Companion;
                    }
                    boolean z16 = z2;
                    Modifier modifier17 = modifier4;
                    Modifier modifierPaint$default13 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    MeasurePolicy measurePolicy13 = (MeasurePolicy) objRememberedValue;
                    int iHashCode13 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z16 ? 1 : 0));
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default13);
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                    constructor = companion116.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    Composer composerM5355constructorimpl13 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    Updater.m5363setimpl(composerM5355constructorimpl13, measurePolicy13, companion116.getSetMeasurePolicy());
                    Updater.m5363setimpl(composerM5355constructorimpl13, currentCompositionLocalMap13, companion116.getSetResolvedCompositionLocals());
                    Updater.m5361reconcileimpl(composerM5355constructorimpl13, companion116.getApplyOnDeactivatedNodeAssertion());
                    Updater.m5363setimpl(composerM5355constructorimpl13, modifierMaterializeModifier13, companion116.getSetModifier());
                    Updater.m5363setimpl(composerM5355constructorimpl13, Integer.valueOf(iHashCode13), companion116.getSetCompositeKeyHash());
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    colorFilter2 = colorFilter3;
                    f3 = f4;
                    contentScale3 = fit;
                    alignment2 = center;
                    modifier3 = modifier17;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    alignment2 = alignment;
                    colorFilter2 = colorFilter;
                    modifier3 = modifier2;
                    contentScale3 = contentScale2;
                    f3 = f2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            f2 = f;
            i10 = i2 & 64;
            if (i10 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(colorFilter)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i3 |= i11;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    center = Alignment.Companion.getCenter();
                } else {
                    center = alignment;
                }
                if (i6 != 0) {
                    fit = ContentScale.Companion.getFit();
                } else {
                    fit = contentScale2;
                }
                if (i8 != 0) {
                    f4 = 1.0f;
                } else {
                    f4 = f2;
                }
                if (i10 != 0) {
                    colorFilter3 = null;
                } else {
                    colorFilter3 = colorFilter;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                }
                if (str != null) {
                    composerStartRestartGroup.startReplaceGroup(1899222916);
                    Modifier.Companion companion117 = Modifier.Companion;
                    if ((i3 & 112) == 32) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    modifierSemantics$default = SemanticsModifierKt.semantics$default(companion117, z2, (nl3) objRememberedValue2, 1, null);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    z2 = false;
                    composerStartRestartGroup.startReplaceGroup(1899381698);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierSemantics$default = Modifier.Companion;
                }
                boolean z17 = z2;
                Modifier modifier18 = modifier4;
                Modifier modifierPaint$default14 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MeasurePolicy measurePolicy14 = (MeasurePolicy) objRememberedValue;
                int iHashCode14 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z17 ? 1 : 0));
                Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default14);
                CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                constructor = companion118.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl14 = Updater.m5355constructorimpl(composerStartRestartGroup);
                Updater.m5363setimpl(composerM5355constructorimpl14, measurePolicy14, companion118.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl14, currentCompositionLocalMap14, companion118.getSetResolvedCompositionLocals());
                Updater.m5361reconcileimpl(composerM5355constructorimpl14, companion118.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl14, modifierMaterializeModifier14, companion118.getSetModifier());
                Updater.m5363setimpl(composerM5355constructorimpl14, Integer.valueOf(iHashCode14), companion118.getSetCompositeKeyHash());
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorFilter2 = colorFilter3;
                f3 = f4;
                contentScale3 = fit;
                alignment2 = center;
                modifier3 = modifier18;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                alignment2 = alignment;
                colorFilter2 = colorFilter;
                modifier3 = modifier2;
                contentScale3 = contentScale2;
                f3 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        contentScale2 = contentScale;
        i8 = i2 & 32;
        if (i8 != 0) {
            if ((196608 & i) == 0) {
                f2 = f;
                if (composerStartRestartGroup.changed(f2)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i3 |= i9;
            }
            i10 = i2 & 64;
            if (i10 != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(colorFilter)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i3 |= i11;
            }
            if ((i3 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                if (i12 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i4 != 0) {
                    center = Alignment.Companion.getCenter();
                } else {
                    center = alignment;
                }
                if (i6 != 0) {
                    fit = ContentScale.Companion.getFit();
                } else {
                    fit = contentScale2;
                }
                if (i8 != 0) {
                    f4 = 1.0f;
                } else {
                    f4 = f2;
                }
                if (i10 != 0) {
                    colorFilter3 = null;
                } else {
                    colorFilter3 = colorFilter;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
                }
                if (str != null) {
                    composerStartRestartGroup.startReplaceGroup(1899222916);
                    Modifier.Companion companion119 = Modifier.Companion;
                    if ((i3 & 112) == 32) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z3) {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        z2 = false;
                        objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    modifierSemantics$default = SemanticsModifierKt.semantics$default(companion119, z2, (nl3) objRememberedValue2, 1, null);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    z2 = false;
                    composerStartRestartGroup.startReplaceGroup(1899381698);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierSemantics$default = Modifier.Companion;
                }
                boolean z18 = z2;
                Modifier modifier19 = modifier4;
                Modifier modifierPaint$default15 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                MeasurePolicy measurePolicy15 = (MeasurePolicy) objRememberedValue;
                int iHashCode15 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z18 ? 1 : 0));
                Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default15);
                CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
                constructor = companion1110.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                Composer composerM5355constructorimpl15 = Updater.m5355constructorimpl(composerStartRestartGroup);
                Updater.m5363setimpl(composerM5355constructorimpl15, measurePolicy15, companion1110.getSetMeasurePolicy());
                Updater.m5363setimpl(composerM5355constructorimpl15, currentCompositionLocalMap15, companion1110.getSetResolvedCompositionLocals());
                Updater.m5361reconcileimpl(composerM5355constructorimpl15, companion1110.getApplyOnDeactivatedNodeAssertion());
                Updater.m5363setimpl(composerM5355constructorimpl15, modifierMaterializeModifier15, companion1110.getSetModifier());
                Updater.m5363setimpl(composerM5355constructorimpl15, Integer.valueOf(iHashCode15), companion1110.getSetCompositeKeyHash());
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                colorFilter2 = colorFilter3;
                f3 = f4;
                contentScale3 = fit;
                alignment2 = center;
                modifier3 = modifier19;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                alignment2 = alignment;
                colorFilter2 = colorFilter;
                modifier3 = modifier2;
                contentScale3 = contentScale2;
                f3 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        f2 = f;
        i10 = i2 & 64;
        if (i10 != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changed(colorFilter)) {
                i11 = 1048576;
            } else {
                i11 = 524288;
            }
            i3 |= i11;
        }
        if ((i3 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            if (i12 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i4 != 0) {
                center = Alignment.Companion.getCenter();
            } else {
                center = alignment;
            }
            if (i6 != 0) {
                fit = ContentScale.Companion.getFit();
            } else {
                fit = contentScale2;
            }
            if (i8 != 0) {
                f4 = 1.0f;
            } else {
                f4 = f2;
            }
            if (i10 != 0) {
                colorFilter3 = null;
            } else {
                colorFilter3 = colorFilter;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1142754848, i3, -1, "androidx.compose.foundation.Image (Image.kt:247)");
            }
            if (str != null) {
                composerStartRestartGroup.startReplaceGroup(1899222916);
                Modifier.Companion companion1111 = Modifier.Companion;
                if ((i3 & 112) == 32) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z3) {
                    z2 = false;
                    objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    z2 = false;
                    objRememberedValue2 = new m14(str, 0 == true ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                modifierSemantics$default = SemanticsModifierKt.semantics$default(companion1111, z2, (nl3) objRememberedValue2, 1, null);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                z2 = false;
                composerStartRestartGroup.startReplaceGroup(1899381698);
                composerStartRestartGroup.endReplaceGroup();
                modifierSemantics$default = Modifier.Companion;
            }
            boolean z19 = z2;
            Modifier modifier110 = modifier4;
            Modifier modifierPaint$default16 = PainterModifierKt.paint$default(ClipKt.clipToBounds(modifier4.then(modifierSemantics$default)), painter, false, center, fit, f4, colorFilter3, 2, null);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = ImageKt$Image$1$1.INSTANCE;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MeasurePolicy measurePolicy16 = (MeasurePolicy) objRememberedValue;
            int iHashCode16 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, z19 ? 1 : 0));
            Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPaint$default16);
            CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            ComposeUiNode.Companion companion1112 = ComposeUiNode.Companion;
            constructor = companion1112.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl16 = Updater.m5355constructorimpl(composerStartRestartGroup);
            Updater.m5363setimpl(composerM5355constructorimpl16, measurePolicy16, companion1112.getSetMeasurePolicy());
            Updater.m5363setimpl(composerM5355constructorimpl16, currentCompositionLocalMap16, companion1112.getSetResolvedCompositionLocals());
            Updater.m5361reconcileimpl(composerM5355constructorimpl16, companion1112.getApplyOnDeactivatedNodeAssertion());
            Updater.m5363setimpl(composerM5355constructorimpl16, modifierMaterializeModifier16, companion1112.getSetModifier());
            Updater.m5363setimpl(composerM5355constructorimpl16, Integer.valueOf(iHashCode16), companion1112.getSetCompositeKeyHash());
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            colorFilter2 = colorFilter3;
            f3 = f4;
            contentScale3 = fit;
            alignment2 = center;
            modifier3 = modifier110;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            alignment2 = alignment;
            colorFilter2 = colorFilter;
            modifier3 = modifier2;
            contentScale3 = contentScale2;
            f3 = f2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n14
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ImageKt.Image$lambda$2(painter, str, modifier3, alignment2, contentScale3, f3, colorFilter2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Image$lambda$0$0(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, Role.Companion.m8265getImageo7Vup1c());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Image$lambda$2(Painter painter, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, int i2, Composer composer, int i3) {
        Image(painter, str, modifier, alignment, contentScale, f, colorFilter, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: renamed from: Image-5h-nEew, reason: not valid java name */
    public static final void m1346Image5hnEew(ImageBitmap imageBitmap, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i, Composer composer, int i2, int i3) {
        Modifier modifier2 = (i3 & 4) != 0 ? Modifier.Companion : modifier;
        Alignment center = (i3 & 8) != 0 ? Alignment.Companion.getCenter() : alignment;
        ContentScale fit = (i3 & 16) != 0 ? ContentScale.Companion.getFit() : contentScale;
        float f2 = (i3 & 32) != 0 ? 1.0f : f;
        ColorFilter colorFilter2 = (i3 & 64) != 0 ? null : colorFilter;
        int iM6809getDefaultFilterQualityfv9h1I = (i3 & 128) != 0 ? DrawScope.Companion.m6809getDefaultFilterQualityfv9h1I() : i;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1396260732, i2, -1, "androidx.compose.foundation.Image (Image.kt:156)");
        }
        boolean zChanged = composer.changed(imageBitmap);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = BitmapPainterKt.m6929BitmapPainterQZhYCtY$default(imageBitmap, 0L, 0L, iM6809getDefaultFilterQualityfv9h1I, 6, null);
            composer.updateRememberedValue(objRememberedValue);
        }
        Image((BitmapPainter) objRememberedValue, str, modifier2, center, fit, f2, colorFilter2, composer, BitmapPainter.$stable | (i2 & 112) | (i2 & 896) | (i2 & 7168) | (57344 & i2) | (458752 & i2) | (i2 & 3670016), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final void Image(ImageVector imageVector, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, Composer composer, int i, int i2) {
        if ((i2 & 4) != 0) {
            modifier = Modifier.Companion;
        }
        Modifier modifier2 = modifier;
        if ((i2 & 8) != 0) {
            alignment = Alignment.Companion.getCenter();
        }
        Alignment alignment2 = alignment;
        ContentScale fit = (i2 & 16) != 0 ? ContentScale.Companion.getFit() : contentScale;
        float f2 = (i2 & 32) != 0 ? 1.0f : f;
        ColorFilter colorFilter2 = (i2 & 64) != 0 ? null : colorFilter;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1595907091, i, -1, "androidx.compose.foundation.Image (Image.kt:202)");
        }
        Image(VectorPainterKt.rememberVectorPainter(imageVector, composer, i & 14), str, modifier2, alignment2, fit, f2, colorFilter2, composer, VectorPainter.$stable | (i & 112) | (i & 896) | (i & 7168) | (57344 & i) | (458752 & i) | (3670016 & i), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @ul2
    public static final /* synthetic */ void Image(ImageBitmap imageBitmap, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, Composer composer, int i, int i2) {
        if ((i2 & 4) != 0) {
            modifier = Modifier.Companion;
        }
        Modifier modifier2 = modifier;
        Alignment center = (i2 & 8) != 0 ? Alignment.Companion.getCenter() : alignment;
        ContentScale fit = (i2 & 16) != 0 ? ContentScale.Companion.getFit() : contentScale;
        float f2 = (i2 & 32) != 0 ? 1.0f : f;
        ColorFilter colorFilter2 = (i2 & 64) != 0 ? null : colorFilter;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2123228673, i, -1, "androidx.compose.foundation.Image (Image.kt:98)");
        }
        m1346Image5hnEew(imageBitmap, str, modifier2, center, fit, f2, colorFilter2, FilterQuality.Companion.m6332getLowfv9h1I(), composer, i & 4194302, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}

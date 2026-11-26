package androidx.compose.material3;

import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.interaction.DragInteractionKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.DragHandleKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f57;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nr2;
import defpackage.or2;
import defpackage.p31;
import defpackage.pr2;
import defpackage.rr2;

/* JADX INFO: loaded from: classes2.dex */
public final class DragHandleKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0131  */
    /* JADX WARN: Code duplicated, block: B:104:0x014b  */
    /* JADX WARN: Code duplicated, block: B:107:0x0168  */
    /* JADX WARN: Code duplicated, block: B:108:0x0172  */
    /* JADX WARN: Code duplicated, block: B:111:0x017f  */
    /* JADX WARN: Code duplicated, block: B:124:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:137:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:150:0x021e  */
    /* JADX WARN: Code duplicated, block: B:153:0x024e  */
    /* JADX WARN: Code duplicated, block: B:155:0x0254  */
    /* JADX WARN: Code duplicated, block: B:158:0x0260  */
    /* JADX WARN: Code duplicated, block: B:160:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:92:0x0100  */
    /* JADX WARN: Code duplicated, block: B:95:0x010a  */
    /* JADX WARN: Code duplicated, block: B:97:0x0112  */
    /* JADX WARN: Code duplicated, block: B:99:0x0124  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final void VerticalDragHandle(Modifier modifier, DragHandleSizes dragHandleSizes, DragHandleColors dragHandleColors, DragHandleShapes dragHandleShapes, MutableInteractionSource mutableInteractionSource, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        DragHandleSizes dragHandleSizes2;
        DragHandleColors dragHandleColorsColors;
        DragHandleShapes dragHandleShapesShapes;
        MutableInteractionSource mutableInteractionSource2;
        boolean z;
        Modifier modifier3;
        final DragHandleSizes dragHandleSizesSizes;
        final DragHandleColors dragHandleColors2;
        final MutableInteractionSource mutableInteractionSource3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        MutableInteractionSource mutableInteractionSource4;
        final State<Boolean> stateCollectIsDraggedAsState;
        Object objRememberedValue;
        Composer.Companion companion;
        final MutableState mutableState;
        Object objRememberedValue2;
        Object objRememberedValue3;
        boolean zChanged;
        Object objRememberedValue4;
        boolean zChanged2;
        Object objRememberedValue5;
        boolean zChanged3;
        Object objRememberedValue6;
        Object objRememberedValue7;
        Composer composerStartRestartGroup = composer.startRestartGroup(1693656835);
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
            if ((i2 & 2) == 0) {
                dragHandleSizes2 = dragHandleSizes;
                int i5 = composerStartRestartGroup.changed(dragHandleSizes2) ? 32 : 16;
                i3 |= i5;
            } else {
                dragHandleSizes2 = dragHandleSizes;
            }
            i3 |= i5;
        } else {
            dragHandleSizes2 = dragHandleSizes;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) == 0) {
                dragHandleColorsColors = dragHandleColors;
                int i6 = composerStartRestartGroup.changed(dragHandleColorsColors) ? 256 : 128;
                i3 |= i6;
            } else {
                dragHandleColorsColors = dragHandleColors;
            }
            i3 |= i6;
        } else {
            dragHandleColorsColors = dragHandleColors;
        }
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                dragHandleShapesShapes = dragHandleShapes;
                int i7 = composerStartRestartGroup.changed(dragHandleShapesShapes) ? 2048 : 1024;
                i3 |= i7;
            } else {
                dragHandleShapesShapes = dragHandleShapes;
            }
            i3 |= i7;
        } else {
            dragHandleShapesShapes = dragHandleShapes;
        }
        int i8 = i2 & 16;
        if (i8 == 0) {
            if ((i & 24576) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                i3 |= composerStartRestartGroup.changed(mutableInteractionSource2) ? 16384 : 8192;
            }
            if ((i3 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i4 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i2 & 2) != 0) {
                        dragHandleSizesSizes = VerticalDragHandleDefaults.INSTANCE.sizes();
                        i3 &= -113;
                    } else {
                        dragHandleSizesSizes = dragHandleSizes2;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                        dragHandleColorsColors = VerticalDragHandleDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                        dragHandleShapesShapes = VerticalDragHandleDefaults.INSTANCE.shapes(composerStartRestartGroup, 6);
                    }
                    if (i8 != 0) {
                        mutableInteractionSource2 = null;
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 2) != 0) {
                        i3 &= -113;
                    }
                    if ((i2 & 4) != 0) {
                        i3 &= -897;
                    }
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                    }
                    modifier3 = modifier2;
                    dragHandleSizesSizes = dragHandleSizes2;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1693656835, i3, -1, "androidx.compose.material3.VerticalDragHandle (DragHandle.kt:78)");
                }
                if (mutableInteractionSource2 == null) {
                    composerStartRestartGroup.startReplaceGroup(-1544610024);
                    objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                        objRememberedValue7 = InteractionSourceKt.MutableInteractionSource();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                    }
                    mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue7;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-188374113);
                    composerStartRestartGroup.endReplaceGroup();
                    mutableInteractionSource4 = mutableInteractionSource2;
                }
                stateCollectIsDraggedAsState = DragInteractionKt.collectIsDraggedAsState(mutableInteractionSource4, composerStartRestartGroup, 0);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableState = (MutableState) objRememberedValue;
                Modifier modifierHoverable$default = HoverableKt.hoverable$default(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier3), mutableInteractionSource4, false, 2, null);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = new p31(mutableState, 1);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                ll3 ll3Var = (ll3) objRememberedValue2;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = new or2(mutableState, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifierPressable = pressable(modifierHoverable$default, mutableInteractionSource4, ll3Var, (ll3) objRememberedValue3);
                zChanged = composerStartRestartGroup.changed(stateCollectIsDraggedAsState) | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(dragHandleShapesShapes)) || (i3 & 3072) == 2048);
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new pr2(dragHandleShapesShapes, stateCollectIsDraggedAsState, mutableState, 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                Modifier modifierGraphicsLayer = GraphicsLayerModifierKt.graphicsLayer(modifierPressable, (nl3) objRememberedValue4);
                zChanged2 = composerStartRestartGroup.changed(stateCollectIsDraggedAsState) | ((((i3 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(dragHandleSizesSizes)) || (i3 & 48) == 32);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged2 || objRememberedValue5 == companion.getEmpty()) {
                    objRememberedValue5 = new dm3() { // from class: qr2
                        @Override // defpackage.dm3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            return DragHandleKt.VerticalDragHandle$lambda$13$lambda$12(dragHandleSizesSizes, stateCollectIsDraggedAsState, mutableState, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                Modifier modifierLayout = LayoutModifierKt.layout(modifierGraphicsLayer, (dm3) objRememberedValue5);
                zChanged3 = composerStartRestartGroup.changed(stateCollectIsDraggedAsState) | ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(dragHandleColorsColors)) || (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (zChanged3 || objRememberedValue6 == companion.getEmpty()) {
                    objRememberedValue6 = new rr2(dragHandleColorsColors, stateCollectIsDraggedAsState, mutableState);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                BoxKt.Box(IndicationKt.indication(DrawModifierKt.drawBehind(modifierLayout, (nl3) objRememberedValue6), mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composerStartRestartGroup, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                dragHandleSizesSizes = dragHandleSizes2;
            }
            dragHandleColors2 = dragHandleColorsColors;
            mutableInteractionSource3 = mutableInteractionSource2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier4 = modifier3;
                final DragHandleSizes dragHandleSizes3 = dragHandleSizesSizes;
                final DragHandleShapes dragHandleShapes2 = dragHandleShapesShapes;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sr2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DragHandleKt.VerticalDragHandle$lambda$16(modifier4, dragHandleSizes3, dragHandleColors2, dragHandleShapes2, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i4 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i2 & 2) != 0) {
                    dragHandleSizesSizes = VerticalDragHandleDefaults.INSTANCE.sizes();
                    i3 &= -113;
                } else {
                    dragHandleSizesSizes = dragHandleSizes2;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    dragHandleColorsColors = VerticalDragHandleDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    dragHandleShapesShapes = VerticalDragHandleDefaults.INSTANCE.shapes(composerStartRestartGroup, 6);
                }
                if (i8 != 0) {
                    mutableInteractionSource2 = null;
                }
            } else {
                if (i4 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i2 & 2) != 0) {
                    dragHandleSizesSizes = VerticalDragHandleDefaults.INSTANCE.sizes();
                    i3 &= -113;
                } else {
                    dragHandleSizesSizes = dragHandleSizes2;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                    dragHandleColorsColors = VerticalDragHandleDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                }
                if ((i2 & 8) != 0) {
                    i3 &= -7169;
                    dragHandleShapesShapes = VerticalDragHandleDefaults.INSTANCE.shapes(composerStartRestartGroup, 6);
                }
                if (i8 != 0) {
                    mutableInteractionSource2 = null;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1693656835, i3, -1, "androidx.compose.material3.VerticalDragHandle (DragHandle.kt:78)");
            }
            if (mutableInteractionSource2 == null) {
                composerStartRestartGroup.startReplaceGroup(-1544610024);
                objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue7 == Composer.Companion.getEmpty()) {
                    objRememberedValue7 = InteractionSourceKt.MutableInteractionSource();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue7);
                }
                mutableInteractionSource4 = (MutableInteractionSource) objRememberedValue7;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-188374113);
                composerStartRestartGroup.endReplaceGroup();
                mutableInteractionSource4 = mutableInteractionSource2;
            }
            stateCollectIsDraggedAsState = DragInteractionKt.collectIsDraggedAsState(mutableInteractionSource4, composerStartRestartGroup, 0);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            mutableState = (MutableState) objRememberedValue;
            Modifier modifierHoverable$default2 = HoverableKt.hoverable$default(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier3), mutableInteractionSource4, false, 2, null);
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new p31(mutableState, 1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            ll3 ll3Var2 = (ll3) objRememberedValue2;
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = new or2(mutableState, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifierPressable2 = pressable(modifierHoverable$default2, mutableInteractionSource4, ll3Var2, (ll3) objRememberedValue3);
            zChanged = composerStartRestartGroup.changed(stateCollectIsDraggedAsState) | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(dragHandleShapesShapes)) || (i3 & 3072) == 2048);
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue4 = new pr2(dragHandleShapesShapes, stateCollectIsDraggedAsState, mutableState, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                objRememberedValue4 = new pr2(dragHandleShapesShapes, stateCollectIsDraggedAsState, mutableState, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            Modifier modifierGraphicsLayer2 = GraphicsLayerModifierKt.graphicsLayer(modifierPressable2, (nl3) objRememberedValue4);
            zChanged2 = composerStartRestartGroup.changed(stateCollectIsDraggedAsState) | ((((i3 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(dragHandleSizesSizes)) || (i3 & 48) == 32);
            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChanged2) {
                objRememberedValue5 = new dm3() { // from class: qr2
                    @Override // defpackage.dm3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return DragHandleKt.VerticalDragHandle$lambda$13$lambda$12(dragHandleSizesSizes, stateCollectIsDraggedAsState, mutableState, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            } else {
                objRememberedValue5 = new dm3() { // from class: qr2
                    @Override // defpackage.dm3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return DragHandleKt.VerticalDragHandle$lambda$13$lambda$12(dragHandleSizesSizes, stateCollectIsDraggedAsState, mutableState, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            Modifier modifierLayout2 = LayoutModifierKt.layout(modifierGraphicsLayer2, (dm3) objRememberedValue5);
            zChanged3 = composerStartRestartGroup.changed(stateCollectIsDraggedAsState) | ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && composerStartRestartGroup.changed(dragHandleColorsColors)) || (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChanged3) {
                objRememberedValue6 = new rr2(dragHandleColorsColors, stateCollectIsDraggedAsState, mutableState);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            } else {
                objRememberedValue6 = new rr2(dragHandleColorsColors, stateCollectIsDraggedAsState, mutableState);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            BoxKt.Box(IndicationKt.indication(DrawModifierKt.drawBehind(modifierLayout2, (nl3) objRememberedValue6), mutableInteractionSource4, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            dragHandleSizesSizes = dragHandleSizes2;
        }
        dragHandleColors2 = dragHandleColorsColors;
        mutableInteractionSource3 = mutableInteractionSource2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier5 = modifier3;
            final DragHandleSizes dragHandleSizes4 = dragHandleSizesSizes;
            final DragHandleShapes dragHandleShapes3 = dragHandleShapesShapes;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sr2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DragHandleKt.VerticalDragHandle$lambda$16(modifier5, dragHandleSizes4, dragHandleColors2, dragHandleShapes3, mutableInteractionSource3, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    private static final boolean VerticalDragHandle$lambda$1(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDragHandle$lambda$10$lambda$9(DragHandleShapes dragHandleShapes, State state, MutableState mutableState, GraphicsLayerScope graphicsLayerScope) {
        Shape pressedShape;
        if (VerticalDragHandle$lambda$1(state)) {
            pressedShape = dragHandleShapes.getDraggedShape();
        } else {
            pressedShape = VerticalDragHandle$lambda$3(mutableState) ? dragHandleShapes.getPressedShape() : dragHandleShapes.getShape();
        }
        graphicsLayerScope.setShape(pressedShape);
        graphicsLayerScope.setClip(true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult VerticalDragHandle$lambda$13$lambda$12(DragHandleSizes dragHandleSizes, State state, MutableState mutableState, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        long jM3418getPressedSizeMYxV2XQ;
        if (VerticalDragHandle$lambda$1(state)) {
            jM3418getPressedSizeMYxV2XQ = dragHandleSizes.m3417getDraggedSizeMYxV2XQ();
        } else {
            jM3418getPressedSizeMYxV2XQ = VerticalDragHandle$lambda$3(mutableState) ? dragHandleSizes.m3418getPressedSizeMYxV2XQ() : dragHandleSizes.m3419getSizeMYxV2XQ();
        }
        long jMo1435toSizeXkaWNTQ = measureScope.mo1435toSizeXkaWNTQ(jM3418getPressedSizeMYxV2XQ);
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(Math.round(Float.intBitsToFloat((int) (jMo1435toSizeXkaWNTQ >> 32))), Math.round(Float.intBitsToFloat((int) (jMo1435toSizeXkaWNTQ & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nr2(placeableMo7702measureBRTryo0, 0), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDragHandle$lambda$13$lambda$12$lambda$11(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDragHandle$lambda$15$lambda$14(DragHandleColors dragHandleColors, State state, MutableState mutableState, DrawScope drawScope) {
        long jM3416getPressedColor0d7_KjU;
        if (VerticalDragHandle$lambda$1(state)) {
            jM3416getPressedColor0d7_KjU = dragHandleColors.m3415getDraggedColor0d7_KjU();
        } else {
            jM3416getPressedColor0d7_KjU = VerticalDragHandle$lambda$3(mutableState) ? dragHandleColors.m3416getPressedColor0d7_KjU() : dragHandleColors.m3414getColor0d7_KjU();
        }
        DrawScope.m6800drawRectnJ9OG0$default(drawScope, jM3416getPressedColor0d7_KjU, 0L, 0L, 0.0f, null, null, 0, 126, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDragHandle$lambda$16(Modifier modifier, DragHandleSizes dragHandleSizes, DragHandleColors dragHandleColors, DragHandleShapes dragHandleShapes, MutableInteractionSource mutableInteractionSource, int i, int i2, Composer composer, int i3) {
        VerticalDragHandle(modifier, dragHandleSizes, dragHandleColors, dragHandleShapes, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final boolean VerticalDragHandle$lambda$3(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void VerticalDragHandle$lambda$4(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDragHandle$lambda$6$lambda$5(MutableState mutableState) {
        VerticalDragHandle$lambda$4(mutableState, true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalDragHandle$lambda$8$lambda$7(MutableState mutableState) {
        VerticalDragHandle$lambda$4(mutableState, false);
        return j59.a;
    }

    private static final Modifier pressable(Modifier modifier, MutableInteractionSource mutableInteractionSource, final ll3<j59> ll3Var, final ll3<j59> ll3Var2) {
        return SuspendingPointerInputFilterKt.pointerInput(modifier, mutableInteractionSource, new PointerInputEventHandler() { // from class: androidx.compose.material3.DragHandleKt.pressable.1

            /* JADX INFO: renamed from: androidx.compose.material3.DragHandleKt$pressable$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.material3.DragHandleKt$pressable$1$1", f = "DragHandle.kt", l = {341, 343}, m = "invokeSuspend")
            public static final class C00601 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                final /* synthetic */ ll3<j59> $onPressed;
                final /* synthetic */ ll3<j59> $onReleasedOrCancelled;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00601(ll3<j59> ll3Var, ll3<j59> ll3Var2, e02<? super C00601> e02Var) {
                    super(2, e02Var);
                    this.$onPressed = ll3Var;
                    this.$onReleasedOrCancelled = ll3Var2;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    C00601 c00601 = new C00601(this.$onPressed, this.$onReleasedOrCancelled, e02Var);
                    c00601.L$0 = obj;
                    return c00601;
                }

                @Override // defpackage.bm3
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                    return ((C00601) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                }

                /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
                
                    if (androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(r1, r10, r7) == r0) goto L16;
                 */
                @Override // defpackage.cd0
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r11) {
                    /*
                        r10 = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r1 = r10.label
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L21
                        if (r1 == r3) goto L18
                        if (r1 != r2) goto L11
                        defpackage.r57.b(r11)
                        r7 = r10
                        goto L4e
                    L11:
                        java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r10)
                        r10 = 0
                        return r10
                    L18:
                        java.lang.Object r1 = r10.L$0
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        defpackage.r57.b(r11)
                        r7 = r10
                        goto L3b
                    L21:
                        defpackage.r57.b(r11)
                        java.lang.Object r11 = r10.L$0
                        r4 = r11
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                        androidx.compose.ui.input.pointer.PointerEventPass r6 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r10.L$0 = r4
                        r10.label = r3
                        r5 = 0
                        r8 = 1
                        r9 = 0
                        r7 = r10
                        java.lang.Object r10 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown$default(r4, r5, r6, r7, r8, r9)
                        if (r10 != r0) goto L3a
                        goto L4d
                    L3a:
                        r1 = r4
                    L3b:
                        ll3<j59> r10 = r7.$onPressed
                        r10.invoke()
                        androidx.compose.ui.input.pointer.PointerEventPass r10 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        r11 = 0
                        r7.L$0 = r11
                        r7.label = r2
                        java.lang.Object r10 = androidx.compose.foundation.gestures.TapGestureDetectorKt.waitForUpOrCancellation(r1, r10, r7)
                        if (r10 != r0) goto L4e
                    L4d:
                        return r0
                    L4e:
                        ll3<j59> r10 = r7.$onReleasedOrCancelled
                        r10.invoke()
                        j59 r10 = defpackage.j59.a
                        return r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DragHandleKt.AnonymousClass1.C00601.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture(pointerInputScope, new C00601(ll3Var, ll3Var2, null), e02Var);
                return objAwaitEachGesture == a32.COROUTINE_SUSPENDED ? objAwaitEachGesture : j59.a;
            }
        });
    }
}

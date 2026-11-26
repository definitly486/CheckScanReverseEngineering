package androidx.compose.foundation.layout;

import androidx.collection.IntIntPair;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.WavUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dm3;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nx1;
import defpackage.qn1;
import defpackage.qz0;
import defpackage.r07;
import defpackage.rf;
import defpackage.u96;
import defpackage.ul2;
import defpackage.xs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FlowLayoutKt {
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_START;
    private static final CrossAxisAlignment CROSS_AXIS_ALIGNMENT_TOP;

    static {
        CrossAxisAlignment.Companion companion = CrossAxisAlignment.Companion;
        Alignment.Companion companion2 = Alignment.Companion;
        CROSS_AXIS_ALIGNMENT_TOP = companion.vertical$foundation_layout(companion2.getTop());
        CROSS_AXIS_ALIGNMENT_START = companion.horizontal$foundation_layout(companion2.getStart());
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0122  */
    /* JADX WARN: Code duplicated, block: B:103:0x012e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0130  */
    /* JADX WARN: Code duplicated, block: B:106:0x0133  */
    /* JADX WARN: Code duplicated, block: B:107:0x0135  */
    /* JADX WARN: Code duplicated, block: B:109:0x0139  */
    /* JADX WARN: Code duplicated, block: B:110:0x0140  */
    /* JADX WARN: Code duplicated, block: B:113:0x0148  */
    /* JADX WARN: Code duplicated, block: B:116:0x0158  */
    /* JADX WARN: Code duplicated, block: B:117:0x015a  */
    /* JADX WARN: Code duplicated, block: B:120:0x0161  */
    /* JADX WARN: Code duplicated, block: B:122:0x0169  */
    /* JADX WARN: Code duplicated, block: B:125:0x0186  */
    /* JADX WARN: Code duplicated, block: B:126:0x0188  */
    /* JADX WARN: Code duplicated, block: B:129:0x0190  */
    /* JADX WARN: Code duplicated, block: B:130:0x0192  */
    /* JADX WARN: Code duplicated, block: B:133:0x019b  */
    /* JADX WARN: Code duplicated, block: B:134:0x019d  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:142:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:144:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:147:0x0208  */
    /* JADX WARN: Code duplicated, block: B:150:0x0214  */
    /* JADX WARN: Code duplicated, block: B:151:0x0218  */
    /* JADX WARN: Code duplicated, block: B:154:0x0234  */
    /* JADX WARN: Code duplicated, block: B:157:0x0242  */
    /* JADX WARN: Code duplicated, block: B:160:0x0259  */
    /* JADX WARN: Code duplicated, block: B:162:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:81:0x00df  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:92:0x0102  */
    /* JADX WARN: Code duplicated, block: B:94:0x0106  */
    /* JADX WARN: Code duplicated, block: B:95:0x010e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0111  */
    /* JADX WARN: Code duplicated, block: B:98:0x011d  */
    @ul2
    public static final void FlowColumn(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, FlowColumnOverflow flowColumnOverflow, final dm3<? super FlowColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i3, final int i4) {
        int i5;
        Arrangement.Vertical vertical2;
        int i6;
        int i7;
        int i8;
        Alignment.Horizontal start;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z;
        final Modifier modifier2;
        final Arrangement.Horizontal horizontal3;
        final Arrangement.Vertical vertical3;
        Composer composer2;
        final int i17;
        final int i18;
        final FlowColumnOverflow flowColumnOverflow2;
        final Alignment.Horizontal horizontal4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        Arrangement.Vertical top;
        int i19;
        Arrangement.Horizontal start2;
        int i20;
        int i21;
        FlowColumnOverflow clip;
        int i22;
        boolean z2;
        Object objRememberedValue;
        FlowLayoutOverflowState flowLayoutOverflowState;
        MultiContentMeasurePolicy multiContentMeasurePolicyColumnMeasurementMultiContentHelper;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Object objRememberedValue2;
        Object obj;
        bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts;
        boolean zChanged;
        Object objRememberedValue3;
        ll3<ComposeUiNode> constructor;
        int i23;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1944405121);
        int i24 = i4 & 1;
        if (i24 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i25 = i4 & 2;
        if (i25 == 0) {
            if ((i3 & 48) == 0) {
                vertical2 = vertical;
                i5 |= composerStartRestartGroup.changed(vertical2) ? 32 : 16;
            }
            i6 = i4 & 4;
            if (i6 != 0) {
                if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(horizontal)) {
                        i7 = 256;
                    } else {
                        i7 = 128;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 8;
                if (i8 != 0) {
                    if ((i3 & 3072) == 0) {
                        start = horizontal2;
                        if (composerStartRestartGroup.changed(start)) {
                            i9 = 2048;
                        } else {
                            i9 = 1024;
                        }
                        i5 |= i9;
                    }
                    i10 = i4 & 16;
                    if (i10 != 0) {
                        if ((i3 & 24576) == 0) {
                            i11 = i;
                            if (composerStartRestartGroup.changed(i11)) {
                                i12 = 16384;
                            } else {
                                i12 = 8192;
                            }
                            i5 |= i12;
                        }
                        i13 = i4 & 32;
                        if (i13 != 0) {
                            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(i2)) {
                                i14 = 131072;
                            } else {
                                i14 = 65536;
                            }
                            i5 |= i14;
                        }
                        i15 = i4 & 64;
                        if (i15 != 0) {
                            i5 |= 1572864;
                        } else if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                                i16 = 1048576;
                            } else {
                                i16 = 524288;
                            }
                            i5 |= i16;
                        }
                        if ((i3 & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i23 = 8388608;
                            } else {
                                i23 = 4194304;
                            }
                            i5 |= i23;
                        }
                        if ((i5 & 4793491) != 4793490) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i25 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical2;
                            }
                            if (i6 != 0) {
                                start2 = Arrangement.INSTANCE.getStart();
                                i19 = i8;
                            } else {
                                i19 = i8;
                                start2 = horizontal;
                            }
                            if (i19 != 0) {
                                start = Alignment.Companion.getStart();
                            }
                            if (i10 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i11;
                            }
                            if (i13 != 0) {
                                i21 = Integer.MAX_VALUE;
                            } else {
                                i21 = i2;
                            }
                            if (i15 != 0) {
                                clip = FlowColumnOverflow.Companion.getClip();
                            } else {
                                clip = flowColumnOverflow;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                            }
                            i22 = 3670016 & i5;
                            if (i22 == 1048576) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = clip.createOverflowState$foundation_layout();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                            multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                            if (i22 == 1048576) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if ((29360128 & i5) == 8388608) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            boolean z7 = z4 | z3;
                            if ((i5 & 458752) == 131072) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            z6 = z7 | z5;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                obj = objRememberedValue2;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj2, Object obj3) {
                                        int iIntValue = ((Integer) obj3).intValue();
                                        return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                    }
                                }));
                                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList);
                                composerStartRestartGroup.updateRememberedValue(arrayList);
                                obj = arrayList;
                            }
                            obj = objRememberedValue2;
                            bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                            zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue3;
                            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            Modifier modifier4 = modifier3;
                            constructor = companion.getConstructor();
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
                            jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                            if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                                ComposerKt.traceEventEnd();
                            }
                            horizontal3 = start2;
                            i17 = i20;
                            i18 = i21;
                            modifier2 = modifier4;
                            composer2 = composerStartRestartGroup;
                            flowColumnOverflow2 = clip;
                            vertical3 = top;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier2 = modifier;
                            horizontal3 = horizontal;
                            vertical3 = vertical2;
                            composer2 = composerStartRestartGroup;
                            i17 = i11;
                            i18 = i2;
                            flowColumnOverflow2 = flowColumnOverflow;
                        }
                        horizontal4 = start;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= 24576;
                    i11 = i;
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start2 = Arrangement.INSTANCE.getStart();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            start2 = horizontal;
                        }
                        if (i19 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowColumnOverflow.Companion.getClip();
                        } else {
                            clip = flowColumnOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z8 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z8 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList2);
                            composerStartRestartGroup.updateRememberedValue(arrayList2);
                            obj = arrayList2;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList3);
                            composerStartRestartGroup.updateRememberedValue(arrayList3);
                            obj = arrayList3;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        Modifier modifier5 = modifier3;
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
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        jg.d(companion2, composerM5355constructorimpl2, measurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        horizontal3 = start2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier5;
                        composer2 = composerStartRestartGroup;
                        flowColumnOverflow2 = clip;
                        vertical3 = top;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        horizontal3 = horizontal;
                        vertical3 = vertical2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowColumnOverflow2 = flowColumnOverflow;
                    }
                    horizontal4 = start;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 3072;
                start = horizontal2;
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start2 = Arrangement.INSTANCE.getStart();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            start2 = horizontal;
                        }
                        if (i19 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowColumnOverflow.Companion.getClip();
                        } else {
                            clip = flowColumnOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z9 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z9 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList4 = new ArrayList();
                            arrayList4.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList4);
                            composerStartRestartGroup.updateRememberedValue(arrayList4);
                            obj = arrayList4;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList5 = new ArrayList();
                            arrayList5.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList5);
                            composerStartRestartGroup.updateRememberedValue(arrayList5);
                            obj = arrayList5;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy3 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        Modifier modifier6 = modifier3;
                        constructor = companion3.getConstructor();
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
                        jg.d(companion3, composerM5355constructorimpl3, measurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap3);
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl3, Integer.valueOf(iHashCode3), composerM5355constructorimpl3));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        horizontal3 = start2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier6;
                        composer2 = composerStartRestartGroup;
                        flowColumnOverflow2 = clip;
                        vertical3 = top;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        horizontal3 = horizontal;
                        vertical3 = vertical2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowColumnOverflow2 = flowColumnOverflow;
                    }
                    horizontal4 = start;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start2 = Arrangement.INSTANCE.getStart();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        start2 = horizontal;
                    }
                    if (i19 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowColumnOverflow.Companion.getClip();
                    } else {
                        clip = flowColumnOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z10 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z10 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList6 = new ArrayList();
                        arrayList6.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList6);
                        composerStartRestartGroup.updateRememberedValue(arrayList6);
                        obj = arrayList6;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList7 = new ArrayList();
                        arrayList7.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList7);
                        composerStartRestartGroup.updateRememberedValue(arrayList7);
                        obj = arrayList7;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy4 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                    Modifier modifier7 = modifier3;
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
                    Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion4, composerM5355constructorimpl4, measurePolicy4, composerM5355constructorimpl4, currentCompositionLocalMap4);
                    Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl4, Integer.valueOf(iHashCode4), composerM5355constructorimpl4));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    horizontal3 = start2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier7;
                    composer2 = composerStartRestartGroup;
                    flowColumnOverflow2 = clip;
                    vertical3 = top;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    horizontal3 = horizontal;
                    vertical3 = vertical2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowColumnOverflow2 = flowColumnOverflow;
                }
                horizontal4 = start;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    start = horizontal2;
                    if (composerStartRestartGroup.changed(start)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start2 = Arrangement.INSTANCE.getStart();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            start2 = horizontal;
                        }
                        if (i19 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowColumnOverflow.Companion.getClip();
                        } else {
                            clip = flowColumnOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z11 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z11 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList8 = new ArrayList();
                            arrayList8.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList8);
                            composerStartRestartGroup.updateRememberedValue(arrayList8);
                            obj = arrayList8;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList9 = new ArrayList();
                            arrayList9.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList9);
                            composerStartRestartGroup.updateRememberedValue(arrayList9);
                            obj = arrayList9;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy5 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        Modifier modifier8 = modifier3;
                        constructor = companion5.getConstructor();
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
                        jg.d(companion5, composerM5355constructorimpl5, measurePolicy5, composerM5355constructorimpl5, currentCompositionLocalMap5);
                        Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, (bm3<? super T, ? super Modifier, j59>) hm.b(companion5, composerM5355constructorimpl5, Integer.valueOf(iHashCode5), composerM5355constructorimpl5));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        horizontal3 = start2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier8;
                        composer2 = composerStartRestartGroup;
                        flowColumnOverflow2 = clip;
                        vertical3 = top;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        horizontal3 = horizontal;
                        vertical3 = vertical2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowColumnOverflow2 = flowColumnOverflow;
                    }
                    horizontal4 = start;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start2 = Arrangement.INSTANCE.getStart();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        start2 = horizontal;
                    }
                    if (i19 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowColumnOverflow.Companion.getClip();
                    } else {
                        clip = flowColumnOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z12 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z12 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList10 = new ArrayList();
                        arrayList10.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList10);
                        composerStartRestartGroup.updateRememberedValue(arrayList10);
                        obj = arrayList10;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList11 = new ArrayList();
                        arrayList11.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList11);
                        composerStartRestartGroup.updateRememberedValue(arrayList11);
                        obj = arrayList11;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy6 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    Modifier modifier9 = modifier3;
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
                    Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion6, composerM5355constructorimpl6, measurePolicy6, composerM5355constructorimpl6, currentCompositionLocalMap6);
                    Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, (bm3<? super T, ? super Modifier, j59>) hm.b(companion6, composerM5355constructorimpl6, Integer.valueOf(iHashCode6), composerM5355constructorimpl6));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    horizontal3 = start2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier9;
                    composer2 = composerStartRestartGroup;
                    flowColumnOverflow2 = clip;
                    vertical3 = top;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    horizontal3 = horizontal;
                    vertical3 = vertical2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowColumnOverflow2 = flowColumnOverflow;
                }
                horizontal4 = start;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            start = horizontal2;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start2 = Arrangement.INSTANCE.getStart();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        start2 = horizontal;
                    }
                    if (i19 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowColumnOverflow.Companion.getClip();
                    } else {
                        clip = flowColumnOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z13 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z13 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList12 = new ArrayList();
                        arrayList12.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList12);
                        composerStartRestartGroup.updateRememberedValue(arrayList12);
                        obj = arrayList12;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList13 = new ArrayList();
                        arrayList13.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList13);
                        composerStartRestartGroup.updateRememberedValue(arrayList13);
                        obj = arrayList13;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy7 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                    Modifier modifier10 = modifier3;
                    constructor = companion7.getConstructor();
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
                    jg.d(companion7, composerM5355constructorimpl7, measurePolicy7, composerM5355constructorimpl7, currentCompositionLocalMap7);
                    Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, (bm3<? super T, ? super Modifier, j59>) hm.b(companion7, composerM5355constructorimpl7, Integer.valueOf(iHashCode7), composerM5355constructorimpl7));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    horizontal3 = start2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier10;
                    composer2 = composerStartRestartGroup;
                    flowColumnOverflow2 = clip;
                    vertical3 = top;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    horizontal3 = horizontal;
                    vertical3 = vertical2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowColumnOverflow2 = flowColumnOverflow;
                }
                horizontal4 = start;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical2;
                }
                if (i6 != 0) {
                    start2 = Arrangement.INSTANCE.getStart();
                    i19 = i8;
                } else {
                    i19 = i8;
                    start2 = horizontal;
                }
                if (i19 != 0) {
                    start = Alignment.Companion.getStart();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowColumnOverflow.Companion.getClip();
                } else {
                    clip = flowColumnOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z14 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z14 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList14 = new ArrayList();
                    arrayList14.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList14);
                    composerStartRestartGroup.updateRememberedValue(arrayList14);
                    obj = arrayList14;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList15 = new ArrayList();
                    arrayList15.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList15);
                    composerStartRestartGroup.updateRememberedValue(arrayList15);
                    obj = arrayList15;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy8 = (MeasurePolicy) objRememberedValue3;
                int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                Modifier modifier11 = modifier3;
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
                Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion8, composerM5355constructorimpl8, measurePolicy8, composerM5355constructorimpl8, currentCompositionLocalMap8);
                Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, (bm3<? super T, ? super Modifier, j59>) hm.b(companion8, composerM5355constructorimpl8, Integer.valueOf(iHashCode8), composerM5355constructorimpl8));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                horizontal3 = start2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier11;
                composer2 = composerStartRestartGroup;
                flowColumnOverflow2 = clip;
                vertical3 = top;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                horizontal3 = horizontal;
                vertical3 = vertical2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowColumnOverflow2 = flowColumnOverflow;
            }
            horizontal4 = start;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= 48;
        vertical2 = vertical;
        i6 = i4 & 4;
        if (i6 != 0) {
            if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(horizontal)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i5 |= i7;
            }
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    start = horizontal2;
                    if (composerStartRestartGroup.changed(start)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start2 = Arrangement.INSTANCE.getStart();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            start2 = horizontal;
                        }
                        if (i19 != 0) {
                            start = Alignment.Companion.getStart();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowColumnOverflow.Companion.getClip();
                        } else {
                            clip = flowColumnOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z15 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z15 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList16 = new ArrayList();
                            arrayList16.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList16);
                            composerStartRestartGroup.updateRememberedValue(arrayList16);
                            obj = arrayList16;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList17 = new ArrayList();
                            arrayList17.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList17);
                            composerStartRestartGroup.updateRememberedValue(arrayList17);
                            obj = arrayList17;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy9 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode9 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                        Modifier modifier12 = modifier3;
                        constructor = companion9.getConstructor();
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
                        jg.d(companion9, composerM5355constructorimpl9, measurePolicy9, composerM5355constructorimpl9, currentCompositionLocalMap9);
                        Updater.m5363setimpl(composerM5355constructorimpl9, modifierMaterializeModifier9, (bm3<? super T, ? super Modifier, j59>) hm.b(companion9, composerM5355constructorimpl9, Integer.valueOf(iHashCode9), composerM5355constructorimpl9));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        horizontal3 = start2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier12;
                        composer2 = composerStartRestartGroup;
                        flowColumnOverflow2 = clip;
                        vertical3 = top;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        horizontal3 = horizontal;
                        vertical3 = vertical2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowColumnOverflow2 = flowColumnOverflow;
                    }
                    horizontal4 = start;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start2 = Arrangement.INSTANCE.getStart();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        start2 = horizontal;
                    }
                    if (i19 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowColumnOverflow.Companion.getClip();
                    } else {
                        clip = flowColumnOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z16 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z16 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList18 = new ArrayList();
                        arrayList18.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList18);
                        composerStartRestartGroup.updateRememberedValue(arrayList18);
                        obj = arrayList18;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList19 = new ArrayList();
                        arrayList19.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList19);
                        composerStartRestartGroup.updateRememberedValue(arrayList19);
                        obj = arrayList19;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy10 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode10 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    Modifier modifier13 = modifier3;
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
                    Composer composerM5355constructorimpl10 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion10, composerM5355constructorimpl10, measurePolicy10, composerM5355constructorimpl10, currentCompositionLocalMap10);
                    Updater.m5363setimpl(composerM5355constructorimpl10, modifierMaterializeModifier10, (bm3<? super T, ? super Modifier, j59>) hm.b(companion10, composerM5355constructorimpl10, Integer.valueOf(iHashCode10), composerM5355constructorimpl10));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    horizontal3 = start2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier13;
                    composer2 = composerStartRestartGroup;
                    flowColumnOverflow2 = clip;
                    vertical3 = top;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    horizontal3 = horizontal;
                    vertical3 = vertical2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowColumnOverflow2 = flowColumnOverflow;
                }
                horizontal4 = start;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            start = horizontal2;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start2 = Arrangement.INSTANCE.getStart();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        start2 = horizontal;
                    }
                    if (i19 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowColumnOverflow.Companion.getClip();
                    } else {
                        clip = flowColumnOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z17 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z17 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList110 = new ArrayList();
                        arrayList110.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList110);
                        composerStartRestartGroup.updateRememberedValue(arrayList110);
                        obj = arrayList110;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList111 = new ArrayList();
                        arrayList111.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList111);
                        composerStartRestartGroup.updateRememberedValue(arrayList111);
                        obj = arrayList111;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy11 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode11 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    Modifier modifier14 = modifier3;
                    constructor = companion11.getConstructor();
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
                    jg.d(companion11, composerM5355constructorimpl11, measurePolicy11, composerM5355constructorimpl11, currentCompositionLocalMap11);
                    Updater.m5363setimpl(composerM5355constructorimpl11, modifierMaterializeModifier11, (bm3<? super T, ? super Modifier, j59>) hm.b(companion11, composerM5355constructorimpl11, Integer.valueOf(iHashCode11), composerM5355constructorimpl11));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    horizontal3 = start2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier14;
                    composer2 = composerStartRestartGroup;
                    flowColumnOverflow2 = clip;
                    vertical3 = top;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    horizontal3 = horizontal;
                    vertical3 = vertical2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowColumnOverflow2 = flowColumnOverflow;
                }
                horizontal4 = start;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical2;
                }
                if (i6 != 0) {
                    start2 = Arrangement.INSTANCE.getStart();
                    i19 = i8;
                } else {
                    i19 = i8;
                    start2 = horizontal;
                }
                if (i19 != 0) {
                    start = Alignment.Companion.getStart();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowColumnOverflow.Companion.getClip();
                } else {
                    clip = flowColumnOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z18 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z18 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList112 = new ArrayList();
                    arrayList112.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList112);
                    composerStartRestartGroup.updateRememberedValue(arrayList112);
                    obj = arrayList112;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList113 = new ArrayList();
                    arrayList113.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList113);
                    composerStartRestartGroup.updateRememberedValue(arrayList113);
                    obj = arrayList113;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy12 = (MeasurePolicy) objRememberedValue3;
                int iHashCode12 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                Modifier modifier15 = modifier3;
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
                Composer composerM5355constructorimpl12 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion12, composerM5355constructorimpl12, measurePolicy12, composerM5355constructorimpl12, currentCompositionLocalMap12);
                Updater.m5363setimpl(composerM5355constructorimpl12, modifierMaterializeModifier12, (bm3<? super T, ? super Modifier, j59>) hm.b(companion12, composerM5355constructorimpl12, Integer.valueOf(iHashCode12), composerM5355constructorimpl12));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                horizontal3 = start2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier15;
                composer2 = composerStartRestartGroup;
                flowColumnOverflow2 = clip;
                vertical3 = top;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                horizontal3 = horizontal;
                vertical3 = vertical2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowColumnOverflow2 = flowColumnOverflow;
            }
            horizontal4 = start;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        i8 = i4 & 8;
        if (i8 != 0) {
            if ((i3 & 3072) == 0) {
                start = horizontal2;
                if (composerStartRestartGroup.changed(start)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i5 |= i9;
            }
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start2 = Arrangement.INSTANCE.getStart();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        start2 = horizontal;
                    }
                    if (i19 != 0) {
                        start = Alignment.Companion.getStart();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowColumnOverflow.Companion.getClip();
                    } else {
                        clip = flowColumnOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z19 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z19 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList114 = new ArrayList();
                        arrayList114.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList114);
                        composerStartRestartGroup.updateRememberedValue(arrayList114);
                        obj = arrayList114;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList115 = new ArrayList();
                        arrayList115.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList115);
                        composerStartRestartGroup.updateRememberedValue(arrayList115);
                        obj = arrayList115;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy13 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode13 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    Modifier modifier16 = modifier3;
                    constructor = companion13.getConstructor();
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
                    jg.d(companion13, composerM5355constructorimpl13, measurePolicy13, composerM5355constructorimpl13, currentCompositionLocalMap13);
                    Updater.m5363setimpl(composerM5355constructorimpl13, modifierMaterializeModifier13, (bm3<? super T, ? super Modifier, j59>) hm.b(companion13, composerM5355constructorimpl13, Integer.valueOf(iHashCode13), composerM5355constructorimpl13));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    horizontal3 = start2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier16;
                    composer2 = composerStartRestartGroup;
                    flowColumnOverflow2 = clip;
                    vertical3 = top;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    horizontal3 = horizontal;
                    vertical3 = vertical2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowColumnOverflow2 = flowColumnOverflow;
                }
                horizontal4 = start;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical2;
                }
                if (i6 != 0) {
                    start2 = Arrangement.INSTANCE.getStart();
                    i19 = i8;
                } else {
                    i19 = i8;
                    start2 = horizontal;
                }
                if (i19 != 0) {
                    start = Alignment.Companion.getStart();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowColumnOverflow.Companion.getClip();
                } else {
                    clip = flowColumnOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z110 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z110 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList116 = new ArrayList();
                    arrayList116.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList116);
                    composerStartRestartGroup.updateRememberedValue(arrayList116);
                    obj = arrayList116;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList117 = new ArrayList();
                    arrayList117.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList117);
                    composerStartRestartGroup.updateRememberedValue(arrayList117);
                    obj = arrayList117;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy14 = (MeasurePolicy) objRememberedValue3;
                int iHashCode14 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                Modifier modifier17 = modifier3;
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
                Composer composerM5355constructorimpl14 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion14, composerM5355constructorimpl14, measurePolicy14, composerM5355constructorimpl14, currentCompositionLocalMap14);
                Updater.m5363setimpl(composerM5355constructorimpl14, modifierMaterializeModifier14, (bm3<? super T, ? super Modifier, j59>) hm.b(companion14, composerM5355constructorimpl14, Integer.valueOf(iHashCode14), composerM5355constructorimpl14));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                horizontal3 = start2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier17;
                composer2 = composerStartRestartGroup;
                flowColumnOverflow2 = clip;
                vertical3 = top;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                horizontal3 = horizontal;
                vertical3 = vertical2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowColumnOverflow2 = flowColumnOverflow;
            }
            horizontal4 = start;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= 3072;
        start = horizontal2;
        i10 = i4 & 16;
        if (i10 != 0) {
            if ((i3 & 24576) == 0) {
                i11 = i;
                if (composerStartRestartGroup.changed(i11)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i5 |= i12;
            }
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical2;
                }
                if (i6 != 0) {
                    start2 = Arrangement.INSTANCE.getStart();
                    i19 = i8;
                } else {
                    i19 = i8;
                    start2 = horizontal;
                }
                if (i19 != 0) {
                    start = Alignment.Companion.getStart();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowColumnOverflow.Companion.getClip();
                } else {
                    clip = flowColumnOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z111 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z111 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList118 = new ArrayList();
                    arrayList118.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList118);
                    composerStartRestartGroup.updateRememberedValue(arrayList118);
                    obj = arrayList118;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList119 = new ArrayList();
                    arrayList119.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList119);
                    composerStartRestartGroup.updateRememberedValue(arrayList119);
                    obj = arrayList119;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy15 = (MeasurePolicy) objRememberedValue3;
                int iHashCode15 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                Modifier modifier18 = modifier3;
                constructor = companion15.getConstructor();
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
                jg.d(companion15, composerM5355constructorimpl15, measurePolicy15, composerM5355constructorimpl15, currentCompositionLocalMap15);
                Updater.m5363setimpl(composerM5355constructorimpl15, modifierMaterializeModifier15, (bm3<? super T, ? super Modifier, j59>) hm.b(companion15, composerM5355constructorimpl15, Integer.valueOf(iHashCode15), composerM5355constructorimpl15));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                horizontal3 = start2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier18;
                composer2 = composerStartRestartGroup;
                flowColumnOverflow2 = clip;
                vertical3 = top;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                horizontal3 = horizontal;
                vertical3 = vertical2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowColumnOverflow2 = flowColumnOverflow;
            }
            horizontal4 = start;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= 24576;
        i11 = i;
        i13 = i4 & 32;
        if (i13 != 0) {
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(i2)) {
                i14 = 131072;
            } else {
                i14 = 65536;
            }
            i5 |= i14;
        }
        i15 = i4 & 64;
        if (i15 != 0) {
            i5 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            if (composerStartRestartGroup.changed(flowColumnOverflow)) {
                i16 = 1048576;
            } else {
                i16 = 524288;
            }
            i5 |= i16;
        }
        if ((i3 & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i23 = 8388608;
            } else {
                i23 = 4194304;
            }
            i5 |= i23;
        }
        if ((i5 & 4793491) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
            if (i24 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier;
            }
            if (i25 != 0) {
                top = Arrangement.INSTANCE.getTop();
            } else {
                top = vertical2;
            }
            if (i6 != 0) {
                start2 = Arrangement.INSTANCE.getStart();
                i19 = i8;
            } else {
                i19 = i8;
                start2 = horizontal;
            }
            if (i19 != 0) {
                start = Alignment.Companion.getStart();
            }
            if (i10 != 0) {
                i20 = Integer.MAX_VALUE;
            } else {
                i20 = i11;
            }
            if (i13 != 0) {
                i21 = Integer.MAX_VALUE;
            } else {
                i21 = i2;
            }
            if (i15 != 0) {
                clip = FlowColumnOverflow.Companion.getClip();
            } else {
                clip = flowColumnOverflow;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1944405121, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:213)");
            }
            i22 = 3670016 & i5;
            if (i22 == 1048576) {
                z2 = true;
            } else {
                z2 = false;
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z2) {
                objRememberedValue = clip.createOverflowState$foundation_layout();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = clip.createOverflowState$foundation_layout();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
            multiContentMeasurePolicyColumnMeasurementMultiContentHelper = columnMeasurementMultiContentHelper(top, start2, start, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (i22 == 1048576) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((29360128 & i5) == 8388608) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z112 = z4 | z3;
            if ((i5 & 458752) == 131072) {
                z5 = true;
            } else {
                z5 = false;
            }
            z6 = z112 | z5;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z6) {
                obj = objRememberedValue2;
                ArrayList arrayList1110 = new ArrayList();
                arrayList1110.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                    }
                }));
                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList1110);
                composerStartRestartGroup.updateRememberedValue(arrayList1110);
                obj = arrayList1110;
            } else {
                obj = objRememberedValue2;
                ArrayList arrayList1111 = new ArrayList();
                arrayList1111.add(ComposableLambdaKt.composableLambdaInstance(-1720407857, true, new bm3() { // from class: if3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                    }
                }));
                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList1111);
                composerStartRestartGroup.updateRememberedValue(arrayList1111);
                obj = arrayList1111;
            }
            obj = objRememberedValue2;
            bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
            zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyColumnMeasurementMultiContentHelper);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            MeasurePolicy measurePolicy16 = (MeasurePolicy) objRememberedValue3;
            int iHashCode16 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
            Modifier modifier19 = modifier3;
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
            Composer composerM5355constructorimpl16 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion16, composerM5355constructorimpl16, measurePolicy16, composerM5355constructorimpl16, currentCompositionLocalMap16);
            Updater.m5363setimpl(composerM5355constructorimpl16, modifierMaterializeModifier16, (bm3<? super T, ? super Modifier, j59>) hm.b(companion16, composerM5355constructorimpl16, Integer.valueOf(iHashCode16), composerM5355constructorimpl16));
            if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                ComposerKt.traceEventEnd();
            }
            horizontal3 = start2;
            i17 = i20;
            i18 = i21;
            modifier2 = modifier19;
            composer2 = composerStartRestartGroup;
            flowColumnOverflow2 = clip;
            vertical3 = top;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
            horizontal3 = horizontal;
            vertical3 = vertical2;
            composer2 = composerStartRestartGroup;
            i17 = i11;
            i18 = i2;
            flowColumnOverflow2 = flowColumnOverflow;
        }
        horizontal4 = start;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jf3
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return FlowLayoutKt.FlowColumn$lambda$2(modifier2, vertical3, horizontal3, horizontal4, i17, i18, flowColumnOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 FlowColumn$lambda$1$0(dm3 dm3Var, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1720407857, i, -1, "androidx.compose.foundation.layout.FlowColumn.<anonymous>.<anonymous> (FlowLayout.kt:227)");
            }
            dm3Var.invoke(FlowColumnScopeInstance.INSTANCE, composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 FlowColumn$lambda$2(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, FlowColumnOverflow flowColumnOverflow, dm3 dm3Var, int i3, int i4, Composer composer, int i5) {
        FlowColumn(modifier, vertical, horizontal, horizontal2, i, i2, flowColumnOverflow, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 FlowColumn$lambda$3(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, dm3 dm3Var, int i3, int i4, Composer composer, int i5) {
        FlowColumn(modifier, vertical, horizontal, horizontal2, i, i2, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0122  */
    /* JADX WARN: Code duplicated, block: B:103:0x012e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0130  */
    /* JADX WARN: Code duplicated, block: B:106:0x0133  */
    /* JADX WARN: Code duplicated, block: B:107:0x0135  */
    /* JADX WARN: Code duplicated, block: B:109:0x0139  */
    /* JADX WARN: Code duplicated, block: B:110:0x0140  */
    /* JADX WARN: Code duplicated, block: B:113:0x0148  */
    /* JADX WARN: Code duplicated, block: B:116:0x0158  */
    /* JADX WARN: Code duplicated, block: B:117:0x015a  */
    /* JADX WARN: Code duplicated, block: B:120:0x0161  */
    /* JADX WARN: Code duplicated, block: B:122:0x0169  */
    /* JADX WARN: Code duplicated, block: B:125:0x0186  */
    /* JADX WARN: Code duplicated, block: B:126:0x0188  */
    /* JADX WARN: Code duplicated, block: B:129:0x0190  */
    /* JADX WARN: Code duplicated, block: B:130:0x0192  */
    /* JADX WARN: Code duplicated, block: B:133:0x019b  */
    /* JADX WARN: Code duplicated, block: B:134:0x019d  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:142:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:144:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:147:0x0208  */
    /* JADX WARN: Code duplicated, block: B:150:0x0214  */
    /* JADX WARN: Code duplicated, block: B:151:0x0218  */
    /* JADX WARN: Code duplicated, block: B:154:0x0234  */
    /* JADX WARN: Code duplicated, block: B:157:0x0242  */
    /* JADX WARN: Code duplicated, block: B:160:0x0259  */
    /* JADX WARN: Code duplicated, block: B:162:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    /* JADX WARN: Code duplicated, block: B:59:0x009d  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:81:0x00df  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:92:0x0102  */
    /* JADX WARN: Code duplicated, block: B:94:0x0106  */
    /* JADX WARN: Code duplicated, block: B:95:0x010e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0111  */
    /* JADX WARN: Code duplicated, block: B:98:0x011d  */
    @ul2
    public static final void FlowRow(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, FlowRowOverflow flowRowOverflow, final dm3<? super FlowRowScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i3, final int i4) {
        int i5;
        Arrangement.Horizontal horizontal2;
        int i6;
        int i7;
        int i8;
        Alignment.Vertical top;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z;
        final Modifier modifier2;
        final Arrangement.Vertical vertical3;
        final Arrangement.Horizontal horizontal3;
        Composer composer2;
        final int i17;
        final int i18;
        final FlowRowOverflow flowRowOverflow2;
        final Alignment.Vertical vertical4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        Arrangement.Horizontal start;
        int i19;
        Arrangement.Vertical top2;
        int i20;
        int i21;
        FlowRowOverflow clip;
        int i22;
        boolean z2;
        Object objRememberedValue;
        FlowLayoutOverflowState flowLayoutOverflowState;
        MultiContentMeasurePolicy multiContentMeasurePolicyRowMeasurementMultiContentHelper;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        Object objRememberedValue2;
        Object obj;
        bm3<Composer, Integer, j59> bm3VarCombineAsVirtualLayouts;
        boolean zChanged;
        Object objRememberedValue3;
        ll3<ComposeUiNode> constructor;
        int i23;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1956591841);
        int i24 = i4 & 1;
        if (i24 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i25 = i4 & 2;
        if (i25 == 0) {
            if ((i3 & 48) == 0) {
                horizontal2 = horizontal;
                i5 |= composerStartRestartGroup.changed(horizontal2) ? 32 : 16;
            }
            i6 = i4 & 4;
            if (i6 != 0) {
                if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(vertical)) {
                        i7 = 256;
                    } else {
                        i7 = 128;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 8;
                if (i8 != 0) {
                    if ((i3 & 3072) == 0) {
                        top = vertical2;
                        if (composerStartRestartGroup.changed(top)) {
                            i9 = 2048;
                        } else {
                            i9 = 1024;
                        }
                        i5 |= i9;
                    }
                    i10 = i4 & 16;
                    if (i10 != 0) {
                        if ((i3 & 24576) == 0) {
                            i11 = i;
                            if (composerStartRestartGroup.changed(i11)) {
                                i12 = 16384;
                            } else {
                                i12 = 8192;
                            }
                            i5 |= i12;
                        }
                        i13 = i4 & 32;
                        if (i13 != 0) {
                            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(i2)) {
                                i14 = 131072;
                            } else {
                                i14 = 65536;
                            }
                            i5 |= i14;
                        }
                        i15 = i4 & 64;
                        if (i15 != 0) {
                            i5 |= 1572864;
                        } else if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changed(flowRowOverflow)) {
                                i16 = 1048576;
                            } else {
                                i16 = 524288;
                            }
                            i5 |= i16;
                        }
                        if ((i3 & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i23 = 8388608;
                            } else {
                                i23 = 4194304;
                            }
                            i5 |= i23;
                        }
                        if ((i5 & 4793491) != 4793490) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i24 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier;
                            }
                            if (i25 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal2;
                            }
                            if (i6 != 0) {
                                top2 = Arrangement.INSTANCE.getTop();
                                i19 = i8;
                            } else {
                                i19 = i8;
                                top2 = vertical;
                            }
                            if (i19 != 0) {
                                top = Alignment.Companion.getTop();
                            }
                            if (i10 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i11;
                            }
                            if (i13 != 0) {
                                i21 = Integer.MAX_VALUE;
                            } else {
                                i21 = i2;
                            }
                            if (i15 != 0) {
                                clip = FlowRowOverflow.Companion.getClip();
                            } else {
                                clip = flowRowOverflow;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                            }
                            i22 = 3670016 & i5;
                            if (i22 == 1048576) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = clip.createOverflowState$foundation_layout();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                            multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                            if (i22 == 1048576) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if ((29360128 & i5) == 8388608) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            boolean z7 = z4 | z3;
                            if ((i5 & 458752) == 131072) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            z6 = z7 | z5;
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z6 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                obj = objRememberedValue2;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj2, Object obj3) {
                                        int iIntValue = ((Integer) obj3).intValue();
                                        return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                    }
                                }));
                                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList);
                                composerStartRestartGroup.updateRememberedValue(arrayList);
                                obj = arrayList;
                            }
                            obj = objRememberedValue2;
                            bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                            zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue3;
                            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            Modifier modifier4 = modifier3;
                            constructor = companion.getConstructor();
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
                            jg.d(companion, composerM5355constructorimpl, measurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                            if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                                ComposerKt.traceEventEnd();
                            }
                            vertical3 = top2;
                            i17 = i20;
                            i18 = i21;
                            modifier2 = modifier4;
                            composer2 = composerStartRestartGroup;
                            flowRowOverflow2 = clip;
                            horizontal3 = start;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier2 = modifier;
                            vertical3 = vertical;
                            horizontal3 = horizontal2;
                            composer2 = composerStartRestartGroup;
                            i17 = i11;
                            i18 = i2;
                            flowRowOverflow2 = flowRowOverflow;
                        }
                        vertical4 = top;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= 24576;
                    i11 = i;
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowRowOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top2 = Arrangement.INSTANCE.getTop();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            top2 = vertical;
                        }
                        if (i19 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowRowOverflow.Companion.getClip();
                        } else {
                            clip = flowRowOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z8 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z8 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList2);
                            composerStartRestartGroup.updateRememberedValue(arrayList2);
                            obj = arrayList2;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList3);
                            composerStartRestartGroup.updateRememberedValue(arrayList3);
                            obj = arrayList3;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy2 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        Modifier modifier5 = modifier3;
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
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        jg.d(companion2, composerM5355constructorimpl2, measurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        vertical3 = top2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier5;
                        composer2 = composerStartRestartGroup;
                        flowRowOverflow2 = clip;
                        horizontal3 = start;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        vertical3 = vertical;
                        horizontal3 = horizontal2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowRowOverflow2 = flowRowOverflow;
                    }
                    vertical4 = top;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 3072;
                top = vertical2;
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowRowOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top2 = Arrangement.INSTANCE.getTop();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            top2 = vertical;
                        }
                        if (i19 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowRowOverflow.Companion.getClip();
                        } else {
                            clip = flowRowOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z9 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z9 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList4 = new ArrayList();
                            arrayList4.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList4);
                            composerStartRestartGroup.updateRememberedValue(arrayList4);
                            obj = arrayList4;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList5 = new ArrayList();
                            arrayList5.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList5);
                            composerStartRestartGroup.updateRememberedValue(arrayList5);
                            obj = arrayList5;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy3 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        Modifier modifier6 = modifier3;
                        constructor = companion3.getConstructor();
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
                        jg.d(companion3, composerM5355constructorimpl3, measurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap3);
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl3, Integer.valueOf(iHashCode3), composerM5355constructorimpl3));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        vertical3 = top2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier6;
                        composer2 = composerStartRestartGroup;
                        flowRowOverflow2 = clip;
                        horizontal3 = start;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        vertical3 = vertical;
                        horizontal3 = horizontal2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowRowOverflow2 = flowRowOverflow;
                    }
                    vertical4 = top;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowRowOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top2 = Arrangement.INSTANCE.getTop();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        top2 = vertical;
                    }
                    if (i19 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowRowOverflow.Companion.getClip();
                    } else {
                        clip = flowRowOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z10 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z10 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList6 = new ArrayList();
                        arrayList6.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList6);
                        composerStartRestartGroup.updateRememberedValue(arrayList6);
                        obj = arrayList6;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList7 = new ArrayList();
                        arrayList7.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList7);
                        composerStartRestartGroup.updateRememberedValue(arrayList7);
                        obj = arrayList7;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy4 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode4 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                    Modifier modifier7 = modifier3;
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
                    Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion4, composerM5355constructorimpl4, measurePolicy4, composerM5355constructorimpl4, currentCompositionLocalMap4);
                    Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, (bm3<? super T, ? super Modifier, j59>) hm.b(companion4, composerM5355constructorimpl4, Integer.valueOf(iHashCode4), composerM5355constructorimpl4));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    vertical3 = top2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier7;
                    composer2 = composerStartRestartGroup;
                    flowRowOverflow2 = clip;
                    horizontal3 = start;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    vertical3 = vertical;
                    horizontal3 = horizontal2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowRowOverflow2 = flowRowOverflow;
                }
                vertical4 = top;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    top = vertical2;
                    if (composerStartRestartGroup.changed(top)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowRowOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top2 = Arrangement.INSTANCE.getTop();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            top2 = vertical;
                        }
                        if (i19 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowRowOverflow.Companion.getClip();
                        } else {
                            clip = flowRowOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z11 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z11 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList8 = new ArrayList();
                            arrayList8.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList8);
                            composerStartRestartGroup.updateRememberedValue(arrayList8);
                            obj = arrayList8;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList9 = new ArrayList();
                            arrayList9.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList9);
                            composerStartRestartGroup.updateRememberedValue(arrayList9);
                            obj = arrayList9;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy5 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode5 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        Modifier modifier8 = modifier3;
                        constructor = companion5.getConstructor();
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
                        jg.d(companion5, composerM5355constructorimpl5, measurePolicy5, composerM5355constructorimpl5, currentCompositionLocalMap5);
                        Updater.m5363setimpl(composerM5355constructorimpl5, modifierMaterializeModifier5, (bm3<? super T, ? super Modifier, j59>) hm.b(companion5, composerM5355constructorimpl5, Integer.valueOf(iHashCode5), composerM5355constructorimpl5));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        vertical3 = top2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier8;
                        composer2 = composerStartRestartGroup;
                        flowRowOverflow2 = clip;
                        horizontal3 = start;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        vertical3 = vertical;
                        horizontal3 = horizontal2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowRowOverflow2 = flowRowOverflow;
                    }
                    vertical4 = top;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowRowOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top2 = Arrangement.INSTANCE.getTop();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        top2 = vertical;
                    }
                    if (i19 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowRowOverflow.Companion.getClip();
                    } else {
                        clip = flowRowOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z12 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z12 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList10 = new ArrayList();
                        arrayList10.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList10);
                        composerStartRestartGroup.updateRememberedValue(arrayList10);
                        obj = arrayList10;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList11 = new ArrayList();
                        arrayList11.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList11);
                        composerStartRestartGroup.updateRememberedValue(arrayList11);
                        obj = arrayList11;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy6 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode6 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    Modifier modifier9 = modifier3;
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
                    Composer composerM5355constructorimpl6 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion6, composerM5355constructorimpl6, measurePolicy6, composerM5355constructorimpl6, currentCompositionLocalMap6);
                    Updater.m5363setimpl(composerM5355constructorimpl6, modifierMaterializeModifier6, (bm3<? super T, ? super Modifier, j59>) hm.b(companion6, composerM5355constructorimpl6, Integer.valueOf(iHashCode6), composerM5355constructorimpl6));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    vertical3 = top2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier9;
                    composer2 = composerStartRestartGroup;
                    flowRowOverflow2 = clip;
                    horizontal3 = start;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    vertical3 = vertical;
                    horizontal3 = horizontal2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowRowOverflow2 = flowRowOverflow;
                }
                vertical4 = top;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            top = vertical2;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowRowOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top2 = Arrangement.INSTANCE.getTop();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        top2 = vertical;
                    }
                    if (i19 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowRowOverflow.Companion.getClip();
                    } else {
                        clip = flowRowOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z13 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z13 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList12 = new ArrayList();
                        arrayList12.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList12);
                        composerStartRestartGroup.updateRememberedValue(arrayList12);
                        obj = arrayList12;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList13 = new ArrayList();
                        arrayList13.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList13);
                        composerStartRestartGroup.updateRememberedValue(arrayList13);
                        obj = arrayList13;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy7 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode7 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                    Modifier modifier10 = modifier3;
                    constructor = companion7.getConstructor();
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
                    jg.d(companion7, composerM5355constructorimpl7, measurePolicy7, composerM5355constructorimpl7, currentCompositionLocalMap7);
                    Updater.m5363setimpl(composerM5355constructorimpl7, modifierMaterializeModifier7, (bm3<? super T, ? super Modifier, j59>) hm.b(companion7, composerM5355constructorimpl7, Integer.valueOf(iHashCode7), composerM5355constructorimpl7));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    vertical3 = top2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier10;
                    composer2 = composerStartRestartGroup;
                    flowRowOverflow2 = clip;
                    horizontal3 = start;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    vertical3 = vertical;
                    horizontal3 = horizontal2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowRowOverflow2 = flowRowOverflow;
                }
                vertical4 = top;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowRowOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top2 = Arrangement.INSTANCE.getTop();
                    i19 = i8;
                } else {
                    i19 = i8;
                    top2 = vertical;
                }
                if (i19 != 0) {
                    top = Alignment.Companion.getTop();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowRowOverflow.Companion.getClip();
                } else {
                    clip = flowRowOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z14 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z14 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList14 = new ArrayList();
                    arrayList14.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList14);
                    composerStartRestartGroup.updateRememberedValue(arrayList14);
                    obj = arrayList14;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList15 = new ArrayList();
                    arrayList15.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList15);
                    composerStartRestartGroup.updateRememberedValue(arrayList15);
                    obj = arrayList15;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy8 = (MeasurePolicy) objRememberedValue3;
                int iHashCode8 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                Modifier modifier11 = modifier3;
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
                Composer composerM5355constructorimpl8 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion8, composerM5355constructorimpl8, measurePolicy8, composerM5355constructorimpl8, currentCompositionLocalMap8);
                Updater.m5363setimpl(composerM5355constructorimpl8, modifierMaterializeModifier8, (bm3<? super T, ? super Modifier, j59>) hm.b(companion8, composerM5355constructorimpl8, Integer.valueOf(iHashCode8), composerM5355constructorimpl8));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                vertical3 = top2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier11;
                composer2 = composerStartRestartGroup;
                flowRowOverflow2 = clip;
                horizontal3 = start;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                vertical3 = vertical;
                horizontal3 = horizontal2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowRowOverflow2 = flowRowOverflow;
            }
            vertical4 = top;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= 48;
        horizontal2 = horizontal;
        i6 = i4 & 4;
        if (i6 != 0) {
            if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(vertical)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i5 |= i7;
            }
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    top = vertical2;
                    if (composerStartRestartGroup.changed(top)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i14 = 131072;
                        } else {
                            i14 = 65536;
                        }
                        i5 |= i14;
                    }
                    i15 = i4 & 64;
                    if (i15 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(flowRowOverflow)) {
                            i16 = 1048576;
                        } else {
                            i16 = 524288;
                        }
                        i5 |= i16;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i23 = 8388608;
                        } else {
                            i23 = 4194304;
                        }
                        i5 |= i23;
                    }
                    if ((i5 & 4793491) != 4793490) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i24 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier;
                        }
                        if (i25 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top2 = Arrangement.INSTANCE.getTop();
                            i19 = i8;
                        } else {
                            i19 = i8;
                            top2 = vertical;
                        }
                        if (i19 != 0) {
                            top = Alignment.Companion.getTop();
                        }
                        if (i10 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i11;
                        }
                        if (i13 != 0) {
                            i21 = Integer.MAX_VALUE;
                        } else {
                            i21 = i2;
                        }
                        if (i15 != 0) {
                            clip = FlowRowOverflow.Companion.getClip();
                        } else {
                            clip = flowRowOverflow;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                        }
                        i22 = 3670016 & i5;
                        if (i22 == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z2) {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = clip.createOverflowState$foundation_layout();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                        multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                        if (i22 == 1048576) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((29360128 & i5) == 8388608) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z15 = z4 | z3;
                        if ((i5 & 458752) == 131072) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        z6 = z15 | z5;
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            obj = objRememberedValue2;
                            ArrayList arrayList16 = new ArrayList();
                            arrayList16.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList16);
                            composerStartRestartGroup.updateRememberedValue(arrayList16);
                            obj = arrayList16;
                        } else {
                            obj = objRememberedValue2;
                            ArrayList arrayList17 = new ArrayList();
                            arrayList17.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj2, Object obj3) {
                                    int iIntValue = ((Integer) obj3).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                                }
                            }));
                            clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList17);
                            composerStartRestartGroup.updateRememberedValue(arrayList17);
                            obj = arrayList17;
                        }
                        obj = objRememberedValue2;
                        bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                        zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        MeasurePolicy measurePolicy9 = (MeasurePolicy) objRememberedValue3;
                        int iHashCode9 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap9 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier9 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                        Modifier modifier12 = modifier3;
                        constructor = companion9.getConstructor();
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
                        jg.d(companion9, composerM5355constructorimpl9, measurePolicy9, composerM5355constructorimpl9, currentCompositionLocalMap9);
                        Updater.m5363setimpl(composerM5355constructorimpl9, modifierMaterializeModifier9, (bm3<? super T, ? super Modifier, j59>) hm.b(companion9, composerM5355constructorimpl9, Integer.valueOf(iHashCode9), composerM5355constructorimpl9));
                        if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                        vertical3 = top2;
                        i17 = i20;
                        i18 = i21;
                        modifier2 = modifier12;
                        composer2 = composerStartRestartGroup;
                        flowRowOverflow2 = clip;
                        horizontal3 = start;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier2 = modifier;
                        vertical3 = vertical;
                        horizontal3 = horizontal2;
                        composer2 = composerStartRestartGroup;
                        i17 = i11;
                        i18 = i2;
                        flowRowOverflow2 = flowRowOverflow;
                    }
                    vertical4 = top;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowRowOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top2 = Arrangement.INSTANCE.getTop();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        top2 = vertical;
                    }
                    if (i19 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowRowOverflow.Companion.getClip();
                    } else {
                        clip = flowRowOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z16 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z16 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList18 = new ArrayList();
                        arrayList18.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList18);
                        composerStartRestartGroup.updateRememberedValue(arrayList18);
                        obj = arrayList18;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList19 = new ArrayList();
                        arrayList19.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList19);
                        composerStartRestartGroup.updateRememberedValue(arrayList19);
                        obj = arrayList19;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy10 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode10 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap10 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier10 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    Modifier modifier13 = modifier3;
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
                    Composer composerM5355constructorimpl10 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    jg.d(companion10, composerM5355constructorimpl10, measurePolicy10, composerM5355constructorimpl10, currentCompositionLocalMap10);
                    Updater.m5363setimpl(composerM5355constructorimpl10, modifierMaterializeModifier10, (bm3<? super T, ? super Modifier, j59>) hm.b(companion10, composerM5355constructorimpl10, Integer.valueOf(iHashCode10), composerM5355constructorimpl10));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    vertical3 = top2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier13;
                    composer2 = composerStartRestartGroup;
                    flowRowOverflow2 = clip;
                    horizontal3 = start;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    vertical3 = vertical;
                    horizontal3 = horizontal2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowRowOverflow2 = flowRowOverflow;
                }
                vertical4 = top;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            top = vertical2;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowRowOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top2 = Arrangement.INSTANCE.getTop();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        top2 = vertical;
                    }
                    if (i19 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowRowOverflow.Companion.getClip();
                    } else {
                        clip = flowRowOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z17 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z17 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList110 = new ArrayList();
                        arrayList110.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList110);
                        composerStartRestartGroup.updateRememberedValue(arrayList110);
                        obj = arrayList110;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList111 = new ArrayList();
                        arrayList111.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList111);
                        composerStartRestartGroup.updateRememberedValue(arrayList111);
                        obj = arrayList111;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy11 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode11 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap11 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier11 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    Modifier modifier14 = modifier3;
                    constructor = companion11.getConstructor();
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
                    jg.d(companion11, composerM5355constructorimpl11, measurePolicy11, composerM5355constructorimpl11, currentCompositionLocalMap11);
                    Updater.m5363setimpl(composerM5355constructorimpl11, modifierMaterializeModifier11, (bm3<? super T, ? super Modifier, j59>) hm.b(companion11, composerM5355constructorimpl11, Integer.valueOf(iHashCode11), composerM5355constructorimpl11));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    vertical3 = top2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier14;
                    composer2 = composerStartRestartGroup;
                    flowRowOverflow2 = clip;
                    horizontal3 = start;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    vertical3 = vertical;
                    horizontal3 = horizontal2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowRowOverflow2 = flowRowOverflow;
                }
                vertical4 = top;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowRowOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top2 = Arrangement.INSTANCE.getTop();
                    i19 = i8;
                } else {
                    i19 = i8;
                    top2 = vertical;
                }
                if (i19 != 0) {
                    top = Alignment.Companion.getTop();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowRowOverflow.Companion.getClip();
                } else {
                    clip = flowRowOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z18 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z18 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList112 = new ArrayList();
                    arrayList112.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList112);
                    composerStartRestartGroup.updateRememberedValue(arrayList112);
                    obj = arrayList112;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList113 = new ArrayList();
                    arrayList113.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList113);
                    composerStartRestartGroup.updateRememberedValue(arrayList113);
                    obj = arrayList113;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy12 = (MeasurePolicy) objRememberedValue3;
                int iHashCode12 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap12 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier12 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                Modifier modifier15 = modifier3;
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
                Composer composerM5355constructorimpl12 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion12, composerM5355constructorimpl12, measurePolicy12, composerM5355constructorimpl12, currentCompositionLocalMap12);
                Updater.m5363setimpl(composerM5355constructorimpl12, modifierMaterializeModifier12, (bm3<? super T, ? super Modifier, j59>) hm.b(companion12, composerM5355constructorimpl12, Integer.valueOf(iHashCode12), composerM5355constructorimpl12));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                vertical3 = top2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier15;
                composer2 = composerStartRestartGroup;
                flowRowOverflow2 = clip;
                horizontal3 = start;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                vertical3 = vertical;
                horizontal3 = horizontal2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowRowOverflow2 = flowRowOverflow;
            }
            vertical4 = top;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        i8 = i4 & 8;
        if (i8 != 0) {
            if ((i3 & 3072) == 0) {
                top = vertical2;
                if (composerStartRestartGroup.changed(top)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i5 |= i9;
            }
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i5 |= i14;
                }
                i15 = i4 & 64;
                if (i15 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(flowRowOverflow)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i5 |= i16;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i5 |= i23;
                }
                if ((i5 & 4793491) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i24 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier;
                    }
                    if (i25 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top2 = Arrangement.INSTANCE.getTop();
                        i19 = i8;
                    } else {
                        i19 = i8;
                        top2 = vertical;
                    }
                    if (i19 != 0) {
                        top = Alignment.Companion.getTop();
                    }
                    if (i10 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i11;
                    }
                    if (i13 != 0) {
                        i21 = Integer.MAX_VALUE;
                    } else {
                        i21 = i2;
                    }
                    if (i15 != 0) {
                        clip = FlowRowOverflow.Companion.getClip();
                    } else {
                        clip = flowRowOverflow;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                    }
                    i22 = 3670016 & i5;
                    if (i22 == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z2) {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = clip.createOverflowState$foundation_layout();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                    multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                    if (i22 == 1048576) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if ((29360128 & i5) == 8388608) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z19 = z4 | z3;
                    if ((i5 & 458752) == 131072) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    z6 = z19 | z5;
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        obj = objRememberedValue2;
                        ArrayList arrayList114 = new ArrayList();
                        arrayList114.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList114);
                        composerStartRestartGroup.updateRememberedValue(arrayList114);
                        obj = arrayList114;
                    } else {
                        obj = objRememberedValue2;
                        ArrayList arrayList115 = new ArrayList();
                        arrayList115.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj2, Object obj3) {
                                int iIntValue = ((Integer) obj3).intValue();
                                return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                            }
                        }));
                        clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList115);
                        composerStartRestartGroup.updateRememberedValue(arrayList115);
                        obj = arrayList115;
                    }
                    obj = objRememberedValue2;
                    bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                    zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    MeasurePolicy measurePolicy13 = (MeasurePolicy) objRememberedValue3;
                    int iHashCode13 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap13 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier13 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    Modifier modifier16 = modifier3;
                    constructor = companion13.getConstructor();
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
                    jg.d(companion13, composerM5355constructorimpl13, measurePolicy13, composerM5355constructorimpl13, currentCompositionLocalMap13);
                    Updater.m5363setimpl(composerM5355constructorimpl13, modifierMaterializeModifier13, (bm3<? super T, ? super Modifier, j59>) hm.b(companion13, composerM5355constructorimpl13, Integer.valueOf(iHashCode13), composerM5355constructorimpl13));
                    if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                        ComposerKt.traceEventEnd();
                    }
                    vertical3 = top2;
                    i17 = i20;
                    i18 = i21;
                    modifier2 = modifier16;
                    composer2 = composerStartRestartGroup;
                    flowRowOverflow2 = clip;
                    horizontal3 = start;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier2 = modifier;
                    vertical3 = vertical;
                    horizontal3 = horizontal2;
                    composer2 = composerStartRestartGroup;
                    i17 = i11;
                    i18 = i2;
                    flowRowOverflow2 = flowRowOverflow;
                }
                vertical4 = top;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowRowOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top2 = Arrangement.INSTANCE.getTop();
                    i19 = i8;
                } else {
                    i19 = i8;
                    top2 = vertical;
                }
                if (i19 != 0) {
                    top = Alignment.Companion.getTop();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowRowOverflow.Companion.getClip();
                } else {
                    clip = flowRowOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z110 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z110 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList116 = new ArrayList();
                    arrayList116.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList116);
                    composerStartRestartGroup.updateRememberedValue(arrayList116);
                    obj = arrayList116;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList117 = new ArrayList();
                    arrayList117.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList117);
                    composerStartRestartGroup.updateRememberedValue(arrayList117);
                    obj = arrayList117;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy14 = (MeasurePolicy) objRememberedValue3;
                int iHashCode14 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap14 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier14 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                Modifier modifier17 = modifier3;
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
                Composer composerM5355constructorimpl14 = Updater.m5355constructorimpl(composerStartRestartGroup);
                jg.d(companion14, composerM5355constructorimpl14, measurePolicy14, composerM5355constructorimpl14, currentCompositionLocalMap14);
                Updater.m5363setimpl(composerM5355constructorimpl14, modifierMaterializeModifier14, (bm3<? super T, ? super Modifier, j59>) hm.b(companion14, composerM5355constructorimpl14, Integer.valueOf(iHashCode14), composerM5355constructorimpl14));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                vertical3 = top2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier17;
                composer2 = composerStartRestartGroup;
                flowRowOverflow2 = clip;
                horizontal3 = start;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                vertical3 = vertical;
                horizontal3 = horizontal2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowRowOverflow2 = flowRowOverflow;
            }
            vertical4 = top;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= 3072;
        top = vertical2;
        i10 = i4 & 16;
        if (i10 != 0) {
            if ((i3 & 24576) == 0) {
                i11 = i;
                if (composerStartRestartGroup.changed(i11)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i5 |= i12;
            }
            i13 = i4 & 32;
            if (i13 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i5 |= i14;
            }
            i15 = i4 & 64;
            if (i15 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changed(flowRowOverflow)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i5 |= i16;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i5 |= i23;
            }
            if ((i5 & 4793491) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i24 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier;
                }
                if (i25 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top2 = Arrangement.INSTANCE.getTop();
                    i19 = i8;
                } else {
                    i19 = i8;
                    top2 = vertical;
                }
                if (i19 != 0) {
                    top = Alignment.Companion.getTop();
                }
                if (i10 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i11;
                }
                if (i13 != 0) {
                    i21 = Integer.MAX_VALUE;
                } else {
                    i21 = i2;
                }
                if (i15 != 0) {
                    clip = FlowRowOverflow.Companion.getClip();
                } else {
                    clip = flowRowOverflow;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
                }
                i22 = 3670016 & i5;
                if (i22 == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z2) {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = clip.createOverflowState$foundation_layout();
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
                multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                if (i22 == 1048576) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((29360128 & i5) == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z111 = z4 | z3;
                if ((i5 & 458752) == 131072) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                z6 = z111 | z5;
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    obj = objRememberedValue2;
                    ArrayList arrayList118 = new ArrayList();
                    arrayList118.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList118);
                    composerStartRestartGroup.updateRememberedValue(arrayList118);
                    obj = arrayList118;
                } else {
                    obj = objRememberedValue2;
                    ArrayList arrayList119 = new ArrayList();
                    arrayList119.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            int iIntValue = ((Integer) obj3).intValue();
                            return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                        }
                    }));
                    clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList119);
                    composerStartRestartGroup.updateRememberedValue(arrayList119);
                    obj = arrayList119;
                }
                obj = objRememberedValue2;
                bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
                zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                MeasurePolicy measurePolicy15 = (MeasurePolicy) objRememberedValue3;
                int iHashCode15 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                CompositionLocalMap currentCompositionLocalMap15 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier15 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                Modifier modifier18 = modifier3;
                constructor = companion15.getConstructor();
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
                jg.d(companion15, composerM5355constructorimpl15, measurePolicy15, composerM5355constructorimpl15, currentCompositionLocalMap15);
                Updater.m5363setimpl(composerM5355constructorimpl15, modifierMaterializeModifier15, (bm3<? super T, ? super Modifier, j59>) hm.b(companion15, composerM5355constructorimpl15, Integer.valueOf(iHashCode15), composerM5355constructorimpl15));
                if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                    ComposerKt.traceEventEnd();
                }
                vertical3 = top2;
                i17 = i20;
                i18 = i21;
                modifier2 = modifier18;
                composer2 = composerStartRestartGroup;
                flowRowOverflow2 = clip;
                horizontal3 = start;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier2 = modifier;
                vertical3 = vertical;
                horizontal3 = horizontal2;
                composer2 = composerStartRestartGroup;
                i17 = i11;
                i18 = i2;
                flowRowOverflow2 = flowRowOverflow;
            }
            vertical4 = top;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                    }
                });
            }
        }
        i5 |= 24576;
        i11 = i;
        i13 = i4 & 32;
        if (i13 != 0) {
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(i2)) {
                i14 = 131072;
            } else {
                i14 = 65536;
            }
            i5 |= i14;
        }
        i15 = i4 & 64;
        if (i15 != 0) {
            i5 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            if (composerStartRestartGroup.changed(flowRowOverflow)) {
                i16 = 1048576;
            } else {
                i16 = 524288;
            }
            i5 |= i16;
        }
        if ((i3 & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i23 = 8388608;
            } else {
                i23 = 4194304;
            }
            i5 |= i23;
        }
        if ((i5 & 4793491) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
            if (i24 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier;
            }
            if (i25 != 0) {
                start = Arrangement.INSTANCE.getStart();
            } else {
                start = horizontal2;
            }
            if (i6 != 0) {
                top2 = Arrangement.INSTANCE.getTop();
                i19 = i8;
            } else {
                i19 = i8;
                top2 = vertical;
            }
            if (i19 != 0) {
                top = Alignment.Companion.getTop();
            }
            if (i10 != 0) {
                i20 = Integer.MAX_VALUE;
            } else {
                i20 = i11;
            }
            if (i13 != 0) {
                i21 = Integer.MAX_VALUE;
            } else {
                i21 = i2;
            }
            if (i15 != 0) {
                clip = FlowRowOverflow.Companion.getClip();
            } else {
                clip = flowRowOverflow;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1956591841, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:99)");
            }
            i22 = 3670016 & i5;
            if (i22 == 1048576) {
                z2 = true;
            } else {
                z2 = false;
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z2) {
                objRememberedValue = clip.createOverflowState$foundation_layout();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = clip.createOverflowState$foundation_layout();
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            flowLayoutOverflowState = (FlowLayoutOverflowState) objRememberedValue;
            multiContentMeasurePolicyRowMeasurementMultiContentHelper = rowMeasurementMultiContentHelper(start, top2, top, i20, i21, flowLayoutOverflowState, composerStartRestartGroup, (i5 >> 3) & WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (i22 == 1048576) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((29360128 & i5) == 8388608) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z112 = z4 | z3;
            if ((i5 & 458752) == 131072) {
                z5 = true;
            } else {
                z5 = false;
            }
            z6 = z112 | z5;
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z6) {
                obj = objRememberedValue2;
                ArrayList arrayList1110 = new ArrayList();
                arrayList1110.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                    }
                }));
                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList1110);
                composerStartRestartGroup.updateRememberedValue(arrayList1110);
                obj = arrayList1110;
            } else {
                obj = objRememberedValue2;
                ArrayList arrayList1111 = new ArrayList();
                arrayList1111.add(ComposableLambdaKt.composableLambdaInstance(-1192950673, true, new bm3() { // from class: lf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        int iIntValue = ((Integer) obj3).intValue();
                        return FlowLayoutKt.FlowRow$lambda$1$0(dm3Var, (Composer) obj2, iIntValue);
                    }
                }));
                clip.addOverflowComposables$foundation_layout(flowLayoutOverflowState, arrayList1111);
                composerStartRestartGroup.updateRememberedValue(arrayList1111);
                obj = arrayList1111;
            }
            obj = objRememberedValue2;
            bm3VarCombineAsVirtualLayouts = LayoutKt.combineAsVirtualLayouts((List) obj);
            zChanged = composerStartRestartGroup.changed(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = MultiContentMeasurePolicyKt.createMeasurePolicy(multiContentMeasurePolicyRowMeasurementMultiContentHelper);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            MeasurePolicy measurePolicy16 = (MeasurePolicy) objRememberedValue3;
            int iHashCode16 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
            CompositionLocalMap currentCompositionLocalMap16 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier16 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier3);
            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
            Modifier modifier19 = modifier3;
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
            Composer composerM5355constructorimpl16 = Updater.m5355constructorimpl(composerStartRestartGroup);
            jg.d(companion16, composerM5355constructorimpl16, measurePolicy16, composerM5355constructorimpl16, currentCompositionLocalMap16);
            Updater.m5363setimpl(composerM5355constructorimpl16, modifierMaterializeModifier16, (bm3<? super T, ? super Modifier, j59>) hm.b(companion16, composerM5355constructorimpl16, Integer.valueOf(iHashCode16), composerM5355constructorimpl16));
            if (cc.f(bm3VarCombineAsVirtualLayouts, composerStartRestartGroup, 0)) {
                ComposerKt.traceEventEnd();
            }
            vertical3 = top2;
            i17 = i20;
            i18 = i21;
            modifier2 = modifier19;
            composer2 = composerStartRestartGroup;
            flowRowOverflow2 = clip;
            horizontal3 = start;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
            vertical3 = vertical;
            horizontal3 = horizontal2;
            composer2 = composerStartRestartGroup;
            i17 = i11;
            i18 = i2;
            flowRowOverflow2 = flowRowOverflow;
        }
        vertical4 = top;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mf3
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return FlowLayoutKt.FlowRow$lambda$2(modifier2, horizontal3, vertical3, vertical4, i17, i18, flowRowOverflow2, dm3Var, i3, i4, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 FlowRow$lambda$1$0(dm3 dm3Var, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1192950673, i, -1, "androidx.compose.foundation.layout.FlowRow.<anonymous>.<anonymous> (FlowLayout.kt:113)");
            }
            dm3Var.invoke(FlowRowScopeInstance.INSTANCE, composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 FlowRow$lambda$2(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, FlowRowOverflow flowRowOverflow, dm3 dm3Var, int i3, int i4, Composer composer, int i5) {
        FlowRow(modifier, horizontal, vertical, vertical2, i, i2, flowRowOverflow, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 FlowRow$lambda$3(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, dm3 dm3Var, int i3, int i4, Composer composer, int i5) {
        FlowRow(modifier, horizontal, vertical, vertical2, i, i2, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: breakDownItems-di9J0FM, reason: not valid java name */
    public static final MeasureResult m1889breakDownItemsdi9J0FM(MeasureScope measureScope, FlowLineMeasurePolicy flowLineMeasurePolicy, Iterator<? extends Measurable> it, float f, float f2, long j, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState) {
        int i3;
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo;
        MutableIntObjectMap mutableIntObjectMap;
        int i4;
        int i5;
        int height;
        int width;
        MutableIntObjectMap mutableIntObjectMap2;
        IntIntPair intIntPairM1025boximpl;
        int i6;
        MutableIntList mutableIntList;
        MutableIntList mutableIntList2;
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo2;
        int i7;
        int i8;
        FlowLayoutData flowLayoutData;
        MeasureScope measureScope2 = measureScope;
        FlowLineMeasurePolicy flowLineMeasurePolicy2 = flowLineMeasurePolicy;
        Iterator<? extends Measurable> it2 = it;
        MutableVector mutableVector = new MutableVector(new MeasureResult[16], 0);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        MutableIntObjectMap mutableIntObjectMapMutableIntObjectMapOf = IntObjectMapKt.mutableIntObjectMapOf();
        ArrayList arrayList = new ArrayList();
        int iCeil = (int) Math.ceil(measureScope2.mo1434toPx0680j_4(f));
        int iCeil2 = (int) Math.ceil(measureScope2.mo1434toPx0680j_4(f2));
        long jM2000constructorimpl = OrientationIndependentConstraints.m2000constructorimpl(0, iM8995getMaxWidthimpl, 0, iM8994getMaxHeightimpl);
        long jM2015toBoxConstraintsOenEA2s = OrientationIndependentConstraints.m2015toBoxConstraintsOenEA2s(OrientationIndependentConstraints.m2004copyyUG9Ft0$default(jM2000constructorimpl, 0, 0, 0, 0, 14, null), flowLineMeasurePolicy2.isHorizontal() ? LayoutOrientation.Horizontal : LayoutOrientation.Vertical);
        r07 r07Var = new r07();
        FlowLineInfo flowLineInfo = it2 instanceof ContextualFlowItemIterator ? new FlowLineInfo(0, 0, measureScope2.mo1431toDpu2uoSUM(iM8995getMaxWidthimpl), measureScope2.mo1431toDpu2uoSUM(iM8994getMaxHeightimpl), null) : null;
        Measurable measurableSafeNext = !it2.hasNext() ? null : safeNext(it2, flowLineInfo);
        IntIntPair intIntPairM1025boximpl2 = measurableSafeNext != null ? IntIntPair.m1025boximpl(m1890measureAndCacherqJ1uqs(measurableSafeNext, flowLineMeasurePolicy2, jM2015toBoxConstraintsOenEA2s, new rf(r07Var, 1))) : null;
        Integer numValueOf = intIntPairM1025boximpl2 != null ? Integer.valueOf(IntIntPair.m1032getFirstimpl(intIntPairM1025boximpl2.m1036unboximpl())) : null;
        Integer numValueOf2 = intIntPairM1025boximpl2 != null ? Integer.valueOf(IntIntPair.m1033getSecondimpl(intIntPairM1025boximpl2.m1036unboximpl())) : null;
        Integer num = numValueOf;
        Measurable measurable = measurableSafeNext;
        MutableIntList mutableIntList3 = new MutableIntList(0, 1, null);
        MutableIntList mutableIntList4 = new MutableIntList(0, 1, null);
        MutableIntSet mutableIntSetMutableIntSetOf = IntSetKt.mutableIntSetOf();
        FlowLineInfo flowLineInfo2 = flowLineInfo;
        FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i, flowLayoutOverflowState, j, i2, iCeil, iCeil2, null);
        int i9 = iCeil;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfoM1887getWrapInfoOpUlnko = flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(it2.hasNext(), 0, IntIntPair.m1028constructorimpl(iM8995getMaxWidthimpl, iM8994getMaxHeightimpl), intIntPairM1025boximpl2, 0, 0, 0, false, false);
        if (wrapInfoM1887getWrapInfoOpUlnko.isLastItemInContainer()) {
            wrapEllipsisInfo = flowLayoutBuildingBlocks.getWrapEllipsisInfo(wrapInfoM1887getWrapInfoOpUlnko, intIntPairM1025boximpl2 != null, -1, 0, iM8995getMaxWidthimpl, 0);
            i3 = iM8995getMaxWidthimpl;
        } else {
            i3 = iM8995getMaxWidthimpl;
            wrapEllipsisInfo = null;
        }
        Integer num2 = num;
        FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo3 = wrapEllipsisInfo;
        FlowLayoutBuildingBlocks.WrapInfo wrapInfo = wrapInfoM1887getWrapInfoOpUlnko;
        Measurable measurableSafeNext2 = measurable;
        int i10 = 0;
        int i11 = iM8997getMinWidthimpl;
        int i12 = 0;
        boolean z = false;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        MutableIntList mutableIntList5 = mutableIntList3;
        int i16 = i3;
        int i17 = 0;
        int i18 = iM8994getMaxHeightimpl;
        while (!wrapInfo.isLastItemInContainer() && measurableSafeNext2 != null) {
            num2.getClass();
            int iIntValue = num2.intValue();
            numValueOf2.getClass();
            MutableIntSet mutableIntSet = mutableIntSetMutableIntSetOf;
            MutableIntList mutableIntList6 = mutableIntList4;
            int i19 = i13 + iIntValue;
            int iMax = Math.max(i12, numValueOf2.intValue());
            int i20 = i16 - iIntValue;
            int i21 = i17 + 1;
            int i22 = i3;
            flowLayoutOverflowState.setItemShown$foundation_layout(i21);
            arrayList.add(measurableSafeNext2);
            mutableIntObjectMapMutableIntObjectMapOf.set(i17, r07Var.b);
            Object parentData = measurableSafeNext2.getParentData();
            RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
            if (((rowColumnParentData == null || (flowLayoutData = rowColumnParentData.getFlowLayoutData()) == null) ? null : Float.valueOf(flowLayoutData.getFillCrossAxisFraction())) != null) {
                z = true;
            }
            int i23 = i21 - i14;
            boolean z2 = i23 < i;
            if (flowLineInfo2 != null) {
                int i24 = z2 ? i10 : i10 + 1;
                int i25 = z2 ? i23 : 0;
                if (z2) {
                    int i26 = i20 - i9;
                    i7 = i26 < 0 ? 0 : i26;
                } else {
                    i7 = i22;
                }
                float fMo1431toDpu2uoSUM = measureScope2.mo1431toDpu2uoSUM(i7);
                if (z2) {
                    mutableIntObjectMap2 = mutableIntObjectMapMutableIntObjectMapOf;
                    i8 = i18;
                } else {
                    int i27 = (i18 - iMax) - iCeil2;
                    mutableIntObjectMap2 = mutableIntObjectMapMutableIntObjectMapOf;
                    i8 = i27 < 0 ? 0 : i27;
                }
                flowLineInfo2.m1900update4j6BHR0$foundation_layout(i24, i25, fMo1431toDpu2uoSUM, measureScope2.mo1431toDpu2uoSUM(i8));
                j59 j59Var = j59.a;
            } else {
                i23 = i23;
                mutableIntObjectMap2 = mutableIntObjectMapMutableIntObjectMapOf;
            }
            measurableSafeNext2 = !it2.hasNext() ? null : safeNext(it2, flowLineInfo2);
            r07Var.b = null;
            IntIntPair intIntPairM1025boximpl3 = measurableSafeNext2 != null ? IntIntPair.m1025boximpl(m1890measureAndCacherqJ1uqs(measurableSafeNext2, flowLineMeasurePolicy2, jM2015toBoxConstraintsOenEA2s, new nx1(r07Var, 1))) : null;
            Integer numValueOf3 = intIntPairM1025boximpl3 != null ? Integer.valueOf(IntIntPair.m1032getFirstimpl(intIntPairM1025boximpl3.m1036unboximpl()) + i9) : null;
            numValueOf2 = intIntPairM1025boximpl3 != null ? Integer.valueOf(IntIntPair.m1033getSecondimpl(intIntPairM1025boximpl3.m1036unboximpl())) : null;
            boolean zHasNext = it2.hasNext();
            int i28 = i10;
            long jM1028constructorimpl = IntIntPair.m1028constructorimpl(i20, i18);
            if (intIntPairM1025boximpl3 == null) {
                intIntPairM1025boximpl = null;
            } else {
                numValueOf3.getClass();
                int iIntValue2 = numValueOf3.intValue();
                numValueOf2.getClass();
                intIntPairM1025boximpl = IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iIntValue2, numValueOf2.intValue()));
            }
            FlowLayoutBuildingBlocks.WrapInfo wrapInfoM1887getWrapInfoOpUlnko2 = flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(zHasNext, i23, jM1028constructorimpl, intIntPairM1025boximpl, i28, i15, iMax, false, false);
            if (wrapInfoM1887getWrapInfoOpUlnko2.isLastItemInLine()) {
                int iMin = Math.min(Math.max(i11, i19), i22);
                int i29 = i15 + iMax;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo4 = flowLayoutBuildingBlocks.getWrapEllipsisInfo(wrapInfoM1887getWrapInfoOpUlnko2, intIntPairM1025boximpl3 != null, i28, i29, i20, i23);
                mutableIntList2 = mutableIntList6;
                mutableIntList2.add(iMax);
                if (z) {
                    mutableIntSet.plusAssign(i28);
                }
                int i30 = (iM8994getMaxHeightimpl - i29) - iCeil2;
                mutableIntSet = mutableIntSet;
                mutableIntList = mutableIntList5;
                mutableIntList.add(i21);
                numValueOf3 = numValueOf3 != null ? Integer.valueOf(numValueOf3.intValue() - i9) : null;
                i10 = i28 + 1;
                i15 = i29 + iCeil2;
                i11 = iMin;
                i22 = i22;
                i14 = i21;
                i19 = 0;
                z = false;
                i6 = 0;
                wrapEllipsisInfo2 = wrapEllipsisInfo4;
                i18 = i30;
                i16 = i22;
            } else {
                i6 = iMax;
                mutableIntList = mutableIntList5;
                mutableIntList2 = mutableIntList6;
                i16 = i20;
                i10 = i28;
                wrapEllipsisInfo2 = wrapEllipsisInfo3;
            }
            MutableIntSet mutableIntSet2 = mutableIntSet;
            int i31 = i19;
            mutableIntList4 = mutableIntList2;
            mutableIntObjectMapMutableIntObjectMapOf = mutableIntObjectMap2;
            num2 = numValueOf3;
            i3 = i22;
            i13 = i31;
            mutableIntList5 = mutableIntList;
            wrapEllipsisInfo3 = wrapEllipsisInfo2;
            i17 = i21;
            wrapInfo = wrapInfoM1887getWrapInfoOpUlnko2;
            it2 = it;
            mutableIntSetMutableIntSetOf = mutableIntSet2;
            i12 = i6;
        }
        MutableIntObjectMap mutableIntObjectMap3 = mutableIntObjectMapMutableIntObjectMapOf;
        MutableIntSet mutableIntSet3 = mutableIntSetMutableIntSetOf;
        MutableIntList mutableIntList7 = mutableIntList4;
        MutableIntList mutableIntList8 = mutableIntList5;
        int i32 = i11;
        if (wrapEllipsisInfo3 != null) {
            arrayList.add(wrapEllipsisInfo3.getEllipsis());
            mutableIntObjectMap = mutableIntObjectMap3;
            mutableIntObjectMap.set(arrayList.size() - 1, wrapEllipsisInfo3.getPlaceable());
            int i33 = mutableIntList8._size - 1;
            if (wrapEllipsisInfo3.getPlaceEllipsisOnLastContentLine()) {
                int i34 = mutableIntList8._size - 1;
                mutableIntList7.set(i33, Math.max(mutableIntList7.get(i33), IntIntPair.m1033getSecondimpl(wrapEllipsisInfo3.m1888getEllipsisSizeOO21N7I())));
                mutableIntList8.set(i34, mutableIntList8.last() + 1);
                j59 j59Var2 = j59.a;
            } else {
                mutableIntList7.add(IntIntPair.m1033getSecondimpl(wrapEllipsisInfo3.m1888getEllipsisSizeOO21N7I()));
                mutableIntList8.add(mutableIntList8.last() + 1);
            }
        } else {
            mutableIntObjectMap = mutableIntObjectMap3;
        }
        int size = arrayList.size();
        Placeable[] placeableArr = new Placeable[size];
        for (int i35 = 0; i35 < size; i35++) {
            placeableArr[i35] = mutableIntObjectMap.get(i35);
        }
        int i36 = mutableIntList8._size;
        int[] iArr = new int[i36];
        int[] iArr2 = new int[i36];
        int[] iArr3 = mutableIntList8.content;
        int iMax2 = i32;
        int i37 = 0;
        int i38 = 0;
        int i39 = 0;
        while (i38 < i36) {
            int i40 = iArr3[i38];
            int iM8994getMaxHeightimpl2 = mutableIntList7.get(i38);
            if (!mutableIntSet3.contains(i38)) {
                iM8994getMaxHeightimpl2 = Constraints.m8994getMaxHeightimpl(jM2000constructorimpl) == Integer.MAX_VALUE ? Integer.MAX_VALUE : Constraints.m8994getMaxHeightimpl(jM2000constructorimpl) - i39;
            }
            MutableIntSet mutableIntSet4 = mutableIntSet3;
            MutableIntList mutableIntList9 = mutableIntList7;
            int i41 = iMax2;
            int i42 = iM8994getMaxHeightimpl2;
            FlowLineMeasurePolicy flowLineMeasurePolicy3 = flowLineMeasurePolicy2;
            ArrayList arrayList2 = arrayList;
            int i43 = i9;
            MeasureResult measureResultMeasure = RowColumnMeasurePolicyKt.measure(flowLineMeasurePolicy3, i41, Constraints.m8996getMinHeightimpl(jM2000constructorimpl), Constraints.m8995getMaxWidthimpl(jM2000constructorimpl), i42, i43, measureScope2, arrayList2, placeableArr, i37, i40, iArr, i38);
            if (flowLineMeasurePolicy.isHorizontal()) {
                height = measureResultMeasure.getWidth();
                width = measureResultMeasure.getHeight();
            } else {
                height = measureResultMeasure.getHeight();
                width = measureResultMeasure.getWidth();
            }
            iArr2[i38] = width;
            i39 += width;
            iMax2 = Math.max(i41, height);
            mutableVector.add(measureResultMeasure);
            i38++;
            arrayList = arrayList2;
            i37 = i40;
            mutableIntSet3 = mutableIntSet4;
            i9 = i43;
            mutableIntList7 = mutableIntList9;
            measureScope2 = measureScope;
            flowLineMeasurePolicy2 = flowLineMeasurePolicy;
        }
        int i44 = iMax2;
        if (mutableVector.getSize() == 0) {
            i4 = 0;
            i5 = 0;
        } else {
            i4 = i44;
            i5 = i39;
        }
        return m1891placeHelperBmaY500(measureScope, j, i4, i5, iArr2, mutableVector, flowLineMeasurePolicy, iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 breakDownItems_di9J0FM$lambda$0$0(r07 r07Var, Placeable placeable) {
        r07Var.b = placeable;
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 breakDownItems_di9J0FM$lambda$2$0(r07 r07Var, Placeable placeable) {
        r07Var.b = placeable;
        return j59.a;
    }

    public static final MeasurePolicy columnMeasurementHelper(Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, int i, Composer composer, int i2) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2013098357, i2, -1, "androidx.compose.foundation.layout.columnMeasurementHelper (FlowLayout.kt:500)");
        }
        boolean z = ((((i2 & 14) ^ 6) > 4 && composer.changed(vertical)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.changed(horizontal)) || (i2 & 48) == 32) | ((((i2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(i)) || (i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            final FlowMeasurePolicy flowMeasurePolicy = new FlowMeasurePolicy(false, horizontal, vertical, vertical.mo1746getSpacingD9Ej5fM(), CROSS_AXIS_ALIGNMENT_START, horizontal.mo1746getSpacingD9Ej5fM(), i, Integer.MAX_VALUE, FlowRowOverflow.Companion.getVisible().createOverflowState$foundation_layout(), null);
            objRememberedValue = new MeasurePolicy() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$columnMeasurementHelper$1$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* JADX INFO: renamed from: measure-3p2s80s */
                public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                    return flowMeasurePolicy.mo1910measure3p2s80s(measureScope, u96.h(list), j);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return measurePolicy;
    }

    public static final MultiContentMeasurePolicy columnMeasurementMultiContentHelper(Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState, Composer composer, int i3) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-308635847, i3, -1, "androidx.compose.foundation.layout.columnMeasurementMultiContentHelper (FlowLayout.kt:528)");
        }
        boolean zChanged = ((((i3 & 14) ^ 6) > 4 && composer.changed(vertical)) || (i3 & 6) == 4) | ((((i3 & 112) ^ 48) > 32 && composer.changed(horizontal)) || (i3 & 48) == 32) | ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(horizontal2)) || (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | ((((i3 & 7168) ^ 3072) > 2048 && composer.changed(i)) || (i3 & 3072) == 2048) | ((((57344 & i3) ^ 24576) > 16384 && composer.changed(i2)) || (i3 & 24576) == 16384) | composer.changed(flowLayoutOverflowState);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            FlowMeasurePolicy flowMeasurePolicy = new FlowMeasurePolicy(false, horizontal, vertical, vertical.mo1746getSpacingD9Ej5fM(), CrossAxisAlignment.Companion.horizontal$foundation_layout(horizontal2), horizontal.mo1746getSpacingD9Ej5fM(), i, i2, flowLayoutOverflowState, null);
            composer.updateRememberedValue(flowMeasurePolicy);
            objRememberedValue = flowMeasurePolicy;
        }
        FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return flowMeasurePolicy2;
    }

    public static final int crossAxisMin(IntrinsicMeasurable intrinsicMeasurable, boolean z, int i) {
        return z ? intrinsicMeasurable.minIntrinsicHeight(i) : intrinsicMeasurable.minIntrinsicWidth(i);
    }

    public static final CrossAxisAlignment getCROSS_AXIS_ALIGNMENT_START() {
        return CROSS_AXIS_ALIGNMENT_START;
    }

    public static final CrossAxisAlignment getCROSS_AXIS_ALIGNMENT_TOP() {
        return CROSS_AXIS_ALIGNMENT_TOP;
    }

    private static final long intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, dm3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> dm3Var, dm3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> dm3Var2, int i, int i2, int i3, int i4, int i5, FlowLayoutOverflowState flowLayoutOverflowState) {
        int i6;
        if (list.isEmpty()) {
            return IntIntPair.m1028constructorimpl(0, 0);
        }
        FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i4, flowLayoutOverflowState, OrientationIndependentConstraints.m2000constructorimpl(0, i, 0, Integer.MAX_VALUE), i5, i2, i3, null);
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) qn1.W(0, list);
        int iIntValue = intrinsicMeasurable != null ? dm3Var2.invoke(intrinsicMeasurable, 0, Integer.valueOf(i)).intValue() : 0;
        int iIntValue2 = intrinsicMeasurable != null ? dm3Var.invoke(intrinsicMeasurable, 0, Integer.valueOf(iIntValue)).intValue() : 0;
        int i7 = 0;
        int iMax = 0;
        if (flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(list.size() > 1, 0, IntIntPair.m1028constructorimpl(i, Integer.MAX_VALUE), intrinsicMeasurable == null ? null : IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iIntValue2, iIntValue)), 0, 0, 0, false, false).isLastItemInContainer()) {
            IntIntPair intIntPairM1892ellipsisSizeF35zmw$foundation_layout = flowLayoutOverflowState.m1892ellipsisSizeF35zmw$foundation_layout(intrinsicMeasurable != null, 0, 0);
            return IntIntPair.m1028constructorimpl(intIntPairM1892ellipsisSizeF35zmw$foundation_layout != null ? IntIntPair.m1033getSecondimpl(intIntPairM1892ellipsisSizeF35zmw$foundation_layout.m1036unboximpl()) : 0, 0);
        }
        int size = list.size();
        int i8 = i;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = iMax;
            if (i9 >= size) {
                i6 = i10;
                break;
            }
            int i14 = i8 - iIntValue2;
            int i15 = i9 + 1;
            iMax = Math.max(i13, iIntValue);
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) qn1.W(i15, list);
            int iIntValue3 = intrinsicMeasurable2 != null ? dm3Var2.invoke(intrinsicMeasurable2, Integer.valueOf(i15), Integer.valueOf(i)).intValue() : 0;
            int iIntValue4 = intrinsicMeasurable2 != null ? dm3Var.invoke(intrinsicMeasurable2, Integer.valueOf(i15), Integer.valueOf(iIntValue3)).intValue() + i2 : 0;
            int i16 = i15 - i11;
            i6 = i15;
            int i17 = i12;
            FlowLayoutBuildingBlocks.WrapInfo wrapInfoM1887getWrapInfoOpUlnko = flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(i9 + 2 < list.size(), i16, IntIntPair.m1028constructorimpl(i14, Integer.MAX_VALUE), intrinsicMeasurable2 == null ? null : IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(iIntValue4, iIntValue3)), i17, i7, iMax, false, false);
            if (wrapInfoM1887getWrapInfoOpUlnko.isLastItemInLine()) {
                int iM1033getSecondimpl = iMax + i3 + i7;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo = flowLayoutBuildingBlocks.getWrapEllipsisInfo(wrapInfoM1887getWrapInfoOpUlnko, intrinsicMeasurable2 != null, i17, iM1033getSecondimpl, i14, i16);
                iIntValue4 -= i2;
                i12 = i17 + 1;
                if (wrapInfoM1887getWrapInfoOpUlnko.isLastItemInContainer()) {
                    if (wrapEllipsisInfo != null) {
                        long jM1888getEllipsisSizeOO21N7I = wrapEllipsisInfo.m1888getEllipsisSizeOO21N7I();
                        if (!wrapEllipsisInfo.getPlaceEllipsisOnLastContentLine()) {
                            iM1033getSecondimpl = IntIntPair.m1033getSecondimpl(jM1888getEllipsisSizeOO21N7I) + i3 + iM1033getSecondimpl;
                        }
                    }
                    i7 = iM1033getSecondimpl;
                    break;
                }
                i8 = i;
                i11 = i6;
                i7 = iM1033getSecondimpl;
                iMax = 0;
            } else {
                i8 = i14;
                i12 = i17;
            }
            iIntValue2 = iIntValue4;
            iIntValue = iIntValue3;
            i9 = i6;
            i10 = i9;
        }
        return IntIntPair.m1028constructorimpl(i7 - i3, i6);
    }

    public static final int mainAxisMin(IntrinsicMeasurable intrinsicMeasurable, boolean z, int i) {
        return z ? intrinsicMeasurable.minIntrinsicWidth(i) : intrinsicMeasurable.minIntrinsicHeight(i);
    }

    private static final int maxIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, dm3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> dm3Var, int i, int i2, int i3) {
        int size = list.size();
        int i4 = 0;
        int iMax = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < size) {
            int iIntValue = dm3Var.invoke(list.get(i4), Integer.valueOf(i4), Integer.valueOf(i)).intValue() + i2;
            int i7 = i4 + 1;
            if (i7 - i5 == i3 || i7 == list.size()) {
                iMax = Math.max(iMax, (i6 + iIntValue) - i2);
                i6 = 0;
                i5 = i4;
            } else {
                i6 += iIntValue;
            }
            i4 = i7;
        }
        return iMax;
    }

    /* JADX INFO: renamed from: measureAndCache-rqJ1uqs, reason: not valid java name */
    public static final long m1890measureAndCacherqJ1uqs(Measurable measurable, FlowLineMeasurePolicy flowLineMeasurePolicy, long j, nl3<? super Placeable, j59> nl3Var) {
        FlowLayoutData flowLayoutData;
        if (RowColumnImplKt.getWeight(RowColumnImplKt.getRowColumnParentData(measurable)) == 0.0f) {
            RowColumnParentData rowColumnParentData = RowColumnImplKt.getRowColumnParentData(measurable);
            if (((rowColumnParentData == null || (flowLayoutData = rowColumnParentData.getFlowLayoutData()) == null) ? null : Float.valueOf(flowLayoutData.getFillCrossAxisFraction())) == null) {
                Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
                nl3Var.invoke(placeableMo7702measureBRTryo0);
                return IntIntPair.m1028constructorimpl(flowLineMeasurePolicy.mainAxisSize(placeableMo7702measureBRTryo0), flowLineMeasurePolicy.crossAxisSize(placeableMo7702measureBRTryo0));
            }
        }
        int iMainAxisMin = mainAxisMin(measurable, flowLineMeasurePolicy.isHorizontal(), Integer.MAX_VALUE);
        return IntIntPair.m1028constructorimpl(iMainAxisMin, crossAxisMin(measurable, flowLineMeasurePolicy.isHorizontal(), iMainAxisMin));
    }

    private static final int minIntrinsicMainAxisSize(List<? extends IntrinsicMeasurable> list, dm3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> dm3Var, dm3<? super IntrinsicMeasurable, ? super Integer, ? super Integer, Integer> dm3Var2, int i, int i2, int i3, int i4, int i5, FlowLayoutOverflowState flowLayoutOverflowState) {
        List<? extends IntrinsicMeasurable> list2 = list;
        int i6 = i4;
        int i7 = i5;
        if (list2.isEmpty()) {
            return 0;
        }
        int size = list2.size();
        int[] iArr = new int[size];
        int size2 = list2.size();
        int[] iArr2 = new int[size2];
        int size3 = list2.size();
        for (int i8 = 0; i8 < size3; i8++) {
            IntrinsicMeasurable intrinsicMeasurable = list2.get(i8);
            int iIntValue = dm3Var.invoke(intrinsicMeasurable, Integer.valueOf(i8), Integer.valueOf(i)).intValue();
            iArr[i8] = iIntValue;
            iArr2[i8] = dm3Var2.invoke(intrinsicMeasurable, Integer.valueOf(i8), Integer.valueOf(iIntValue)).intValue();
        }
        int i9 = Integer.MAX_VALUE;
        if (i7 != Integer.MAX_VALUE && i6 != Integer.MAX_VALUE) {
            i9 = i6 * i7;
        }
        int i10 = 1;
        int iMin = Math.min(i9 - (((i9 >= list2.size() || !(flowLayoutOverflowState.getType$foundation_layout() == FlowLayoutOverflow.OverflowType.ExpandIndicator || flowLayoutOverflowState.getType$foundation_layout() == FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) && (i9 < list2.size() || i7 < flowLayoutOverflowState.getMinLinesToShowCollapse$foundation_layout() || flowLayoutOverflowState.getType$foundation_layout() != FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator)) ? 0 : 1), list2.size());
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            i11 += iArr[i12];
        }
        int size4 = ((list2.size() - 1) * i2) + i11;
        if (size2 == 0) {
            qz0.e();
            return 0;
        }
        int i13 = iArr2[0];
        int i14 = size2 - 1;
        if (1 <= i14) {
            int i15 = 1;
            while (true) {
                int i16 = iArr2[i15];
                if (i13 < i16) {
                    i13 = i16;
                }
                if (i15 == i14) {
                    break;
                }
                i15++;
            }
        }
        if (size == 0) {
            qz0.e();
            return 0;
        }
        int i17 = iArr[0];
        int i18 = size - 1;
        if (1 <= i18) {
            while (true) {
                int i19 = iArr[i10];
                if (i17 < i19) {
                    i17 = i19;
                }
                if (i10 == i18) {
                    break;
                }
                i10++;
            }
        }
        int i20 = i17;
        int i21 = i13;
        int i22 = size4;
        while (i20 <= i22 && i21 != i) {
            int i23 = (i20 + i22) / 2;
            int[] iArr3 = iArr;
            long jIntrinsicCrossAxisSize = intrinsicCrossAxisSize(list2, iArr3, iArr2, i23, i2, i3, i6, i7, flowLayoutOverflowState);
            int iM1032getFirstimpl = IntIntPair.m1032getFirstimpl(jIntrinsicCrossAxisSize);
            int iM1033getSecondimpl = IntIntPair.m1033getSecondimpl(jIntrinsicCrossAxisSize);
            if (iM1032getFirstimpl > i || iM1033getSecondimpl < iMin) {
                i20 = i23 + 1;
                if (i20 > i22) {
                    return i20;
                }
            } else {
                if (iM1032getFirstimpl >= i) {
                    return i23;
                }
                i22 = i23 - 1;
            }
            i6 = i4;
            i7 = i5;
            size4 = i23;
            iArr = iArr3;
            i21 = iM1032getFirstimpl;
            list2 = list;
        }
        return size4;
    }

    /* JADX INFO: renamed from: placeHelper-BmaY500, reason: not valid java name */
    public static final MeasureResult m1891placeHelperBmaY500(MeasureScope measureScope, long j, int i, int i2, int[] iArr, MutableVector<MeasureResult> mutableVector, FlowLineMeasurePolicy flowLineMeasurePolicy, int[] iArr2) {
        int iM8994getMaxHeightimpl;
        int i3;
        int i4;
        boolean zIsHorizontal = flowLineMeasurePolicy.isHorizontal();
        Arrangement.Vertical verticalArrangement = flowLineMeasurePolicy.getVerticalArrangement();
        Arrangement.Horizontal horizontalArrangement = flowLineMeasurePolicy.getHorizontalArrangement();
        if (zIsHorizontal) {
            int size = ((mutableVector.getSize() - 1) * measureScope.mo1428roundToPx0680j_4(verticalArrangement.mo1746getSpacingD9Ej5fM())) + i2;
            int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
            iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
            if (size < iM8996getMinHeightimpl) {
                size = iM8996getMinHeightimpl;
            }
            if (size <= iM8994getMaxHeightimpl) {
                iM8994getMaxHeightimpl = size;
            }
            verticalArrangement.arrange(measureScope, iM8994getMaxHeightimpl, iArr, iArr2);
        } else {
            int size2 = ((mutableVector.getSize() - 1) * measureScope.mo1428roundToPx0680j_4(horizontalArrangement.mo1746getSpacingD9Ej5fM())) + i2;
            int iM8996getMinHeightimpl2 = Constraints.m8996getMinHeightimpl(j);
            int iM8994getMaxHeightimpl2 = Constraints.m8994getMaxHeightimpl(j);
            if (size2 < iM8996getMinHeightimpl2) {
                size2 = iM8996getMinHeightimpl2;
            }
            int i5 = size2 > iM8994getMaxHeightimpl2 ? iM8994getMaxHeightimpl2 : size2;
            horizontalArrangement.arrange(measureScope, i5, iArr, measureScope.getLayoutDirection(), iArr2);
            iM8994getMaxHeightimpl = i5;
        }
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (i < iM8997getMinWidthimpl) {
            i = iM8997getMinWidthimpl;
        }
        if (i <= iM8995getMaxWidthimpl) {
            iM8995getMaxWidthimpl = i;
        }
        if (zIsHorizontal) {
            i4 = iM8995getMaxWidthimpl;
            i3 = iM8994getMaxHeightimpl;
        } else {
            i3 = iM8995getMaxWidthimpl;
            i4 = iM8994getMaxHeightimpl;
        }
        return MeasureScope.layout$default(measureScope, i4, i3, null, new xs(mutableVector, 2), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeHelper_BmaY500$lambda$2(MutableVector mutableVector, Placeable.PlacementScope placementScope) {
        Object[] objArr = mutableVector.content;
        int size = mutableVector.getSize();
        for (int i = 0; i < size; i++) {
            ((MeasureResult) objArr[i]).placeChildren();
        }
        return j59.a;
    }

    public static final MeasurePolicy rowMeasurementHelper(Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, int i, Composer composer, int i2) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1479255111, i2, -1, "androidx.compose.foundation.layout.rowMeasurementHelper (FlowLayout.kt:439)");
        }
        boolean z = ((((i2 & 14) ^ 6) > 4 && composer.changed(horizontal)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.changed(vertical)) || (i2 & 48) == 32) | ((((i2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(i)) || (i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
        Object objRememberedValue = composer.rememberedValue();
        if (z || objRememberedValue == Composer.Companion.getEmpty()) {
            final FlowMeasurePolicy flowMeasurePolicy = new FlowMeasurePolicy(true, horizontal, vertical, horizontal.mo1746getSpacingD9Ej5fM(), CROSS_AXIS_ALIGNMENT_TOP, vertical.mo1746getSpacingD9Ej5fM(), i, Integer.MAX_VALUE, FlowRowOverflow.Companion.getVisible().createOverflowState$foundation_layout(), null);
            objRememberedValue = new MeasurePolicy() { // from class: androidx.compose.foundation.layout.FlowLayoutKt$rowMeasurementHelper$1$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* JADX INFO: renamed from: measure-3p2s80s */
                public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
                    return flowMeasurePolicy.mo1910measure3p2s80s(measureScope, u96.h(list), j);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        MeasurePolicy measurePolicy = (MeasurePolicy) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return measurePolicy;
    }

    public static final MultiContentMeasurePolicy rowMeasurementMultiContentHelper(Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, FlowLayoutOverflowState flowLayoutOverflowState, Composer composer, int i3) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2010142641, i3, -1, "androidx.compose.foundation.layout.rowMeasurementMultiContentHelper (FlowLayout.kt:470)");
        }
        boolean zChanged = ((((i3 & 14) ^ 6) > 4 && composer.changed(horizontal)) || (i3 & 6) == 4) | ((((i3 & 112) ^ 48) > 32 && composer.changed(vertical)) || (i3 & 48) == 32) | ((((i3 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(vertical2)) || (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | ((((i3 & 7168) ^ 3072) > 2048 && composer.changed(i)) || (i3 & 3072) == 2048) | ((((57344 & i3) ^ 24576) > 16384 && composer.changed(i2)) || (i3 & 24576) == 16384) | composer.changed(flowLayoutOverflowState);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            FlowMeasurePolicy flowMeasurePolicy = new FlowMeasurePolicy(true, horizontal, vertical, horizontal.mo1746getSpacingD9Ej5fM(), CrossAxisAlignment.Companion.vertical$foundation_layout(vertical2), vertical.mo1746getSpacingD9Ej5fM(), i, i2, flowLayoutOverflowState, null);
            composer.updateRememberedValue(flowMeasurePolicy);
            objRememberedValue = flowMeasurePolicy;
        }
        FlowMeasurePolicy flowMeasurePolicy2 = (FlowMeasurePolicy) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return flowMeasurePolicy2;
    }

    private static final Measurable safeNext(Iterator<? extends Measurable> it, FlowLineInfo flowLineInfo) {
        try {
            if (!(it instanceof ContextualFlowItemIterator)) {
                return it.next();
            }
            flowLineInfo.getClass();
            return ((ContextualFlowItemIterator) it).getNext$foundation_layout(flowLineInfo);
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long intrinsicCrossAxisSize(List<? extends IntrinsicMeasurable> list, int[] iArr, int[] iArr2, int i, int i2, int i3, int i4, int i5, FlowLayoutOverflowState flowLayoutOverflowState) {
        if (list.isEmpty()) {
            return IntIntPair.m1028constructorimpl(0, 0);
        }
        FlowLayoutBuildingBlocks flowLayoutBuildingBlocks = new FlowLayoutBuildingBlocks(i4, flowLayoutOverflowState, OrientationIndependentConstraints.m2000constructorimpl(0, i, 0, Integer.MAX_VALUE), i5, i2, i3, null);
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) qn1.W(0, list);
        int i6 = intrinsicMeasurable != null ? iArr2[0] : 0;
        int i7 = intrinsicMeasurable != null ? iArr[0] : 0;
        int i8 = 0;
        if (flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(list.size() > 1, 0, IntIntPair.m1028constructorimpl(i, Integer.MAX_VALUE), intrinsicMeasurable == null ? null : IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(i7, i6)), 0, 0, 0, false, false).isLastItemInContainer()) {
            IntIntPair intIntPairM1892ellipsisSizeF35zmw$foundation_layout = flowLayoutOverflowState.m1892ellipsisSizeF35zmw$foundation_layout(intrinsicMeasurable != null, 0, 0);
            return IntIntPair.m1028constructorimpl(intIntPairM1892ellipsisSizeF35zmw$foundation_layout != null ? IntIntPair.m1033getSecondimpl(intIntPairM1892ellipsisSizeF35zmw$foundation_layout.m1036unboximpl()) : 0, 0);
        }
        int size = list.size();
        int i9 = i;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i10 < size) {
            int i15 = i9 - i7;
            int i16 = i10 + 1;
            int iMax = Math.max(i14, i6);
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) qn1.W(i16, list);
            int i17 = intrinsicMeasurable2 != null ? iArr2[i16] : 0;
            int i18 = intrinsicMeasurable2 != null ? iArr[i16] + i2 : 0;
            int i19 = i16 - i12;
            int i20 = i13;
            int i21 = i17;
            int i22 = i18;
            FlowLayoutBuildingBlocks.WrapInfo wrapInfoM1887getWrapInfoOpUlnko = flowLayoutBuildingBlocks.m1887getWrapInfoOpUlnko(i10 + 2 < list.size(), i19, IntIntPair.m1028constructorimpl(i15, Integer.MAX_VALUE), intrinsicMeasurable2 == null ? null : IntIntPair.m1025boximpl(IntIntPair.m1028constructorimpl(i18, i17)), i20, i8, iMax, false, false);
            if (wrapInfoM1887getWrapInfoOpUlnko.isLastItemInLine()) {
                int iM1033getSecondimpl = iMax + i3 + i8;
                FlowLayoutBuildingBlocks.WrapEllipsisInfo wrapEllipsisInfo = flowLayoutBuildingBlocks.getWrapEllipsisInfo(wrapInfoM1887getWrapInfoOpUlnko, intrinsicMeasurable2 != null, i20, iM1033getSecondimpl, i15, i19);
                int i23 = i22 - i2;
                i13 = i20 + 1;
                if (wrapInfoM1887getWrapInfoOpUlnko.isLastItemInContainer()) {
                    if (wrapEllipsisInfo != null) {
                        long jM1888getEllipsisSizeOO21N7I = wrapEllipsisInfo.m1888getEllipsisSizeOO21N7I();
                        if (!wrapEllipsisInfo.getPlaceEllipsisOnLastContentLine()) {
                            iM1033getSecondimpl += IntIntPair.m1033getSecondimpl(jM1888getEllipsisSizeOO21N7I) + i3;
                        }
                    }
                    i8 = iM1033getSecondimpl;
                    i11 = i16;
                    break;
                }
                i14 = 0;
                i8 = iM1033getSecondimpl;
                i7 = i23;
                i12 = i16;
                i9 = i;
            } else {
                i9 = i15;
                i13 = i20;
                i14 = iMax;
                i7 = i22;
            }
            i10 = i16;
            i11 = i10;
            i6 = i21;
        }
        return IntIntPair.m1028constructorimpl(i8 - i3, i11);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0122  */
    /* JADX WARN: Code duplicated, block: B:104:0x015d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0167  */
    /* JADX WARN: Code duplicated, block: B:110:0x017a  */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00df  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:91:0x0102  */
    /* JADX WARN: Code duplicated, block: B:92:0x010e  */
    /* JADX WARN: Code duplicated, block: B:95:0x0116  */
    /* JADX WARN: Code duplicated, block: B:97:0x0119  */
    /* JADX WARN: Code duplicated, block: B:98:0x011b  */
    public static final void FlowColumn(Modifier modifier, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, Alignment.Horizontal horizontal2, int i, int i2, final dm3<? super FlowColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i3, final int i4) {
        Modifier modifier2;
        int i5;
        Arrangement.Vertical vertical2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z;
        Composer composer2;
        final Alignment.Horizontal horizontal3;
        final Modifier modifier3;
        final Arrangement.Vertical vertical3;
        final int i16;
        final Arrangement.Horizontal horizontal4;
        final int i17;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int i18;
        Arrangement.Vertical top;
        Arrangement.Horizontal start;
        int i19;
        Alignment.Horizontal start2;
        int i20;
        int i21;
        Composer composerStartRestartGroup = composer.startRestartGroup(1371845627);
        int i22 = i4 & 1;
        if (i22 != 0) {
            i5 = i3 | 6;
            modifier2 = modifier;
        } else if ((i3 & 6) == 0) {
            modifier2 = modifier;
            i5 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i3;
        } else {
            modifier2 = modifier;
            i5 = i3;
        }
        int i23 = i4 & 2;
        if (i23 == 0) {
            if ((i3 & 48) == 0) {
                vertical2 = vertical;
                i5 |= composerStartRestartGroup.changed(vertical2) ? 32 : 16;
            }
            i6 = i4 & 4;
            if (i6 != 0) {
                if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(horizontal)) {
                        i7 = 256;
                    } else {
                        i7 = 128;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 8;
                if (i8 != 0) {
                    if ((i3 & 3072) == 0) {
                        if (composerStartRestartGroup.changed(horizontal2)) {
                            i9 = 2048;
                        } else {
                            i9 = 1024;
                        }
                        i5 |= i9;
                    }
                    i10 = i4 & 16;
                    if (i10 != 0) {
                        if ((i3 & 24576) == 0) {
                            i11 = i;
                            if (composerStartRestartGroup.changed(i11)) {
                                i12 = 16384;
                            } else {
                                i12 = 8192;
                            }
                            i5 |= i12;
                        }
                        i13 = i4 & 32;
                        if (i13 != 0) {
                            if ((196608 & i3) == 0) {
                                i14 = i2;
                                if (composerStartRestartGroup.changed(i14)) {
                                    i15 = 131072;
                                } else {
                                    i15 = 65536;
                                }
                                i5 |= i15;
                            }
                            if ((i3 & 1572864) == 0) {
                                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                    i21 = 1048576;
                                } else {
                                    i21 = 524288;
                                }
                                i5 |= i21;
                            }
                            if ((i5 & 599187) != 599186) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                                if (i22 != 0) {
                                    modifier4 = Modifier.Companion;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if (i23 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                    i18 = i8;
                                } else {
                                    i18 = i8;
                                    top = vertical2;
                                }
                                if (i6 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                } else {
                                    start = horizontal;
                                }
                                if (i18 != 0) {
                                    start2 = Alignment.Companion.getStart();
                                    i19 = i10;
                                } else {
                                    i19 = i10;
                                    start2 = horizontal2;
                                }
                                if (i19 != 0) {
                                    i11 = Integer.MAX_VALUE;
                                }
                                if (i13 != 0) {
                                    i20 = Integer.MAX_VALUE;
                                } else {
                                    i20 = i14;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                                }
                                composer2 = composerStartRestartGroup;
                                FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier4;
                                vertical3 = top;
                                horizontal4 = start;
                                horizontal3 = start2;
                                i16 = i20;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                horizontal3 = horizontal2;
                                modifier3 = modifier2;
                                vertical3 = vertical2;
                                i16 = i14;
                                horizontal4 = horizontal;
                            }
                            i17 = i11;
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i14 = i2;
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                top = vertical2;
                            }
                            if (i6 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal;
                            }
                            if (i18 != 0) {
                                start2 = Alignment.Companion.getStart();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                start2 = horizontal2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            vertical3 = top;
                            horizontal4 = start;
                            horizontal3 = start2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            horizontal3 = horizontal2;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            i16 = i14;
                            horizontal4 = horizontal;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= 24576;
                    i11 = i;
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                top = vertical2;
                            }
                            if (i6 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal;
                            }
                            if (i18 != 0) {
                                start2 = Alignment.Companion.getStart();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                start2 = horizontal2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            vertical3 = top;
                            horizontal4 = start;
                            horizontal3 = start2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            horizontal3 = horizontal2;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            i16 = i14;
                            horizontal4 = horizontal;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 3072;
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                top = vertical2;
                            }
                            if (i6 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal;
                            }
                            if (i18 != 0) {
                                start2 = Alignment.Companion.getStart();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                start2 = horizontal2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            vertical3 = top;
                            horizontal4 = start;
                            horizontal3 = start2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            horizontal3 = horizontal2;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            i16 = i14;
                            horizontal4 = horizontal;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                top = vertical2;
                            }
                            if (i6 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal;
                            }
                            if (i18 != 0) {
                                start2 = Alignment.Companion.getStart();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                start2 = horizontal2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            vertical3 = top;
                            horizontal4 = start;
                            horizontal3 = start2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            horizontal3 = horizontal2;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            i16 = i14;
                            horizontal4 = horizontal;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                    i18 = i8;
                } else {
                    i18 = i8;
                    top = vertical2;
                }
                if (i6 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal;
                }
                if (i18 != 0) {
                    start2 = Alignment.Companion.getStart();
                    i19 = i10;
                } else {
                    i19 = i10;
                    start2 = horizontal2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                }
                composer2 = composerStartRestartGroup;
                FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                vertical3 = top;
                horizontal4 = start;
                horizontal3 = start2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal3 = horizontal2;
                modifier3 = modifier2;
                vertical3 = vertical2;
                i16 = i14;
                horizontal4 = horizontal;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 48;
        vertical2 = vertical;
        i6 = i4 & 4;
        if (i6 != 0) {
            if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(horizontal)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i5 |= i7;
            }
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    if (composerStartRestartGroup.changed(horizontal2)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                top = vertical2;
                            }
                            if (i6 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                            } else {
                                start = horizontal;
                            }
                            if (i18 != 0) {
                                start2 = Alignment.Companion.getStart();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                start2 = horizontal2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            vertical3 = top;
                            horizontal4 = start;
                            horizontal3 = start2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            horizontal3 = horizontal2;
                            modifier3 = modifier2;
                            vertical3 = vertical2;
                            i16 = i14;
                            horizontal4 = horizontal;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                    i18 = i8;
                } else {
                    i18 = i8;
                    top = vertical2;
                }
                if (i6 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal;
                }
                if (i18 != 0) {
                    start2 = Alignment.Companion.getStart();
                    i19 = i10;
                } else {
                    i19 = i10;
                    start2 = horizontal2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                }
                composer2 = composerStartRestartGroup;
                FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                vertical3 = top;
                horizontal4 = start;
                horizontal3 = start2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal3 = horizontal2;
                modifier3 = modifier2;
                vertical3 = vertical2;
                i16 = i14;
                horizontal4 = horizontal;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        i8 = i4 & 8;
        if (i8 != 0) {
            if ((i3 & 3072) == 0) {
                if (composerStartRestartGroup.changed(horizontal2)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i5 |= i9;
            }
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            top = vertical2;
                        }
                        if (i6 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                        } else {
                            start = horizontal;
                        }
                        if (i18 != 0) {
                            start2 = Alignment.Companion.getStart();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            start2 = horizontal2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        vertical3 = top;
                        horizontal4 = start;
                        horizontal3 = start2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        horizontal3 = horizontal2;
                        modifier3 = modifier2;
                        vertical3 = vertical2;
                        i16 = i14;
                        horizontal4 = horizontal;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                    i18 = i8;
                } else {
                    i18 = i8;
                    top = vertical2;
                }
                if (i6 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal;
                }
                if (i18 != 0) {
                    start2 = Alignment.Companion.getStart();
                    i19 = i10;
                } else {
                    i19 = i10;
                    start2 = horizontal2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                }
                composer2 = composerStartRestartGroup;
                FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                vertical3 = top;
                horizontal4 = start;
                horizontal3 = start2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal3 = horizontal2;
                modifier3 = modifier2;
                vertical3 = vertical2;
                i16 = i14;
                horizontal4 = horizontal;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 3072;
        i10 = i4 & 16;
        if (i10 != 0) {
            if ((i3 & 24576) == 0) {
                i11 = i;
                if (composerStartRestartGroup.changed(i11)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i5 |= i12;
            }
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        top = vertical2;
                    }
                    if (i6 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                    } else {
                        start = horizontal;
                    }
                    if (i18 != 0) {
                        start2 = Alignment.Companion.getStart();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        start2 = horizontal2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    vertical3 = top;
                    horizontal4 = start;
                    horizontal3 = start2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    horizontal3 = horizontal2;
                    modifier3 = modifier2;
                    vertical3 = vertical2;
                    i16 = i14;
                    horizontal4 = horizontal;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                    i18 = i8;
                } else {
                    i18 = i8;
                    top = vertical2;
                }
                if (i6 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal;
                }
                if (i18 != 0) {
                    start2 = Alignment.Companion.getStart();
                    i19 = i10;
                } else {
                    i19 = i10;
                    start2 = horizontal2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                }
                composer2 = composerStartRestartGroup;
                FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                vertical3 = top;
                horizontal4 = start;
                horizontal3 = start2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal3 = horizontal2;
                modifier3 = modifier2;
                vertical3 = vertical2;
                i16 = i14;
                horizontal4 = horizontal;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 24576;
        i11 = i;
        i13 = i4 & 32;
        if (i13 != 0) {
            if ((196608 & i3) == 0) {
                i14 = i2;
                if (composerStartRestartGroup.changed(i14)) {
                    i15 = 131072;
                } else {
                    i15 = 65536;
                }
                i5 |= i15;
            }
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                    i18 = i8;
                } else {
                    i18 = i8;
                    top = vertical2;
                }
                if (i6 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                } else {
                    start = horizontal;
                }
                if (i18 != 0) {
                    start2 = Alignment.Companion.getStart();
                    i19 = i10;
                } else {
                    i19 = i10;
                    start2 = horizontal2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
                }
                composer2 = composerStartRestartGroup;
                FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                vertical3 = top;
                horizontal4 = start;
                horizontal3 = start2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                horizontal3 = horizontal2;
                modifier3 = modifier2;
                vertical3 = vertical2;
                i16 = i14;
                horizontal4 = horizontal;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i14 = i2;
        if ((i3 & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i21 = 1048576;
            } else {
                i21 = 524288;
            }
            i5 |= i21;
        }
        if ((i5 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
            if (i22 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i23 != 0) {
                top = Arrangement.INSTANCE.getTop();
                i18 = i8;
            } else {
                i18 = i8;
                top = vertical2;
            }
            if (i6 != 0) {
                start = Arrangement.INSTANCE.getStart();
            } else {
                start = horizontal;
            }
            if (i18 != 0) {
                start2 = Alignment.Companion.getStart();
                i19 = i10;
            } else {
                i19 = i10;
                start2 = horizontal2;
            }
            if (i19 != 0) {
                i11 = Integer.MAX_VALUE;
            }
            if (i13 != 0) {
                i20 = Integer.MAX_VALUE;
            } else {
                i20 = i14;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1371845627, i5, -1, "androidx.compose.foundation.layout.FlowColumn (FlowLayout.kt:271)");
            }
            composer2 = composerStartRestartGroup;
            FlowColumn(modifier4, top, start, start2, i11, i20, FlowColumnOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            vertical3 = top;
            horizontal4 = start;
            horizontal3 = start2;
            i16 = i20;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            horizontal3 = horizontal2;
            modifier3 = modifier2;
            vertical3 = vertical2;
            i16 = i14;
            horizontal4 = horizontal;
        }
        i17 = i11;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: kf3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return FlowLayoutKt.FlowColumn$lambda$3(modifier3, vertical3, horizontal4, horizontal3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0122  */
    /* JADX WARN: Code duplicated, block: B:104:0x015d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0167  */
    /* JADX WARN: Code duplicated, block: B:110:0x017a  */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0092  */
    /* JADX WARN: Code duplicated, block: B:59:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00df  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:91:0x0102  */
    /* JADX WARN: Code duplicated, block: B:92:0x010e  */
    /* JADX WARN: Code duplicated, block: B:95:0x0116  */
    /* JADX WARN: Code duplicated, block: B:97:0x0119  */
    /* JADX WARN: Code duplicated, block: B:98:0x011b  */
    public static final void FlowRow(Modifier modifier, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, Alignment.Vertical vertical2, int i, int i2, final dm3<? super FlowRowScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i3, final int i4) {
        Modifier modifier2;
        int i5;
        Arrangement.Horizontal horizontal2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z;
        Composer composer2;
        final Alignment.Vertical vertical3;
        final Modifier modifier3;
        final Arrangement.Horizontal horizontal3;
        final int i16;
        final Arrangement.Vertical vertical4;
        final int i17;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        int i18;
        Arrangement.Horizontal start;
        Arrangement.Vertical top;
        int i19;
        Alignment.Vertical top2;
        int i20;
        int i21;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1303174015);
        int i22 = i4 & 1;
        if (i22 != 0) {
            i5 = i3 | 6;
            modifier2 = modifier;
        } else if ((i3 & 6) == 0) {
            modifier2 = modifier;
            i5 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i3;
        } else {
            modifier2 = modifier;
            i5 = i3;
        }
        int i23 = i4 & 2;
        if (i23 == 0) {
            if ((i3 & 48) == 0) {
                horizontal2 = horizontal;
                i5 |= composerStartRestartGroup.changed(horizontal2) ? 32 : 16;
            }
            i6 = i4 & 4;
            if (i6 != 0) {
                if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(vertical)) {
                        i7 = 256;
                    } else {
                        i7 = 128;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 8;
                if (i8 != 0) {
                    if ((i3 & 3072) == 0) {
                        if (composerStartRestartGroup.changed(vertical2)) {
                            i9 = 2048;
                        } else {
                            i9 = 1024;
                        }
                        i5 |= i9;
                    }
                    i10 = i4 & 16;
                    if (i10 != 0) {
                        if ((i3 & 24576) == 0) {
                            i11 = i;
                            if (composerStartRestartGroup.changed(i11)) {
                                i12 = 16384;
                            } else {
                                i12 = 8192;
                            }
                            i5 |= i12;
                        }
                        i13 = i4 & 32;
                        if (i13 != 0) {
                            if ((196608 & i3) == 0) {
                                i14 = i2;
                                if (composerStartRestartGroup.changed(i14)) {
                                    i15 = 131072;
                                } else {
                                    i15 = 65536;
                                }
                                i5 |= i15;
                            }
                            if ((i3 & 1572864) == 0) {
                                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                    i21 = 1048576;
                                } else {
                                    i21 = 524288;
                                }
                                i5 |= i21;
                            }
                            if ((i5 & 599187) != 599186) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                                if (i22 != 0) {
                                    modifier4 = Modifier.Companion;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if (i23 != 0) {
                                    start = Arrangement.INSTANCE.getStart();
                                    i18 = i8;
                                } else {
                                    i18 = i8;
                                    start = horizontal2;
                                }
                                if (i6 != 0) {
                                    top = Arrangement.INSTANCE.getTop();
                                } else {
                                    top = vertical;
                                }
                                if (i18 != 0) {
                                    top2 = Alignment.Companion.getTop();
                                    i19 = i10;
                                } else {
                                    i19 = i10;
                                    top2 = vertical2;
                                }
                                if (i19 != 0) {
                                    i11 = Integer.MAX_VALUE;
                                }
                                if (i13 != 0) {
                                    i20 = Integer.MAX_VALUE;
                                } else {
                                    i20 = i14;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                                }
                                composer2 = composerStartRestartGroup;
                                FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                modifier3 = modifier4;
                                horizontal3 = start;
                                vertical4 = top;
                                vertical3 = top2;
                                i16 = i20;
                            } else {
                                composer2 = composerStartRestartGroup;
                                composer2.skipToGroupEnd();
                                vertical3 = vertical2;
                                modifier3 = modifier2;
                                horizontal3 = horizontal2;
                                i16 = i14;
                                vertical4 = vertical;
                            }
                            i17 = i11;
                            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i14 = i2;
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                start = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical;
                            }
                            if (i18 != 0) {
                                top2 = Alignment.Companion.getTop();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                top2 = vertical2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            horizontal3 = start;
                            vertical4 = top;
                            vertical3 = top2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            vertical3 = vertical2;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            i16 = i14;
                            vertical4 = vertical;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= 24576;
                    i11 = i;
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                start = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical;
                            }
                            if (i18 != 0) {
                                top2 = Alignment.Companion.getTop();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                top2 = vertical2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            horizontal3 = start;
                            vertical4 = top;
                            vertical3 = top2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            vertical3 = vertical2;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            i16 = i14;
                            vertical4 = vertical;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 3072;
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                start = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical;
                            }
                            if (i18 != 0) {
                                top2 = Alignment.Companion.getTop();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                top2 = vertical2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            horizontal3 = start;
                            vertical4 = top;
                            vertical3 = top2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            vertical3 = vertical2;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            i16 = i14;
                            vertical4 = vertical;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                start = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical;
                            }
                            if (i18 != 0) {
                                top2 = Alignment.Companion.getTop();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                top2 = vertical2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            horizontal3 = start;
                            vertical4 = top;
                            vertical3 = top2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            vertical3 = vertical2;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            i16 = i14;
                            vertical4 = vertical;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                    i18 = i8;
                } else {
                    i18 = i8;
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical;
                }
                if (i18 != 0) {
                    top2 = Alignment.Companion.getTop();
                    i19 = i10;
                } else {
                    i19 = i10;
                    top2 = vertical2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                }
                composer2 = composerStartRestartGroup;
                FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                horizontal3 = start;
                vertical4 = top;
                vertical3 = top2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                vertical3 = vertical2;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                i16 = i14;
                vertical4 = vertical;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 48;
        horizontal2 = horizontal;
        i6 = i4 & 4;
        if (i6 != 0) {
            if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(vertical)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i5 |= i7;
            }
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    if (composerStartRestartGroup.changed(vertical2)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        i11 = i;
                        if (composerStartRestartGroup.changed(i11)) {
                            i12 = 16384;
                        } else {
                            i12 = 8192;
                        }
                        i5 |= i12;
                    }
                    i13 = i4 & 32;
                    if (i13 != 0) {
                        if ((196608 & i3) == 0) {
                            i14 = i2;
                            if (composerStartRestartGroup.changed(i14)) {
                                i15 = 131072;
                            } else {
                                i15 = 65536;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i21 = 1048576;
                            } else {
                                i21 = 524288;
                            }
                            i5 |= i21;
                        }
                        if ((i5 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                            if (i22 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i23 != 0) {
                                start = Arrangement.INSTANCE.getStart();
                                i18 = i8;
                            } else {
                                i18 = i8;
                                start = horizontal2;
                            }
                            if (i6 != 0) {
                                top = Arrangement.INSTANCE.getTop();
                            } else {
                                top = vertical;
                            }
                            if (i18 != 0) {
                                top2 = Alignment.Companion.getTop();
                                i19 = i10;
                            } else {
                                i19 = i10;
                                top2 = vertical2;
                            }
                            if (i19 != 0) {
                                i11 = Integer.MAX_VALUE;
                            }
                            if (i13 != 0) {
                                i20 = Integer.MAX_VALUE;
                            } else {
                                i20 = i14;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                            }
                            composer2 = composerStartRestartGroup;
                            FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            modifier3 = modifier4;
                            horizontal3 = start;
                            vertical4 = top;
                            vertical3 = top2;
                            i16 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            vertical3 = vertical2;
                            modifier3 = modifier2;
                            horizontal3 = horizontal2;
                            i16 = i14;
                            vertical4 = vertical;
                        }
                        i17 = i11;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i14 = i2;
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                i11 = i;
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                    i18 = i8;
                } else {
                    i18 = i8;
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical;
                }
                if (i18 != 0) {
                    top2 = Alignment.Companion.getTop();
                    i19 = i10;
                } else {
                    i19 = i10;
                    top2 = vertical2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                }
                composer2 = composerStartRestartGroup;
                FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                horizontal3 = start;
                vertical4 = top;
                vertical3 = top2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                vertical3 = vertical2;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                i16 = i14;
                vertical4 = vertical;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        i8 = i4 & 8;
        if (i8 != 0) {
            if ((i3 & 3072) == 0) {
                if (composerStartRestartGroup.changed(vertical2)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i5 |= i9;
            }
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    i11 = i;
                    if (composerStartRestartGroup.changed(i11)) {
                        i12 = 16384;
                    } else {
                        i12 = 8192;
                    }
                    i5 |= i12;
                }
                i13 = i4 & 32;
                if (i13 != 0) {
                    if ((196608 & i3) == 0) {
                        i14 = i2;
                        if (composerStartRestartGroup.changed(i14)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i21 = 1048576;
                        } else {
                            i21 = 524288;
                        }
                        i5 |= i21;
                    }
                    if ((i5 & 599187) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                        if (i22 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i23 != 0) {
                            start = Arrangement.INSTANCE.getStart();
                            i18 = i8;
                        } else {
                            i18 = i8;
                            start = horizontal2;
                        }
                        if (i6 != 0) {
                            top = Arrangement.INSTANCE.getTop();
                        } else {
                            top = vertical;
                        }
                        if (i18 != 0) {
                            top2 = Alignment.Companion.getTop();
                            i19 = i10;
                        } else {
                            i19 = i10;
                            top2 = vertical2;
                        }
                        if (i19 != 0) {
                            i11 = Integer.MAX_VALUE;
                        }
                        if (i13 != 0) {
                            i20 = Integer.MAX_VALUE;
                        } else {
                            i20 = i14;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                        }
                        composer2 = composerStartRestartGroup;
                        FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        horizontal3 = start;
                        vertical4 = top;
                        vertical3 = top2;
                        i16 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        vertical3 = vertical2;
                        modifier3 = modifier2;
                        horizontal3 = horizontal2;
                        i16 = i14;
                        vertical4 = vertical;
                    }
                    i17 = i11;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i14 = i2;
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            i11 = i;
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                    i18 = i8;
                } else {
                    i18 = i8;
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical;
                }
                if (i18 != 0) {
                    top2 = Alignment.Companion.getTop();
                    i19 = i10;
                } else {
                    i19 = i10;
                    top2 = vertical2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                }
                composer2 = composerStartRestartGroup;
                FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                horizontal3 = start;
                vertical4 = top;
                vertical3 = top2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                vertical3 = vertical2;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                i16 = i14;
                vertical4 = vertical;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 3072;
        i10 = i4 & 16;
        if (i10 != 0) {
            if ((i3 & 24576) == 0) {
                i11 = i;
                if (composerStartRestartGroup.changed(i11)) {
                    i12 = 16384;
                } else {
                    i12 = 8192;
                }
                i5 |= i12;
            }
            i13 = i4 & 32;
            if (i13 != 0) {
                if ((196608 & i3) == 0) {
                    i14 = i2;
                    if (composerStartRestartGroup.changed(i14)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i5 |= i15;
                }
                if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i5 |= i21;
                }
                if ((i5 & 599187) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                    if (i22 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i23 != 0) {
                        start = Arrangement.INSTANCE.getStart();
                        i18 = i8;
                    } else {
                        i18 = i8;
                        start = horizontal2;
                    }
                    if (i6 != 0) {
                        top = Arrangement.INSTANCE.getTop();
                    } else {
                        top = vertical;
                    }
                    if (i18 != 0) {
                        top2 = Alignment.Companion.getTop();
                        i19 = i10;
                    } else {
                        i19 = i10;
                        top2 = vertical2;
                    }
                    if (i19 != 0) {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i13 != 0) {
                        i20 = Integer.MAX_VALUE;
                    } else {
                        i20 = i14;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                    }
                    composer2 = composerStartRestartGroup;
                    FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    horizontal3 = start;
                    vertical4 = top;
                    vertical3 = top2;
                    i16 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    vertical3 = vertical2;
                    modifier3 = modifier2;
                    horizontal3 = horizontal2;
                    i16 = i14;
                    vertical4 = vertical;
                }
                i17 = i11;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i14 = i2;
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                    i18 = i8;
                } else {
                    i18 = i8;
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical;
                }
                if (i18 != 0) {
                    top2 = Alignment.Companion.getTop();
                    i19 = i10;
                } else {
                    i19 = i10;
                    top2 = vertical2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                }
                composer2 = composerStartRestartGroup;
                FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                horizontal3 = start;
                vertical4 = top;
                vertical3 = top2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                vertical3 = vertical2;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                i16 = i14;
                vertical4 = vertical;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 24576;
        i11 = i;
        i13 = i4 & 32;
        if (i13 != 0) {
            if ((196608 & i3) == 0) {
                i14 = i2;
                if (composerStartRestartGroup.changed(i14)) {
                    i15 = 131072;
                } else {
                    i15 = 65536;
                }
                i5 |= i15;
            }
            if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i5 |= i21;
            }
            if ((i5 & 599187) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
                if (i22 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i23 != 0) {
                    start = Arrangement.INSTANCE.getStart();
                    i18 = i8;
                } else {
                    i18 = i8;
                    start = horizontal2;
                }
                if (i6 != 0) {
                    top = Arrangement.INSTANCE.getTop();
                } else {
                    top = vertical;
                }
                if (i18 != 0) {
                    top2 = Alignment.Companion.getTop();
                    i19 = i10;
                } else {
                    i19 = i10;
                    top2 = vertical2;
                }
                if (i19 != 0) {
                    i11 = Integer.MAX_VALUE;
                }
                if (i13 != 0) {
                    i20 = Integer.MAX_VALUE;
                } else {
                    i20 = i14;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
                }
                composer2 = composerStartRestartGroup;
                FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                horizontal3 = start;
                vertical4 = top;
                vertical3 = top2;
                i16 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                vertical3 = vertical2;
                modifier3 = modifier2;
                horizontal3 = horizontal2;
                i16 = i14;
                vertical4 = vertical;
            }
            i17 = i11;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i14 = i2;
        if ((i3 & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i21 = 1048576;
            } else {
                i21 = 524288;
            }
            i5 |= i21;
        }
        if ((i5 & 599187) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i5 & 1)) {
            if (i22 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i23 != 0) {
                start = Arrangement.INSTANCE.getStart();
                i18 = i8;
            } else {
                i18 = i8;
                start = horizontal2;
            }
            if (i6 != 0) {
                top = Arrangement.INSTANCE.getTop();
            } else {
                top = vertical;
            }
            if (i18 != 0) {
                top2 = Alignment.Companion.getTop();
                i19 = i10;
            } else {
                i19 = i10;
                top2 = vertical2;
            }
            if (i19 != 0) {
                i11 = Integer.MAX_VALUE;
            }
            if (i13 != 0) {
                i20 = Integer.MAX_VALUE;
            } else {
                i20 = i14;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1303174015, i5, -1, "androidx.compose.foundation.layout.FlowRow (FlowLayout.kt:162)");
            }
            composer2 = composerStartRestartGroup;
            FlowRow(modifier4, start, top, top2, i11, i20, FlowRowOverflow.Companion.getClip(), dm3Var, composer2, (i5 & 14) | 1572864 | (i5 & 112) | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (458752 & i5) | ((i5 << 3) & 29360128), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            horizontal3 = start;
            vertical4 = top;
            vertical3 = top2;
            i16 = i20;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            vertical3 = vertical2;
            modifier3 = modifier2;
            horizontal3 = horizontal2;
            i16 = i14;
            vertical4 = vertical;
        }
        i17 = i11;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: nf3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return FlowLayoutKt.FlowRow$lambda$3(modifier3, horizontal3, vertical4, vertical3, i17, i16, dm3Var, i3, i4, (Composer) obj, iIntValue);
                }
            });
        }
    }
}

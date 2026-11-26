package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.material3.internal.DraggableAnchorsConfig;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.am4;
import defpackage.at0;
import defpackage.av0;
import defpackage.b36;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.e84;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.ry2;
import defpackage.ul2;
import defpackage.vb5;
import defpackage.xy2;
import defpackage.y22;
import defpackage.zb5;
import defpackage.zh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ModalBottomSheetKt {
    private static final float PredictiveBackMaxScaleXDistance = Dp.m9042constructorimpl(48.0f);
    private static final float PredictiveBackMaxScaleYDistance = Dp.m9042constructorimpl(24.0f);
    private static final long PredictiveBackChildTransformOrigin = TransformOriginKt.TransformOrigin(0.5f, 0.0f);

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SheetValue.values().length];
            try {
                iArr[SheetValue.Hidden.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SheetValue.Expanded.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011a  */
    /* JADX WARN: Code duplicated, block: B:104:0x0123  */
    /* JADX WARN: Code duplicated, block: B:106:0x0127  */
    /* JADX WARN: Code duplicated, block: B:109:0x012d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0136  */
    /* JADX WARN: Code duplicated, block: B:112:0x013a  */
    /* JADX WARN: Code duplicated, block: B:114:0x0144  */
    /* JADX WARN: Code duplicated, block: B:115:0x0147  */
    /* JADX WARN: Code duplicated, block: B:117:0x014c  */
    /* JADX WARN: Code duplicated, block: B:120:0x0156  */
    /* JADX WARN: Code duplicated, block: B:122:0x015a  */
    /* JADX WARN: Code duplicated, block: B:125:0x0165 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:129:0x016e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0175  */
    /* JADX WARN: Code duplicated, block: B:133:0x0178  */
    /* JADX WARN: Code duplicated, block: B:135:0x017e  */
    /* JADX WARN: Code duplicated, block: B:137:0x0186  */
    /* JADX WARN: Code duplicated, block: B:138:0x0189  */
    /* JADX WARN: Code duplicated, block: B:141:0x0190  */
    /* JADX WARN: Code duplicated, block: B:144:0x0199  */
    /* JADX WARN: Code duplicated, block: B:146:0x019e  */
    /* JADX WARN: Code duplicated, block: B:148:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:150:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:154:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:158:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:161:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:163:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:185:0x0228 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:186:0x022a  */
    /* JADX WARN: Code duplicated, block: B:189:0x0232  */
    /* JADX WARN: Code duplicated, block: B:191:0x023b  */
    /* JADX WARN: Code duplicated, block: B:192:0x0242  */
    /* JADX WARN: Code duplicated, block: B:194:0x0245  */
    /* JADX WARN: Code duplicated, block: B:197:0x024a  */
    /* JADX WARN: Code duplicated, block: B:200:0x0257  */
    /* JADX WARN: Code duplicated, block: B:201:0x0262  */
    /* JADX WARN: Code duplicated, block: B:204:0x0268  */
    /* JADX WARN: Code duplicated, block: B:205:0x0273  */
    /* JADX WARN: Code duplicated, block: B:207:0x0277  */
    /* JADX WARN: Code duplicated, block: B:208:0x027c  */
    /* JADX WARN: Code duplicated, block: B:211:0x0282  */
    /* JADX WARN: Code duplicated, block: B:212:0x028b  */
    /* JADX WARN: Code duplicated, block: B:214:0x028f  */
    /* JADX WARN: Code duplicated, block: B:215:0x0296  */
    /* JADX WARN: Code duplicated, block: B:218:0x029c  */
    /* JADX WARN: Code duplicated, block: B:219:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:222:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:223:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:226:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:229:0x030b  */
    /* JADX WARN: Code duplicated, block: B:231:0x0311  */
    /* JADX WARN: Code duplicated, block: B:237:0x032d  */
    /* JADX WARN: Code duplicated, block: B:239:0x0335  */
    /* JADX WARN: Code duplicated, block: B:242:0x034f  */
    /* JADX WARN: Code duplicated, block: B:245:0x035e  */
    /* JADX WARN: Code duplicated, block: B:247:0x0364  */
    /* JADX WARN: Code duplicated, block: B:253:0x0375  */
    /* JADX WARN: Code duplicated, block: B:254:0x0377  */
    /* JADX WARN: Code duplicated, block: B:257:0x037f  */
    /* JADX WARN: Code duplicated, block: B:259:0x0385  */
    /* JADX WARN: Code duplicated, block: B:262:0x0399  */
    /* JADX WARN: Code duplicated, block: B:264:0x039f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:270:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:271:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:274:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:276:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:279:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:282:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:284:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:28:0x004b  */
    /* JADX WARN: Code duplicated, block: B:290:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:291:0x03fd  */
    /* JADX WARN: Code duplicated, block: B:294:0x0405  */
    /* JADX WARN: Code duplicated, block: B:296:0x040b  */
    /* JADX WARN: Code duplicated, block: B:299:0x0455  */
    /* JADX WARN: Code duplicated, block: B:301:0x045f  */
    /* JADX WARN: Code duplicated, block: B:303:0x0465  */
    /* JADX WARN: Code duplicated, block: B:309:0x0471  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:311:0x0477  */
    /* JADX WARN: Code duplicated, block: B:313:0x048e  */
    /* JADX WARN: Code duplicated, block: B:316:0x049d  */
    /* JADX WARN: Code duplicated, block: B:318:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:31:0x0056  */
    /* JADX WARN: Code duplicated, block: B:321:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:323:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x005d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0078  */
    /* JADX WARN: Code duplicated, block: B:44:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0083  */
    /* JADX WARN: Code duplicated, block: B:50:0x0088  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x0094  */
    /* JADX WARN: Code duplicated, block: B:55:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:69:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:92:0x0101  */
    /* JADX WARN: Code duplicated, block: B:94:0x0107  */
    /* JADX WARN: Code duplicated, block: B:95:0x010a  */
    /* JADX WARN: Code duplicated, block: B:99:0x0114  */
    /* JADX INFO: renamed from: ModalBottomSheet-YbuCTN8, reason: not valid java name */
    public static final void m3623ModalBottomSheetYbuCTN8(final ll3<j59> ll3Var, Modifier modifier, SheetState sheetState, float f, boolean z, Shape shape, long j, long j2, float f2, long j3, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var2, ModalBottomSheetProperties modalBottomSheetProperties, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        final SheetState sheetStateRememberModalBottomSheetState;
        int i5;
        float f3;
        int i6;
        int i7;
        boolean z2;
        int i8;
        Shape expandedShape;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z3;
        Composer composer2;
        final long j4;
        final bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var3;
        final ModalBottomSheetProperties modalBottomSheetProperties2;
        final float f4;
        final boolean z4;
        final Modifier modifier3;
        final SheetState sheetState2;
        final Shape shape2;
        final long j5;
        final float f5;
        final long j6;
        final bm3<? super Composer, ? super Integer, j59> bm3Var4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        float fM3122getSheetMaxWidthD9Ej5fM;
        long containerColor;
        long jM3275contentColorForek8zF_U;
        float fM9042constructorimpl;
        long scrimColor;
        bm3<? super Composer, ? super Integer, j59> lambda$1121996006$material3;
        bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var5;
        int i20;
        float f6;
        ModalBottomSheetProperties modalBottomSheetProperties3;
        bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var6;
        long j7;
        float f7;
        boolean z5;
        Modifier modifier4;
        Shape shape3;
        bm3<? super Composer, ? super Integer, j59> bm3Var7;
        long j8;
        long j9;
        final FiniteAnimationSpec finiteAnimationSpecValue;
        final FiniteAnimationSpec finiteAnimationSpecValue2;
        final FiniteAnimationSpec finiteAnimationSpecValue3;
        int i21;
        boolean zChangedInstance;
        Object objRememberedValue;
        Object objRememberedValue2;
        Composer.Companion companion;
        final y22 y22Var;
        int i22;
        boolean z6;
        boolean z7;
        Object objRememberedValue3;
        boolean z8;
        boolean z9;
        Object objRememberedValue4;
        Object objRememberedValue5;
        final Animatable animatable;
        boolean z10;
        boolean z11;
        Object objRememberedValue6;
        boolean z12;
        Object objRememberedValue7;
        int i23;
        int i24;
        int i25;
        int i26;
        Composer composerStartRestartGroup = composer.startRestartGroup(1904798512);
        if ((i3 & 1) != 0) {
            i4 = i | 6;
        } else if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        int i27 = i3 & 2;
        if (i27 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    sheetStateRememberModalBottomSheetState = sheetState;
                    int i28 = composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState) ? 256 : 128;
                    i4 |= i28;
                } else {
                    sheetStateRememberModalBottomSheetState = sheetState;
                }
                i4 |= i28;
            } else {
                sheetStateRememberModalBottomSheetState = sheetState;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    f3 = f;
                    if (composerStartRestartGroup.changed(f3)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 16;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i4 |= i8;
                    }
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        expandedShape = shape;
                        if ((i3 & 32) == 0 || !composerStartRestartGroup.changed(expandedShape)) {
                            i26 = 65536;
                        } else {
                            i26 = 131072;
                        }
                        i4 |= i26;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i & 1572864) != 0) {
                        if ((i3 & 64) == 0 || !composerStartRestartGroup.changed(j)) {
                            i25 = 524288;
                        } else {
                            i25 = 1048576;
                        }
                        i4 |= i25;
                    }
                    if ((i & 12582912) == 0) {
                        int i29 = i4;
                        if ((i3 & 128) == 0 || !composerStartRestartGroup.changed(j2)) {
                            i24 = 4194304;
                        } else {
                            i24 = 8388608;
                        }
                        i9 = i29 | i24;
                    } else {
                        i9 = i4;
                    }
                    i10 = i3 & 256;
                    if (i10 != 0) {
                        i9 |= 100663296;
                    } else if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(f2)) {
                            i11 = 67108864;
                        } else {
                            i11 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i9 |= i11;
                    }
                    if ((i & 805306368) != 0) {
                        if ((i3 & 512) == 0 || !composerStartRestartGroup.changed(j3)) {
                            i23 = 268435456;
                        } else {
                            i23 = 536870912;
                        }
                        i9 |= i23;
                    }
                    i12 = i3 & 1024;
                    if (i12 != 0) {
                        i13 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i14 = 4;
                        } else {
                            i14 = 2;
                        }
                        i13 = i2 | i14;
                    } else {
                        i13 = i2;
                    }
                    if ((i2 & 48) != 0) {
                        i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
                    }
                    i15 = i13;
                    i16 = i3 & 4096;
                    if (i16 != 0) {
                        i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else {
                        i17 = i15;
                        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                            if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                                i19 = 256;
                            } else {
                                i19 = 128;
                            }
                            i17 |= i19;
                        }
                        i18 = i17;
                    }
                    if ((i3 & 8192) != 0) {
                        if ((i2 & 3072) == 0) {
                            i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
                        }
                        if ((i9 & 306783379) == 306783378 || (i18 & 1171) != 1170) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i27 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i3 & 4) != 0) {
                                    i9 &= -897;
                                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                                }
                                if (i5 != 0) {
                                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                                } else {
                                    fM3122getSheetMaxWidthD9Ej5fM = f3;
                                }
                                if (i7 != 0) {
                                    z2 = true;
                                }
                                if ((i3 & 32) != 0) {
                                    i9 &= -458753;
                                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                }
                                if ((i3 & 64) != 0) {
                                    i9 &= -3670017;
                                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                } else {
                                    containerColor = j;
                                }
                                if ((i3 & 128) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                    i9 &= -29360129;
                                } else {
                                    jM3275contentColorForek8zF_U = j2;
                                }
                                if (i10 != 0) {
                                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                                } else {
                                    fM9042constructorimpl = f2;
                                }
                                if ((i3 & 512) != 0) {
                                    scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                    i9 &= -1879048193;
                                } else {
                                    scrimColor = j3;
                                }
                                if (i12 != 0) {
                                    lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                                } else {
                                    lambda$1121996006$material3 = bm3Var;
                                }
                                if ((i3 & 2048) != 0) {
                                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                        public final WindowInsets invoke(Composer composer3, int i30) {
                                            composer3.startReplaceGroup(-511854661);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                            }
                                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                            composer3.endReplaceGroup();
                                            return windowInsets;
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                            return invoke(composer3, num.intValue());
                                        }
                                    };
                                    i18 &= -113;
                                } else {
                                    bm3Var5 = bm3Var2;
                                }
                                i20 = i18;
                                if (i16 != 0) {
                                    f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                    modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                    bm3Var6 = bm3Var5;
                                    j7 = containerColor;
                                    f7 = fM9042constructorimpl;
                                    z5 = z2;
                                    modifier4 = modifier2;
                                    shape3 = expandedShape;
                                    bm3Var7 = lambda$1121996006$material3;
                                    j8 = jM3275contentColorForek8zF_U;
                                    j9 = scrimColor;
                                    i18 = i20;
                                } else {
                                    f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                    modalBottomSheetProperties3 = modalBottomSheetProperties;
                                    bm3Var6 = bm3Var5;
                                    j7 = containerColor;
                                    f7 = fM9042constructorimpl;
                                    z5 = z2;
                                    modifier4 = modifier2;
                                    shape3 = expandedShape;
                                    bm3Var7 = lambda$1121996006$material3;
                                    j8 = jM3275contentColorForek8zF_U;
                                    j9 = scrimColor;
                                }
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 4) != 0) {
                                    i9 &= -897;
                                }
                                if ((i3 & 32) != 0) {
                                    i9 &= -458753;
                                }
                                if ((i3 & 64) != 0) {
                                    i9 &= -3670017;
                                }
                                if ((i3 & 128) != 0) {
                                    i9 &= -29360129;
                                }
                                if ((i3 & 512) != 0) {
                                    i9 &= -1879048193;
                                }
                                if ((i3 & 2048) != 0) {
                                    i18 &= -113;
                                }
                                j7 = j;
                                j8 = j2;
                                f7 = f2;
                                j9 = j3;
                                bm3Var7 = bm3Var;
                                bm3Var6 = bm3Var2;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                f6 = f3;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                            }
                            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultSpatial;
                            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
                            finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
                            finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                            i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                            zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new ll3() { // from class: cc5
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            y22Var = (y22) objRememberedValue2;
                            boolean zChangedInstance2 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                            i22 = i9 & 14;
                            if (i22 == 4) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            z7 = zChangedInstance2 | z6;
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z7 || objRememberedValue3 == companion.getEmpty()) {
                                objRememberedValue3 = new ll3() { // from class: dc5
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            ll3 ll3Var2 = (ll3) objRememberedValue3;
                            boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                            if (i22 == 4) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            z9 = zChangedInstance3 | z8;
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (z9 || objRememberedValue4 == companion.getEmpty()) {
                                objRememberedValue4 = new nl3() { // from class: rb5
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            nl3 nl3Var = (nl3) objRememberedValue4;
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue5 == companion.getEmpty()) {
                                objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            animatable = (Animatable) objRememberedValue5;
                            boolean zChangedInstance4 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                            if (i22 == 4) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            z11 = z10 | zChangedInstance4;
                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                            if (z11 || objRememberedValue6 == companion.getEmpty()) {
                                objRememberedValue6 = new ll3() { // from class: sb5
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                            }
                            z12 = true;
                            ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var2, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                            composer2 = composerStartRestartGroup;
                            if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                                composer2.startReplaceGroup(748459762);
                                if ((i21 > 256 || !composer2.changed(sheetStateRememberModalBottomSheetState)) && (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) != 256) {
                                }
                                objRememberedValue7 = composer2.rememberedValue();
                                if (z12 || objRememberedValue7 == companion.getEmpty()) {
                                    objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                    composer2.updateRememberedValue(objRememberedValue7);
                                }
                                EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                                composer2.endReplaceGroup();
                            } else {
                                composer2.startReplaceGroup(748521266);
                                composer2.endReplaceGroup();
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            sheetState2 = sheetStateRememberModalBottomSheetState;
                            j6 = j9;
                            modalBottomSheetProperties2 = modalBottomSheetProperties3;
                            modifier3 = modifier4;
                            f4 = f6;
                            z4 = z5;
                            shape2 = shape3;
                            j4 = j7;
                            j5 = j8;
                            f5 = f7;
                            bm3Var4 = bm3Var7;
                            bm3Var3 = bm3Var6;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            j4 = j;
                            bm3Var3 = bm3Var2;
                            modalBottomSheetProperties2 = modalBottomSheetProperties;
                            f4 = f3;
                            z4 = z2;
                            modifier3 = modifier2;
                            sheetState2 = sheetStateRememberModalBottomSheetState;
                            shape2 = expandedShape;
                            j5 = j2;
                            f5 = f2;
                            j6 = j3;
                            bm3Var4 = bm3Var;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i18 |= 3072;
                    if ((i9 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        } else {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens2 = MotionSchemeKeyTokens.DefaultSpatial;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens2, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                        i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                        zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        y22Var = (y22) objRememberedValue2;
                        boolean zChangedInstance5 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                        i22 = i9 & 14;
                        if (i22 == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z7 = zChangedInstance5 | z6;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        ll3 ll3Var3 = (ll3) objRememberedValue3;
                        boolean zChangedInstance6 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                        if (i22 == 4) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        z9 = zChangedInstance6 | z8;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3 nl3Var2 = (nl3) objRememberedValue4;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == companion.getEmpty()) {
                            objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        animatable = (Animatable) objRememberedValue5;
                        boolean zChangedInstance7 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                        if (i22 == 4) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = z10 | zChangedInstance7;
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (z11) {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        z12 = true;
                        ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var3, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var2, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                        composer2 = composerStartRestartGroup;
                        if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                            composer2.startReplaceGroup(748459762);
                            z12 = i21 > 256 ? false : false;
                            objRememberedValue7 = composer2.rememberedValue();
                            if (z12) {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            } else {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            }
                            EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                            composer2.endReplaceGroup();
                        } else {
                            composer2.startReplaceGroup(748521266);
                            composer2.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j6 = j9;
                        modalBottomSheetProperties2 = modalBottomSheetProperties3;
                        modifier3 = modifier4;
                        f4 = f6;
                        z4 = z5;
                        shape2 = shape3;
                        j4 = j7;
                        j5 = j8;
                        f5 = f7;
                        bm3Var4 = bm3Var7;
                        bm3Var3 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        j4 = j;
                        bm3Var3 = bm3Var2;
                        modalBottomSheetProperties2 = modalBottomSheetProperties;
                        f4 = f3;
                        z4 = z2;
                        modifier3 = modifier2;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        shape2 = expandedShape;
                        j5 = j2;
                        f5 = f2;
                        j6 = j3;
                        bm3Var4 = bm3Var;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                z2 = z;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    expandedShape = shape;
                    if ((i3 & 32) == 0) {
                        i26 = 65536;
                    } else {
                        i26 = 65536;
                    }
                    i4 |= i26;
                } else {
                    expandedShape = shape;
                }
                if ((i & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i25 = 524288;
                    } else {
                        i25 = 524288;
                    }
                    i4 |= i25;
                }
                if ((i & 12582912) == 0) {
                    int i210 = i4;
                    if ((i3 & 128) == 0) {
                        i24 = 4194304;
                    } else {
                        i24 = 4194304;
                    }
                    i9 = i210 | i24;
                } else {
                    i9 = i4;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i9 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i9 |= i11;
                }
                if ((i & 805306368) != 0) {
                    if ((i3 & 512) == 0) {
                        i23 = 268435456;
                    } else {
                        i23 = 268435456;
                    }
                    i9 |= i23;
                }
                i12 = i3 & 1024;
                if (i12 != 0) {
                    i13 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i14 = 4;
                    } else {
                        i14 = 2;
                    }
                    i13 = i2 | i14;
                } else {
                    i13 = i2;
                }
                if ((i2 & 48) != 0) {
                    i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
                }
                i15 = i13;
                i16 = i3 & 4096;
                if (i16 != 0) {
                    i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else {
                    i17 = i15;
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                        if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                            i19 = 256;
                        } else {
                            i19 = 128;
                        }
                        i17 |= i19;
                    }
                    i18 = i17;
                }
                if ((i3 & 8192) != 0) {
                    if ((i2 & 3072) == 0) {
                        i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        } else {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens3 = MotionSchemeKeyTokens.DefaultSpatial;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens3, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                        i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                        zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        y22Var = (y22) objRememberedValue2;
                        boolean zChangedInstance8 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                        i22 = i9 & 14;
                        if (i22 == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z7 = zChangedInstance8 | z6;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        ll3 ll3Var4 = (ll3) objRememberedValue3;
                        boolean zChangedInstance9 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                        if (i22 == 4) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        z9 = zChangedInstance9 | z8;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3 nl3Var3 = (nl3) objRememberedValue4;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == companion.getEmpty()) {
                            objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        animatable = (Animatable) objRememberedValue5;
                        boolean zChangedInstance10 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                        if (i22 == 4) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = z10 | zChangedInstance10;
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (z11) {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        z12 = true;
                        ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var4, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var3, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                        composer2 = composerStartRestartGroup;
                        if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                            composer2.startReplaceGroup(748459762);
                            if (i21 > 256) {
                            }
                            objRememberedValue7 = composer2.rememberedValue();
                            if (z12) {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            } else {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            }
                            EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                            composer2.endReplaceGroup();
                        } else {
                            composer2.startReplaceGroup(748521266);
                            composer2.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j6 = j9;
                        modalBottomSheetProperties2 = modalBottomSheetProperties3;
                        modifier3 = modifier4;
                        f4 = f6;
                        z4 = z5;
                        shape2 = shape3;
                        j4 = j7;
                        j5 = j8;
                        f5 = f7;
                        bm3Var4 = bm3Var7;
                        bm3Var3 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        j4 = j;
                        bm3Var3 = bm3Var2;
                        modalBottomSheetProperties2 = modalBottomSheetProperties;
                        f4 = f3;
                        z4 = z2;
                        modifier3 = modifier2;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        shape2 = expandedShape;
                        j5 = j2;
                        f5 = f2;
                        j6 = j3;
                        bm3Var4 = bm3Var;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i18 |= 3072;
                if ((i9 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    } else {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens4 = MotionSchemeKeyTokens.DefaultSpatial;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens4, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                    i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                    zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    y22Var = (y22) objRememberedValue2;
                    boolean zChangedInstance11 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                    i22 = i9 & 14;
                    if (i22 == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = zChangedInstance11 | z6;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3 ll3Var5 = (ll3) objRememberedValue3;
                    boolean zChangedInstance12 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (i22 == 4) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z9 = zChangedInstance12 | z8;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3 nl3Var4 = (nl3) objRememberedValue4;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    animatable = (Animatable) objRememberedValue5;
                    boolean zChangedInstance13 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                    if (i22 == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z10 | zChangedInstance13;
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    z12 = true;
                    ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var5, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var4, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                    composer2 = composerStartRestartGroup;
                    if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                        composer2.startReplaceGroup(748459762);
                        if (i21 > 256) {
                        }
                        objRememberedValue7 = composer2.rememberedValue();
                        if (z12) {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        } else {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        }
                        EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(748521266);
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j6 = j9;
                    modalBottomSheetProperties2 = modalBottomSheetProperties3;
                    modifier3 = modifier4;
                    f4 = f6;
                    z4 = z5;
                    shape2 = shape3;
                    j4 = j7;
                    j5 = j8;
                    f5 = f7;
                    bm3Var4 = bm3Var7;
                    bm3Var3 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    j4 = j;
                    bm3Var3 = bm3Var2;
                    modalBottomSheetProperties2 = modalBottomSheetProperties;
                    f4 = f3;
                    z4 = z2;
                    modifier3 = modifier2;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    shape2 = expandedShape;
                    j5 = j2;
                    f5 = f2;
                    j6 = j3;
                    bm3Var4 = bm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            f3 = f;
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    expandedShape = shape;
                    if ((i3 & 32) == 0) {
                        i26 = 65536;
                    } else {
                        i26 = 65536;
                    }
                    i4 |= i26;
                } else {
                    expandedShape = shape;
                }
                if ((i & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i25 = 524288;
                    } else {
                        i25 = 524288;
                    }
                    i4 |= i25;
                }
                if ((i & 12582912) == 0) {
                    int i211 = i4;
                    if ((i3 & 128) == 0) {
                        i24 = 4194304;
                    } else {
                        i24 = 4194304;
                    }
                    i9 = i211 | i24;
                } else {
                    i9 = i4;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i9 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i9 |= i11;
                }
                if ((i & 805306368) != 0) {
                    if ((i3 & 512) == 0) {
                        i23 = 268435456;
                    } else {
                        i23 = 268435456;
                    }
                    i9 |= i23;
                }
                i12 = i3 & 1024;
                if (i12 != 0) {
                    i13 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i14 = 4;
                    } else {
                        i14 = 2;
                    }
                    i13 = i2 | i14;
                } else {
                    i13 = i2;
                }
                if ((i2 & 48) != 0) {
                    i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
                }
                i15 = i13;
                i16 = i3 & 4096;
                if (i16 != 0) {
                    i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else {
                    i17 = i15;
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                        if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                            i19 = 256;
                        } else {
                            i19 = 128;
                        }
                        i17 |= i19;
                    }
                    i18 = i17;
                }
                if ((i3 & 8192) != 0) {
                    if ((i2 & 3072) == 0) {
                        i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        } else {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens5 = MotionSchemeKeyTokens.DefaultSpatial;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens5, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                        i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                        zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        y22Var = (y22) objRememberedValue2;
                        boolean zChangedInstance14 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                        i22 = i9 & 14;
                        if (i22 == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z7 = zChangedInstance14 | z6;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        ll3 ll3Var6 = (ll3) objRememberedValue3;
                        boolean zChangedInstance15 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                        if (i22 == 4) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        z9 = zChangedInstance15 | z8;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3 nl3Var5 = (nl3) objRememberedValue4;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == companion.getEmpty()) {
                            objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        animatable = (Animatable) objRememberedValue5;
                        boolean zChangedInstance16 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                        if (i22 == 4) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = z10 | zChangedInstance16;
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (z11) {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        z12 = true;
                        ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var6, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var5, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                        composer2 = composerStartRestartGroup;
                        if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                            composer2.startReplaceGroup(748459762);
                            if (i21 > 256) {
                            }
                            objRememberedValue7 = composer2.rememberedValue();
                            if (z12) {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            } else {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            }
                            EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                            composer2.endReplaceGroup();
                        } else {
                            composer2.startReplaceGroup(748521266);
                            composer2.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j6 = j9;
                        modalBottomSheetProperties2 = modalBottomSheetProperties3;
                        modifier3 = modifier4;
                        f4 = f6;
                        z4 = z5;
                        shape2 = shape3;
                        j4 = j7;
                        j5 = j8;
                        f5 = f7;
                        bm3Var4 = bm3Var7;
                        bm3Var3 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        j4 = j;
                        bm3Var3 = bm3Var2;
                        modalBottomSheetProperties2 = modalBottomSheetProperties;
                        f4 = f3;
                        z4 = z2;
                        modifier3 = modifier2;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        shape2 = expandedShape;
                        j5 = j2;
                        f5 = f2;
                        j6 = j3;
                        bm3Var4 = bm3Var;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i18 |= 3072;
                if ((i9 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    } else {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens6 = MotionSchemeKeyTokens.DefaultSpatial;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens6, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                    i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                    zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    y22Var = (y22) objRememberedValue2;
                    boolean zChangedInstance17 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                    i22 = i9 & 14;
                    if (i22 == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = zChangedInstance17 | z6;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3 ll3Var7 = (ll3) objRememberedValue3;
                    boolean zChangedInstance18 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (i22 == 4) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z9 = zChangedInstance18 | z8;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3 nl3Var6 = (nl3) objRememberedValue4;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    animatable = (Animatable) objRememberedValue5;
                    boolean zChangedInstance19 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                    if (i22 == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z10 | zChangedInstance19;
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    z12 = true;
                    ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var7, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var6, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                    composer2 = composerStartRestartGroup;
                    if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                        composer2.startReplaceGroup(748459762);
                        if (i21 > 256) {
                        }
                        objRememberedValue7 = composer2.rememberedValue();
                        if (z12) {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        } else {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        }
                        EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(748521266);
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j6 = j9;
                    modalBottomSheetProperties2 = modalBottomSheetProperties3;
                    modifier3 = modifier4;
                    f4 = f6;
                    z4 = z5;
                    shape2 = shape3;
                    j4 = j7;
                    j5 = j8;
                    f5 = f7;
                    bm3Var4 = bm3Var7;
                    bm3Var3 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    j4 = j;
                    bm3Var3 = bm3Var2;
                    modalBottomSheetProperties2 = modalBottomSheetProperties;
                    f4 = f3;
                    z4 = z2;
                    modifier3 = modifier2;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    shape2 = expandedShape;
                    j5 = j2;
                    f5 = f2;
                    j6 = j3;
                    bm3Var4 = bm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z2 = z;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                expandedShape = shape;
                if ((i3 & 32) == 0) {
                    i26 = 65536;
                } else {
                    i26 = 65536;
                }
                i4 |= i26;
            } else {
                expandedShape = shape;
            }
            if ((i & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i25 = 524288;
                } else {
                    i25 = 524288;
                }
                i4 |= i25;
            }
            if ((i & 12582912) == 0) {
                int i212 = i4;
                if ((i3 & 128) == 0) {
                    i24 = 4194304;
                } else {
                    i24 = 4194304;
                }
                i9 = i212 | i24;
            } else {
                i9 = i4;
            }
            i10 = i3 & 256;
            if (i10 != 0) {
                i9 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i9 |= i11;
            }
            if ((i & 805306368) != 0) {
                if ((i3 & 512) == 0) {
                    i23 = 268435456;
                } else {
                    i23 = 268435456;
                }
                i9 |= i23;
            }
            i12 = i3 & 1024;
            if (i12 != 0) {
                i13 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i14 = 4;
                } else {
                    i14 = 2;
                }
                i13 = i2 | i14;
            } else {
                i13 = i2;
            }
            if ((i2 & 48) != 0) {
                i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
            }
            i15 = i13;
            i16 = i3 & 4096;
            if (i16 != 0) {
                i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else {
                i17 = i15;
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                    if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i17 |= i19;
                }
                i18 = i17;
            }
            if ((i3 & 8192) != 0) {
                if ((i2 & 3072) == 0) {
                    i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
                }
                if ((i9 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    } else {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens7 = MotionSchemeKeyTokens.DefaultSpatial;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens7, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                    i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                    zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    y22Var = (y22) objRememberedValue2;
                    boolean zChangedInstance110 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                    i22 = i9 & 14;
                    if (i22 == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = zChangedInstance110 | z6;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3 ll3Var8 = (ll3) objRememberedValue3;
                    boolean zChangedInstance111 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (i22 == 4) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z9 = zChangedInstance111 | z8;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3 nl3Var7 = (nl3) objRememberedValue4;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    animatable = (Animatable) objRememberedValue5;
                    boolean zChangedInstance112 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                    if (i22 == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z10 | zChangedInstance112;
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    z12 = true;
                    ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var8, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var7, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                    composer2 = composerStartRestartGroup;
                    if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                        composer2.startReplaceGroup(748459762);
                        if (i21 > 256) {
                        }
                        objRememberedValue7 = composer2.rememberedValue();
                        if (z12) {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        } else {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        }
                        EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(748521266);
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j6 = j9;
                    modalBottomSheetProperties2 = modalBottomSheetProperties3;
                    modifier3 = modifier4;
                    f4 = f6;
                    z4 = z5;
                    shape2 = shape3;
                    j4 = j7;
                    j5 = j8;
                    f5 = f7;
                    bm3Var4 = bm3Var7;
                    bm3Var3 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    j4 = j;
                    bm3Var3 = bm3Var2;
                    modalBottomSheetProperties2 = modalBottomSheetProperties;
                    f4 = f3;
                    z4 = z2;
                    modifier3 = modifier2;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    shape2 = expandedShape;
                    j5 = j2;
                    f5 = f2;
                    j6 = j3;
                    bm3Var4 = bm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i18 |= 3072;
            if ((i9 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                } else {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens8 = MotionSchemeKeyTokens.DefaultSpatial;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6);
                finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens8, composerStartRestartGroup, 6);
                finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                y22Var = (y22) objRememberedValue2;
                boolean zChangedInstance113 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                i22 = i9 & 14;
                if (i22 == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = zChangedInstance113 | z6;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                ll3 ll3Var9 = (ll3) objRememberedValue3;
                boolean zChangedInstance114 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if (i22 == 4) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z9 = zChangedInstance114 | z8;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                nl3 nl3Var8 = (nl3) objRememberedValue4;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue5 == companion.getEmpty()) {
                    objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                animatable = (Animatable) objRememberedValue5;
                boolean zChangedInstance115 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                if (i22 == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z10 | zChangedInstance115;
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (z11) {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                z12 = true;
                ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var9, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var8, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                composer2 = composerStartRestartGroup;
                if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                    composer2.startReplaceGroup(748459762);
                    if (i21 > 256) {
                    }
                    objRememberedValue7 = composer2.rememberedValue();
                    if (z12) {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    } else {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    }
                    EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                    composer2.endReplaceGroup();
                } else {
                    composer2.startReplaceGroup(748521266);
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j6 = j9;
                modalBottomSheetProperties2 = modalBottomSheetProperties3;
                modifier3 = modifier4;
                f4 = f6;
                z4 = z5;
                shape2 = shape3;
                j4 = j7;
                j5 = j8;
                f5 = f7;
                bm3Var4 = bm3Var7;
                bm3Var3 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                j4 = j;
                bm3Var3 = bm3Var2;
                modalBottomSheetProperties2 = modalBottomSheetProperties;
                f4 = f3;
                z4 = z2;
                modifier3 = modifier2;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                shape2 = expandedShape;
                j5 = j2;
                f5 = f2;
                j6 = j3;
                bm3Var4 = bm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                sheetStateRememberModalBottomSheetState = sheetState;
                if (composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) {
                }
                i4 |= i28;
            } else {
                sheetStateRememberModalBottomSheetState = sheetState;
            }
            i4 |= i28;
        } else {
            sheetStateRememberModalBottomSheetState = sheetState;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                f3 = f;
                if (composerStartRestartGroup.changed(f3)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    expandedShape = shape;
                    if ((i3 & 32) == 0) {
                        i26 = 65536;
                    } else {
                        i26 = 65536;
                    }
                    i4 |= i26;
                } else {
                    expandedShape = shape;
                }
                if ((i & 1572864) != 0) {
                    if ((i3 & 64) == 0) {
                        i25 = 524288;
                    } else {
                        i25 = 524288;
                    }
                    i4 |= i25;
                }
                if ((i & 12582912) == 0) {
                    int i213 = i4;
                    if ((i3 & 128) == 0) {
                        i24 = 4194304;
                    } else {
                        i24 = 4194304;
                    }
                    i9 = i213 | i24;
                } else {
                    i9 = i4;
                }
                i10 = i3 & 256;
                if (i10 != 0) {
                    i9 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i11 = 67108864;
                    } else {
                        i11 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i9 |= i11;
                }
                if ((i & 805306368) != 0) {
                    if ((i3 & 512) == 0) {
                        i23 = 268435456;
                    } else {
                        i23 = 268435456;
                    }
                    i9 |= i23;
                }
                i12 = i3 & 1024;
                if (i12 != 0) {
                    i13 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i14 = 4;
                    } else {
                        i14 = 2;
                    }
                    i13 = i2 | i14;
                } else {
                    i13 = i2;
                }
                if ((i2 & 48) != 0) {
                    i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
                }
                i15 = i13;
                i16 = i3 & 4096;
                if (i16 != 0) {
                    i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else {
                    i17 = i15;
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                        if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                            i19 = 256;
                        } else {
                            i19 = 128;
                        }
                        i17 |= i19;
                    }
                    i18 = i17;
                }
                if ((i3 & 8192) != 0) {
                    if ((i2 & 3072) == 0) {
                        i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
                    }
                    if ((i9 & 306783379) == 306783378) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        } else {
                            if (i27 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i9 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f3;
                            }
                            if (i7 != 0) {
                                z2 = true;
                            }
                            if ((i3 & 32) != 0) {
                                i9 &= -458753;
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            }
                            if ((i3 & 64) != 0) {
                                i9 &= -3670017;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 128) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                                i9 &= -29360129;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i10 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 512) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i9 &= -1879048193;
                            } else {
                                scrimColor = j3;
                            }
                            if (i12 != 0) {
                                lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                            } else {
                                lambda$1121996006$material3 = bm3Var;
                            }
                            if ((i3 & 2048) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(-511854661);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i18 &= -113;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            i20 = i18;
                            if (i16 != 0) {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                                i18 = i20;
                            } else {
                                f6 = fM3122getSheetMaxWidthD9Ej5fM;
                                modalBottomSheetProperties3 = modalBottomSheetProperties;
                                bm3Var6 = bm3Var5;
                                j7 = containerColor;
                                f7 = fM9042constructorimpl;
                                z5 = z2;
                                modifier4 = modifier2;
                                shape3 = expandedShape;
                                bm3Var7 = lambda$1121996006$material3;
                                j8 = jM3275contentColorForek8zF_U;
                                j9 = scrimColor;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                        }
                        MotionSchemeKeyTokens motionSchemeKeyTokens9 = MotionSchemeKeyTokens.DefaultSpatial;
                        finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens9, composerStartRestartGroup, 6);
                        finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                        i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                        zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance) {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new ll3() { // from class: cc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue2 == companion.getEmpty()) {
                            objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        y22Var = (y22) objRememberedValue2;
                        boolean zChangedInstance116 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                        i22 = i9 & 14;
                        if (i22 == 4) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        z7 = zChangedInstance116 | z6;
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ll3() { // from class: dc5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        ll3 ll3Var10 = (ll3) objRememberedValue3;
                        boolean zChangedInstance117 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                        if (i22 == 4) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        z9 = zChangedInstance117 | z8;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            objRememberedValue4 = new nl3() { // from class: rb5
                                @Override // defpackage.nl3
                                public final Object invoke(Object obj) {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3 nl3Var9 = (nl3) objRememberedValue4;
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 == companion.getEmpty()) {
                            objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        animatable = (Animatable) objRememberedValue5;
                        boolean zChangedInstance118 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                        if (i22 == 4) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        z11 = z10 | zChangedInstance118;
                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                        if (z11) {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        } else {
                            objRememberedValue6 = new ll3() { // from class: sb5
                                @Override // defpackage.ll3
                                public final Object invoke() {
                                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                        }
                        z12 = true;
                        ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var10, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var9, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                        composer2 = composerStartRestartGroup;
                        if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                            composer2.startReplaceGroup(748459762);
                            if (i21 > 256) {
                            }
                            objRememberedValue7 = composer2.rememberedValue();
                            if (z12) {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            } else {
                                objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                                composer2.updateRememberedValue(objRememberedValue7);
                            }
                            EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                            composer2.endReplaceGroup();
                        } else {
                            composer2.startReplaceGroup(748521266);
                            composer2.endReplaceGroup();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j6 = j9;
                        modalBottomSheetProperties2 = modalBottomSheetProperties3;
                        modifier3 = modifier4;
                        f4 = f6;
                        z4 = z5;
                        shape2 = shape3;
                        j4 = j7;
                        j5 = j8;
                        f5 = f7;
                        bm3Var4 = bm3Var7;
                        bm3Var3 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        j4 = j;
                        bm3Var3 = bm3Var2;
                        modalBottomSheetProperties2 = modalBottomSheetProperties;
                        f4 = f3;
                        z4 = z2;
                        modifier3 = modifier2;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        shape2 = expandedShape;
                        j5 = j2;
                        f5 = f2;
                        j6 = j3;
                        bm3Var4 = bm3Var;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i18 |= 3072;
                if ((i9 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    } else {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens10 = MotionSchemeKeyTokens.DefaultSpatial;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens10, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                    i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                    zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    y22Var = (y22) objRememberedValue2;
                    boolean zChangedInstance119 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                    i22 = i9 & 14;
                    if (i22 == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = zChangedInstance119 | z6;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3 ll3Var11 = (ll3) objRememberedValue3;
                    boolean zChangedInstance1110 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (i22 == 4) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z9 = zChangedInstance1110 | z8;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3 nl3Var10 = (nl3) objRememberedValue4;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    animatable = (Animatable) objRememberedValue5;
                    boolean zChangedInstance1111 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                    if (i22 == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z10 | zChangedInstance1111;
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    z12 = true;
                    ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var11, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var10, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                    composer2 = composerStartRestartGroup;
                    if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                        composer2.startReplaceGroup(748459762);
                        if (i21 > 256) {
                        }
                        objRememberedValue7 = composer2.rememberedValue();
                        if (z12) {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        } else {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        }
                        EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(748521266);
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j6 = j9;
                    modalBottomSheetProperties2 = modalBottomSheetProperties3;
                    modifier3 = modifier4;
                    f4 = f6;
                    z4 = z5;
                    shape2 = shape3;
                    j4 = j7;
                    j5 = j8;
                    f5 = f7;
                    bm3Var4 = bm3Var7;
                    bm3Var3 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    j4 = j;
                    bm3Var3 = bm3Var2;
                    modalBottomSheetProperties2 = modalBottomSheetProperties;
                    f4 = f3;
                    z4 = z2;
                    modifier3 = modifier2;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    shape2 = expandedShape;
                    j5 = j2;
                    f5 = f2;
                    j6 = j3;
                    bm3Var4 = bm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            z2 = z;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                expandedShape = shape;
                if ((i3 & 32) == 0) {
                    i26 = 65536;
                } else {
                    i26 = 65536;
                }
                i4 |= i26;
            } else {
                expandedShape = shape;
            }
            if ((i & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i25 = 524288;
                } else {
                    i25 = 524288;
                }
                i4 |= i25;
            }
            if ((i & 12582912) == 0) {
                int i214 = i4;
                if ((i3 & 128) == 0) {
                    i24 = 4194304;
                } else {
                    i24 = 4194304;
                }
                i9 = i214 | i24;
            } else {
                i9 = i4;
            }
            i10 = i3 & 256;
            if (i10 != 0) {
                i9 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i9 |= i11;
            }
            if ((i & 805306368) != 0) {
                if ((i3 & 512) == 0) {
                    i23 = 268435456;
                } else {
                    i23 = 268435456;
                }
                i9 |= i23;
            }
            i12 = i3 & 1024;
            if (i12 != 0) {
                i13 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i14 = 4;
                } else {
                    i14 = 2;
                }
                i13 = i2 | i14;
            } else {
                i13 = i2;
            }
            if ((i2 & 48) != 0) {
                i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
            }
            i15 = i13;
            i16 = i3 & 4096;
            if (i16 != 0) {
                i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else {
                i17 = i15;
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                    if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i17 |= i19;
                }
                i18 = i17;
            }
            if ((i3 & 8192) != 0) {
                if ((i2 & 3072) == 0) {
                    i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
                }
                if ((i9 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    } else {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens11 = MotionSchemeKeyTokens.DefaultSpatial;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens11, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                    i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                    zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    y22Var = (y22) objRememberedValue2;
                    boolean zChangedInstance1112 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                    i22 = i9 & 14;
                    if (i22 == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = zChangedInstance1112 | z6;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3 ll3Var12 = (ll3) objRememberedValue3;
                    boolean zChangedInstance1113 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (i22 == 4) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z9 = zChangedInstance1113 | z8;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3 nl3Var11 = (nl3) objRememberedValue4;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    animatable = (Animatable) objRememberedValue5;
                    boolean zChangedInstance1114 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                    if (i22 == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z10 | zChangedInstance1114;
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    z12 = true;
                    ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var12, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var11, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                    composer2 = composerStartRestartGroup;
                    if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                        composer2.startReplaceGroup(748459762);
                        if (i21 > 256) {
                        }
                        objRememberedValue7 = composer2.rememberedValue();
                        if (z12) {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        } else {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        }
                        EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(748521266);
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j6 = j9;
                    modalBottomSheetProperties2 = modalBottomSheetProperties3;
                    modifier3 = modifier4;
                    f4 = f6;
                    z4 = z5;
                    shape2 = shape3;
                    j4 = j7;
                    j5 = j8;
                    f5 = f7;
                    bm3Var4 = bm3Var7;
                    bm3Var3 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    j4 = j;
                    bm3Var3 = bm3Var2;
                    modalBottomSheetProperties2 = modalBottomSheetProperties;
                    f4 = f3;
                    z4 = z2;
                    modifier3 = modifier2;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    shape2 = expandedShape;
                    j5 = j2;
                    f5 = f2;
                    j6 = j3;
                    bm3Var4 = bm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i18 |= 3072;
            if ((i9 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                } else {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens12 = MotionSchemeKeyTokens.DefaultSpatial;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6);
                finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens12, composerStartRestartGroup, 6);
                finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                y22Var = (y22) objRememberedValue2;
                boolean zChangedInstance1115 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                i22 = i9 & 14;
                if (i22 == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = zChangedInstance1115 | z6;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                ll3 ll3Var13 = (ll3) objRememberedValue3;
                boolean zChangedInstance1116 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if (i22 == 4) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z9 = zChangedInstance1116 | z8;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                nl3 nl3Var12 = (nl3) objRememberedValue4;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue5 == companion.getEmpty()) {
                    objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                animatable = (Animatable) objRememberedValue5;
                boolean zChangedInstance1117 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                if (i22 == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z10 | zChangedInstance1117;
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (z11) {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                z12 = true;
                ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var13, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var12, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                composer2 = composerStartRestartGroup;
                if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                    composer2.startReplaceGroup(748459762);
                    if (i21 > 256) {
                    }
                    objRememberedValue7 = composer2.rememberedValue();
                    if (z12) {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    } else {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    }
                    EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                    composer2.endReplaceGroup();
                } else {
                    composer2.startReplaceGroup(748521266);
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j6 = j9;
                modalBottomSheetProperties2 = modalBottomSheetProperties3;
                modifier3 = modifier4;
                f4 = f6;
                z4 = z5;
                shape2 = shape3;
                j4 = j7;
                j5 = j8;
                f5 = f7;
                bm3Var4 = bm3Var7;
                bm3Var3 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                j4 = j;
                bm3Var3 = bm3Var2;
                modalBottomSheetProperties2 = modalBottomSheetProperties;
                f4 = f3;
                z4 = z2;
                modifier3 = modifier2;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                shape2 = expandedShape;
                j5 = j2;
                f5 = f2;
                j6 = j3;
                bm3Var4 = bm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        f3 = f;
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i & 24576) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                expandedShape = shape;
                if ((i3 & 32) == 0) {
                    i26 = 65536;
                } else {
                    i26 = 65536;
                }
                i4 |= i26;
            } else {
                expandedShape = shape;
            }
            if ((i & 1572864) != 0) {
                if ((i3 & 64) == 0) {
                    i25 = 524288;
                } else {
                    i25 = 524288;
                }
                i4 |= i25;
            }
            if ((i & 12582912) == 0) {
                int i215 = i4;
                if ((i3 & 128) == 0) {
                    i24 = 4194304;
                } else {
                    i24 = 4194304;
                }
                i9 = i215 | i24;
            } else {
                i9 = i4;
            }
            i10 = i3 & 256;
            if (i10 != 0) {
                i9 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i11 = 67108864;
                } else {
                    i11 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i9 |= i11;
            }
            if ((i & 805306368) != 0) {
                if ((i3 & 512) == 0) {
                    i23 = 268435456;
                } else {
                    i23 = 268435456;
                }
                i9 |= i23;
            }
            i12 = i3 & 1024;
            if (i12 != 0) {
                i13 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i14 = 4;
                } else {
                    i14 = 2;
                }
                i13 = i2 | i14;
            } else {
                i13 = i2;
            }
            if ((i2 & 48) != 0) {
                i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
            }
            i15 = i13;
            i16 = i3 & 4096;
            if (i16 != 0) {
                i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else {
                i17 = i15;
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                    if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i17 |= i19;
                }
                i18 = i17;
            }
            if ((i3 & 8192) != 0) {
                if ((i2 & 3072) == 0) {
                    i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
                }
                if ((i9 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    } else {
                        if (i27 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i9 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f3;
                        }
                        if (i7 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 32) != 0) {
                            i9 &= -458753;
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        }
                        if ((i3 & 64) != 0) {
                            i9 &= -3670017;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 128) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                            i9 &= -29360129;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i10 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 512) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i9 &= -1879048193;
                        } else {
                            scrimColor = j3;
                        }
                        if (i12 != 0) {
                            lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                        } else {
                            lambda$1121996006$material3 = bm3Var;
                        }
                        if ((i3 & 2048) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                                public final WindowInsets invoke(Composer composer3, int i30) {
                                    composer3.startReplaceGroup(-511854661);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i18 &= -113;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        i20 = i18;
                        if (i16 != 0) {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                            i18 = i20;
                        } else {
                            f6 = fM3122getSheetMaxWidthD9Ej5fM;
                            modalBottomSheetProperties3 = modalBottomSheetProperties;
                            bm3Var6 = bm3Var5;
                            j7 = containerColor;
                            f7 = fM9042constructorimpl;
                            z5 = z2;
                            modifier4 = modifier2;
                            shape3 = expandedShape;
                            bm3Var7 = lambda$1121996006$material3;
                            j8 = jM3275contentColorForek8zF_U;
                            j9 = scrimColor;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                    }
                    MotionSchemeKeyTokens motionSchemeKeyTokens13 = MotionSchemeKeyTokens.DefaultSpatial;
                    finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens13, composerStartRestartGroup, 6);
                    finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                    i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                    zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance) {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new ll3() { // from class: cc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue2 == companion.getEmpty()) {
                        objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    y22Var = (y22) objRememberedValue2;
                    boolean zChangedInstance1118 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                    i22 = i9 & 14;
                    if (i22 == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    z7 = zChangedInstance1118 | z6;
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ll3() { // from class: dc5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    ll3 ll3Var14 = (ll3) objRememberedValue3;
                    boolean zChangedInstance1119 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                    if (i22 == 4) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    z9 = zChangedInstance1119 | z8;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        objRememberedValue4 = new nl3() { // from class: rb5
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3 nl3Var13 = (nl3) objRememberedValue4;
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    animatable = (Animatable) objRememberedValue5;
                    boolean zChangedInstance11110 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                    if (i22 == 4) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = z10 | zChangedInstance11110;
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (z11) {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    } else {
                        objRememberedValue6 = new ll3() { // from class: sb5
                            @Override // defpackage.ll3
                            public final Object invoke() {
                                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    z12 = true;
                    ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var14, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var13, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                    composer2 = composerStartRestartGroup;
                    if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                        composer2.startReplaceGroup(748459762);
                        if (i21 > 256) {
                        }
                        objRememberedValue7 = composer2.rememberedValue();
                        if (z12) {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        } else {
                            objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                            composer2.updateRememberedValue(objRememberedValue7);
                        }
                        EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(748521266);
                        composer2.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j6 = j9;
                    modalBottomSheetProperties2 = modalBottomSheetProperties3;
                    modifier3 = modifier4;
                    f4 = f6;
                    z4 = z5;
                    shape2 = shape3;
                    j4 = j7;
                    j5 = j8;
                    f5 = f7;
                    bm3Var4 = bm3Var7;
                    bm3Var3 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    j4 = j;
                    bm3Var3 = bm3Var2;
                    modalBottomSheetProperties2 = modalBottomSheetProperties;
                    f4 = f3;
                    z4 = z2;
                    modifier3 = modifier2;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    shape2 = expandedShape;
                    j5 = j2;
                    f5 = f2;
                    j6 = j3;
                    bm3Var4 = bm3Var;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i18 |= 3072;
            if ((i9 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                } else {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens14 = MotionSchemeKeyTokens.DefaultSpatial;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6);
                finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens14, composerStartRestartGroup, 6);
                finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                y22Var = (y22) objRememberedValue2;
                boolean zChangedInstance11111 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                i22 = i9 & 14;
                if (i22 == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = zChangedInstance11111 | z6;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                ll3 ll3Var15 = (ll3) objRememberedValue3;
                boolean zChangedInstance11112 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if (i22 == 4) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z9 = zChangedInstance11112 | z8;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                nl3 nl3Var14 = (nl3) objRememberedValue4;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue5 == companion.getEmpty()) {
                    objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                animatable = (Animatable) objRememberedValue5;
                boolean zChangedInstance11113 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                if (i22 == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z10 | zChangedInstance11113;
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (z11) {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                z12 = true;
                ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var15, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var14, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                composer2 = composerStartRestartGroup;
                if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                    composer2.startReplaceGroup(748459762);
                    if (i21 > 256) {
                    }
                    objRememberedValue7 = composer2.rememberedValue();
                    if (z12) {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    } else {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    }
                    EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                    composer2.endReplaceGroup();
                } else {
                    composer2.startReplaceGroup(748521266);
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j6 = j9;
                modalBottomSheetProperties2 = modalBottomSheetProperties3;
                modifier3 = modifier4;
                f4 = f6;
                z4 = z5;
                shape2 = shape3;
                j4 = j7;
                j5 = j8;
                f5 = f7;
                bm3Var4 = bm3Var7;
                bm3Var3 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                j4 = j;
                bm3Var3 = bm3Var2;
                modalBottomSheetProperties2 = modalBottomSheetProperties;
                f4 = f3;
                z4 = z2;
                modifier3 = modifier2;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                shape2 = expandedShape;
                j5 = j2;
                f5 = f2;
                j6 = j3;
                bm3Var4 = bm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        z2 = z;
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            expandedShape = shape;
            if ((i3 & 32) == 0) {
                i26 = 65536;
            } else {
                i26 = 65536;
            }
            i4 |= i26;
        } else {
            expandedShape = shape;
        }
        if ((i & 1572864) != 0) {
            if ((i3 & 64) == 0) {
                i25 = 524288;
            } else {
                i25 = 524288;
            }
            i4 |= i25;
        }
        if ((i & 12582912) == 0) {
            int i216 = i4;
            if ((i3 & 128) == 0) {
                i24 = 4194304;
            } else {
                i24 = 4194304;
            }
            i9 = i216 | i24;
        } else {
            i9 = i4;
        }
        i10 = i3 & 256;
        if (i10 != 0) {
            i9 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(f2)) {
                i11 = 67108864;
            } else {
                i11 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i9 |= i11;
        }
        if ((i & 805306368) != 0) {
            if ((i3 & 512) == 0) {
                i23 = 268435456;
            } else {
                i23 = 268435456;
            }
            i9 |= i23;
        }
        i12 = i3 & 1024;
        if (i12 != 0) {
            i13 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i13 = i2 | i14;
        } else {
            i13 = i2;
        }
        if ((i2 & 48) != 0) {
            i13 |= ((i3 & 2048) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 16 : 32;
        }
        i15 = i13;
        i16 = i3 & 4096;
        if (i16 != 0) {
            i18 = i15 | RendererCapabilities.DECODER_SUPPORT_MASK;
        } else {
            i17 = i15;
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i17 |= i19;
            }
            i18 = i17;
        }
        if ((i3 & 8192) != 0) {
            if ((i2 & 3072) == 0) {
                i18 |= composerStartRestartGroup.changedInstance(dm3Var) ? 2048 : 1024;
            }
            if ((i9 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                } else {
                    if (i27 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i9 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f3;
                    }
                    if (i7 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 32) != 0) {
                        i9 &= -458753;
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    }
                    if ((i3 & 64) != 0) {
                        i9 &= -3670017;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 128) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                        i9 &= -29360129;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i10 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 512) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i9 &= -1879048193;
                    } else {
                        scrimColor = j3;
                    }
                    if (i12 != 0) {
                        lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                    } else {
                        lambda$1121996006$material3 = bm3Var;
                    }
                    if ((i3 & 2048) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                            public final WindowInsets invoke(Composer composer3, int i30) {
                                composer3.startReplaceGroup(-511854661);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i18 &= -113;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    i20 = i18;
                    if (i16 != 0) {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                        i18 = i20;
                    } else {
                        f6 = fM3122getSheetMaxWidthD9Ej5fM;
                        modalBottomSheetProperties3 = modalBottomSheetProperties;
                        bm3Var6 = bm3Var5;
                        j7 = containerColor;
                        f7 = fM9042constructorimpl;
                        z5 = z2;
                        modifier4 = modifier2;
                        shape3 = expandedShape;
                        bm3Var7 = lambda$1121996006$material3;
                        j8 = jM3275contentColorForek8zF_U;
                        j9 = scrimColor;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens15 = MotionSchemeKeyTokens.DefaultSpatial;
                finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6);
                finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens15, composerStartRestartGroup, 6);
                finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
                i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
                zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new ll3() { // from class: cc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                y22Var = (y22) objRememberedValue2;
                boolean zChangedInstance11114 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
                i22 = i9 & 14;
                if (i22 == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = zChangedInstance11114 | z6;
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ll3() { // from class: dc5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                ll3 ll3Var16 = (ll3) objRememberedValue3;
                boolean zChangedInstance11115 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
                if (i22 == 4) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z9 = zChangedInstance11115 | z8;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new nl3() { // from class: rb5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                nl3 nl3Var15 = (nl3) objRememberedValue4;
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue5 == companion.getEmpty()) {
                    objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                animatable = (Animatable) objRememberedValue5;
                boolean zChangedInstance11116 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
                if (i22 == 4) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = z10 | zChangedInstance11116;
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (z11) {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new ll3() { // from class: sb5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                z12 = true;
                ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var16, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var15, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
                composer2 = composerStartRestartGroup;
                if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                    composer2.startReplaceGroup(748459762);
                    if (i21 > 256) {
                    }
                    objRememberedValue7 = composer2.rememberedValue();
                    if (z12) {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    } else {
                        objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                        composer2.updateRememberedValue(objRememberedValue7);
                    }
                    EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                    composer2.endReplaceGroup();
                } else {
                    composer2.startReplaceGroup(748521266);
                    composer2.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j6 = j9;
                modalBottomSheetProperties2 = modalBottomSheetProperties3;
                modifier3 = modifier4;
                f4 = f6;
                z4 = z5;
                shape2 = shape3;
                j4 = j7;
                j5 = j8;
                f5 = f7;
                bm3Var4 = bm3Var7;
                bm3Var3 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                j4 = j;
                bm3Var3 = bm3Var2;
                modalBottomSheetProperties2 = modalBottomSheetProperties;
                f4 = f3;
                z4 = z2;
                modifier3 = modifier2;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                shape2 = expandedShape;
                j5 = j2;
                f5 = f2;
                j6 = j3;
                bm3Var4 = bm3Var;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i18 |= 3072;
        if ((i9 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i9 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i27 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    i9 &= -897;
                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                }
                if (i5 != 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                } else {
                    fM3122getSheetMaxWidthD9Ej5fM = f3;
                }
                if (i7 != 0) {
                    z2 = true;
                }
                if ((i3 & 32) != 0) {
                    i9 &= -458753;
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                }
                if ((i3 & 64) != 0) {
                    i9 &= -3670017;
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                } else {
                    containerColor = j;
                }
                if ((i3 & 128) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                    i9 &= -29360129;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                if (i10 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                } else {
                    fM9042constructorimpl = f2;
                }
                if ((i3 & 512) != 0) {
                    scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                    i9 &= -1879048193;
                } else {
                    scrimColor = j3;
                }
                if (i12 != 0) {
                    lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                } else {
                    lambda$1121996006$material3 = bm3Var;
                }
                if ((i3 & 2048) != 0) {
                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                        public final WindowInsets invoke(Composer composer3, int i30) {
                            composer3.startReplaceGroup(-511854661);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            composer3.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                            return invoke(composer3, num.intValue());
                        }
                    };
                    i18 &= -113;
                } else {
                    bm3Var5 = bm3Var2;
                }
                i20 = i18;
                if (i16 != 0) {
                    f6 = fM3122getSheetMaxWidthD9Ej5fM;
                    modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                    bm3Var6 = bm3Var5;
                    j7 = containerColor;
                    f7 = fM9042constructorimpl;
                    z5 = z2;
                    modifier4 = modifier2;
                    shape3 = expandedShape;
                    bm3Var7 = lambda$1121996006$material3;
                    j8 = jM3275contentColorForek8zF_U;
                    j9 = scrimColor;
                    i18 = i20;
                } else {
                    f6 = fM3122getSheetMaxWidthD9Ej5fM;
                    modalBottomSheetProperties3 = modalBottomSheetProperties;
                    bm3Var6 = bm3Var5;
                    j7 = containerColor;
                    f7 = fM9042constructorimpl;
                    z5 = z2;
                    modifier4 = modifier2;
                    shape3 = expandedShape;
                    bm3Var7 = lambda$1121996006$material3;
                    j8 = jM3275contentColorForek8zF_U;
                    j9 = scrimColor;
                }
            } else {
                if (i27 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    i9 &= -897;
                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                }
                if (i5 != 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                } else {
                    fM3122getSheetMaxWidthD9Ej5fM = f3;
                }
                if (i7 != 0) {
                    z2 = true;
                }
                if ((i3 & 32) != 0) {
                    i9 &= -458753;
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                }
                if ((i3 & 64) != 0) {
                    i9 &= -3670017;
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                } else {
                    containerColor = j;
                }
                if ((i3 & 128) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i9 >> 18) & 14);
                    i9 &= -29360129;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                if (i10 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                } else {
                    fM9042constructorimpl = f2;
                }
                if ((i3 & 512) != 0) {
                    scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                    i9 &= -1879048193;
                } else {
                    scrimColor = j3;
                }
                if (i12 != 0) {
                    lambda$1121996006$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1121996006$material3();
                } else {
                    lambda$1121996006$material3 = bm3Var;
                }
                if ((i3 & 2048) != 0) {
                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$1
                        public final WindowInsets invoke(Composer composer3, int i30) {
                            composer3.startReplaceGroup(-511854661);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-511854661, i30, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:134)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            composer3.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                            return invoke(composer3, num.intValue());
                        }
                    };
                    i18 &= -113;
                } else {
                    bm3Var5 = bm3Var2;
                }
                i20 = i18;
                if (i16 != 0) {
                    f6 = fM3122getSheetMaxWidthD9Ej5fM;
                    modalBottomSheetProperties3 = new ModalBottomSheetProperties(false, false, 3, (jh2) null);
                    bm3Var6 = bm3Var5;
                    j7 = containerColor;
                    f7 = fM9042constructorimpl;
                    z5 = z2;
                    modifier4 = modifier2;
                    shape3 = expandedShape;
                    bm3Var7 = lambda$1121996006$material3;
                    j8 = jM3275contentColorForek8zF_U;
                    j9 = scrimColor;
                    i18 = i20;
                } else {
                    f6 = fM3122getSheetMaxWidthD9Ej5fM;
                    modalBottomSheetProperties3 = modalBottomSheetProperties;
                    bm3Var6 = bm3Var5;
                    j7 = containerColor;
                    f7 = fM9042constructorimpl;
                    z5 = z2;
                    modifier4 = modifier2;
                    shape3 = expandedShape;
                    bm3Var7 = lambda$1121996006$material3;
                    j8 = jM3275contentColorForek8zF_U;
                    j9 = scrimColor;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1904798512, i9, i18, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:137)");
            }
            MotionSchemeKeyTokens motionSchemeKeyTokens16 = MotionSchemeKeyTokens.DefaultSpatial;
            finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6);
            finiteAnimationSpecValue2 = MotionSchemeKt.value(motionSchemeKeyTokens16, composerStartRestartGroup, 6);
            finiteAnimationSpecValue3 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
            i21 = (i9 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK;
            zChangedInstance = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
                objRememberedValue = new ll3() { // from class: cc5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new ll3() { // from class: cc5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(sheetStateRememberModalBottomSheetState, finiteAnimationSpecValue2, finiteAnimationSpecValue3, finiteAnimationSpecValue);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            EffectsKt.SideEffect((ll3) objRememberedValue, composerStartRestartGroup, 0);
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            y22Var = (y22) objRememberedValue2;
            boolean zChangedInstance11117 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var);
            i22 = i9 & 14;
            if (i22 == 4) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = zChangedInstance11117 | z6;
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z7) {
                objRememberedValue3 = new ll3() { // from class: dc5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new ll3() { // from class: dc5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(sheetStateRememberModalBottomSheetState, y22Var, ll3Var);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            ll3 ll3Var17 = (ll3) objRememberedValue3;
            boolean zChangedInstance11118 = composerStartRestartGroup.changedInstance(y22Var) | ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256);
            if (i22 == 4) {
                z8 = true;
            } else {
                z8 = false;
            }
            z9 = zChangedInstance11118 | z8;
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (z9) {
                objRememberedValue4 = new nl3() { // from class: rb5
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                objRememberedValue4 = new nl3() { // from class: rb5
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22Var, sheetStateRememberModalBottomSheetState, ll3Var, ((Float) obj).floatValue());
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            nl3 nl3Var16 = (nl3) objRememberedValue4;
            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = AnimatableKt.Animatable$default(0.0f, 0.0f, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            animatable = (Animatable) objRememberedValue5;
            boolean zChangedInstance11119 = ((i21 <= 256 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i9 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changedInstance(animatable);
            if (i22 == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = z10 | zChangedInstance11119;
            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (z11) {
                objRememberedValue6 = new ll3() { // from class: sb5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            } else {
                objRememberedValue6 = new ll3() { // from class: sb5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(sheetStateRememberModalBottomSheetState, y22Var, animatable, ll3Var);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            z12 = true;
            ModalBottomSheet_androidKt.m3629ModalBottomSheetDialogsW7UJKQ((ll3) objRememberedValue6, j8, modalBottomSheetProperties3, animatable, ComposableLambdaKt.rememberComposableLambda(1010026864, true, new ModalBottomSheetKt$ModalBottomSheet$4(j9, ll3Var17, sheetStateRememberModalBottomSheetState, modalBottomSheetProperties3, animatable, y22Var, nl3Var16, modifier4, f6, z5, shape3, j7, j8, f7, bm3Var7, bm3Var6, dm3Var), composerStartRestartGroup, 54), composerStartRestartGroup, (i18 & 896) | ((i9 >> 18) & 112) | 24576 | (Animatable.$stable << 9));
            composer2 = composerStartRestartGroup;
            if (sheetStateRememberModalBottomSheetState.getHasExpandedState()) {
                composer2.startReplaceGroup(748459762);
                if (i21 > 256) {
                }
                objRememberedValue7 = composer2.rememberedValue();
                if (z12) {
                    objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                    composer2.updateRememberedValue(objRememberedValue7);
                } else {
                    objRememberedValue7 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetStateRememberModalBottomSheetState, null);
                    composer2.updateRememberedValue(objRememberedValue7);
                }
                EffectsKt.LaunchedEffect(sheetStateRememberModalBottomSheetState, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue7, composer2, (i9 >> 6) & 14);
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(748521266);
                composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            sheetState2 = sheetStateRememberModalBottomSheetState;
            j6 = j9;
            modalBottomSheetProperties2 = modalBottomSheetProperties3;
            modifier3 = modifier4;
            f4 = f6;
            z4 = z5;
            shape2 = shape3;
            j4 = j7;
            j5 = j8;
            f5 = f7;
            bm3Var4 = bm3Var7;
            bm3Var3 = bm3Var6;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            j4 = j;
            bm3Var3 = bm3Var2;
            modalBottomSheetProperties2 = modalBottomSheetProperties;
            f4 = f3;
            z4 = z2;
            modifier3 = modifier2;
            sheetState2 = sheetStateRememberModalBottomSheetState;
            shape2 = expandedShape;
            j5 = j2;
            f5 = f2;
            j6 = j3;
            bm3Var4 = bm3Var;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tb5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$13(ll3Var, modifier3, sheetState2, f4, z4, shape2, j4, j5, f5, j6, bm3Var4, bm3Var3, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011a  */
    /* JADX WARN: Code duplicated, block: B:103:0x011e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0128  */
    /* JADX WARN: Code duplicated, block: B:106:0x012b  */
    /* JADX WARN: Code duplicated, block: B:110:0x0133  */
    /* JADX WARN: Code duplicated, block: B:112:0x0137  */
    /* JADX WARN: Code duplicated, block: B:115:0x0142 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:118:0x0149  */
    /* JADX WARN: Code duplicated, block: B:121:0x0151  */
    /* JADX WARN: Code duplicated, block: B:123:0x0158  */
    /* JADX WARN: Code duplicated, block: B:125:0x015c  */
    /* JADX WARN: Code duplicated, block: B:127:0x0166  */
    /* JADX WARN: Code duplicated, block: B:128:0x0169  */
    /* JADX WARN: Code duplicated, block: B:130:0x016e  */
    /* JADX WARN: Code duplicated, block: B:133:0x0179  */
    /* JADX WARN: Code duplicated, block: B:135:0x017e  */
    /* JADX WARN: Code duplicated, block: B:137:0x0182  */
    /* JADX WARN: Code duplicated, block: B:139:0x018a  */
    /* JADX WARN: Code duplicated, block: B:140:0x018d  */
    /* JADX WARN: Code duplicated, block: B:144:0x019c  */
    /* JADX WARN: Code duplicated, block: B:148:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:151:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:175:0x0201 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:176:0x0203  */
    /* JADX WARN: Code duplicated, block: B:179:0x020a  */
    /* JADX WARN: Code duplicated, block: B:181:0x0214  */
    /* JADX WARN: Code duplicated, block: B:182:0x021b  */
    /* JADX WARN: Code duplicated, block: B:185:0x0222  */
    /* JADX WARN: Code duplicated, block: B:186:0x022b  */
    /* JADX WARN: Code duplicated, block: B:189:0x0230  */
    /* JADX WARN: Code duplicated, block: B:192:0x023c  */
    /* JADX WARN: Code duplicated, block: B:194:0x0247  */
    /* JADX WARN: Code duplicated, block: B:195:0x024d  */
    /* JADX WARN: Code duplicated, block: B:198:0x0253  */
    /* JADX WARN: Code duplicated, block: B:199:0x025d  */
    /* JADX WARN: Code duplicated, block: B:201:0x0261  */
    /* JADX WARN: Code duplicated, block: B:202:0x0268  */
    /* JADX WARN: Code duplicated, block: B:205:0x026e  */
    /* JADX WARN: Code duplicated, block: B:206:0x0273  */
    /* JADX WARN: Code duplicated, block: B:208:0x0277  */
    /* JADX WARN: Code duplicated, block: B:210:0x0291  */
    /* JADX WARN: Code duplicated, block: B:213:0x029d  */
    /* JADX WARN: Code duplicated, block: B:214:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:217:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:219:0x0309  */
    /* JADX WARN: Code duplicated, block: B:222:0x0324  */
    /* JADX WARN: Code duplicated, block: B:224:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0050  */
    /* JADX WARN: Code duplicated, block: B:30:0x0058  */
    /* JADX WARN: Code duplicated, block: B:31:0x005b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x0068  */
    /* JADX WARN: Code duplicated, block: B:39:0x006d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0071  */
    /* JADX WARN: Code duplicated, block: B:43:0x0079  */
    /* JADX WARN: Code duplicated, block: B:44:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0084  */
    /* JADX WARN: Code duplicated, block: B:50:0x0088  */
    /* JADX WARN: Code duplicated, block: B:52:0x0090  */
    /* JADX WARN: Code duplicated, block: B:53:0x0093  */
    /* JADX WARN: Code duplicated, block: B:56:0x009a  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00be  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:79:0x00da  */
    /* JADX WARN: Code duplicated, block: B:80:0x00df  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:84:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:91:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:94:0x0107  */
    /* JADX WARN: Code duplicated, block: B:96:0x010b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0113  */
    @ul2
    /* JADX INFO: renamed from: ModalBottomSheet-dYc4hso, reason: not valid java name */
    public static final /* synthetic */ void m3624ModalBottomSheetdYc4hso(final ll3 ll3Var, Modifier modifier, SheetState sheetState, float f, Shape shape, long j, long j2, float f2, long j3, bm3 bm3Var, bm3 bm3Var2, ModalBottomSheetProperties modalBottomSheetProperties, final dm3 dm3Var, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        SheetState sheetStateRememberModalBottomSheetState;
        int i5;
        int i6;
        Shape shape2;
        long containerColor;
        long jM3275contentColorForek8zF_U;
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
        final float f3;
        ModalBottomSheetProperties properties;
        final Shape shape3;
        final long j4;
        final SheetState sheetState2;
        final long j5;
        final float f4;
        long j6;
        final bm3 bm3Var3;
        final bm3 bm3Var4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        float fM3122getSheetMaxWidthD9Ej5fM;
        Shape expandedShape;
        float fM9042constructorimpl;
        long scrimColor;
        bm3 bm3VarM3312getLambda$655173438$material3;
        bm3 bm3Var5;
        bm3 bm3Var6;
        Shape shape4;
        Modifier modifier3;
        float f5;
        float f6;
        SheetState sheetState3;
        long j7;
        bm3 bm3Var7;
        int i16;
        int i17;
        int i18;
        Composer composerStartRestartGroup = composer.startRestartGroup(953901324);
        if ((i3 & 1) != 0) {
            i4 = i | 6;
        } else if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changedInstance(ll3Var) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        int i19 = i3 & 2;
        if (i19 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    sheetStateRememberModalBottomSheetState = sheetState;
                    int i20 = composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState) ? 256 : 128;
                    i4 |= i20;
                } else {
                    sheetStateRememberModalBottomSheetState = sheetState;
                }
                i4 |= i20;
            } else {
                sheetStateRememberModalBottomSheetState = sheetState;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(f)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                if ((i & 24576) == 0) {
                    if ((i3 & 16) == 0) {
                        shape2 = shape;
                        int i21 = composerStartRestartGroup.changed(shape2) ? 16384 : 8192;
                        i4 |= i21;
                    } else {
                        shape2 = shape;
                    }
                    i4 |= i21;
                } else {
                    shape2 = shape;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    containerColor = j;
                    if ((i3 & 32) == 0 || !composerStartRestartGroup.changed(containerColor)) {
                        i18 = 65536;
                    } else {
                        i18 = 131072;
                    }
                    i4 |= i18;
                } else {
                    containerColor = j;
                }
                if ((i & 1572864) == 0) {
                    jM3275contentColorForek8zF_U = j2;
                    if ((i3 & 64) == 0 || !composerStartRestartGroup.changed(jM3275contentColorForek8zF_U)) {
                        i17 = 524288;
                    } else {
                        i17 = 1048576;
                    }
                    i4 |= i17;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                i7 = i3 & 128;
                if (i7 != 0) {
                    i4 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i4 |= i8;
                }
                if ((i & 100663296) != 0) {
                    if ((i3 & 256) == 0 || !composerStartRestartGroup.changed(j3)) {
                        i16 = GroupFlagsKt.HasAuxSlotFlag;
                    } else {
                        i16 = 67108864;
                    }
                    i4 |= i16;
                }
                i9 = i3 & 512;
                if (i9 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i10 = 536870912;
                        } else {
                            i10 = 268435456;
                        }
                        i4 |= i10;
                    }
                    if ((i2 & 6) == 0) {
                        i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
                    } else {
                        i11 = i2;
                    }
                    i12 = i3 & 2048;
                    if (i12 != 0) {
                        i11 |= 48;
                    } else if ((i2 & 48) != 0) {
                        if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                            i13 = 32;
                        } else {
                            i13 = 16;
                        }
                        i11 |= i13;
                    }
                    i14 = i11;
                    if ((i3 & 4096) != 0) {
                        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i15 = 256;
                            } else {
                                i15 = 128;
                            }
                            i14 |= i15;
                        }
                        if ((i4 & 306783379) == 306783378 || (i14 & 147) != 146) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i19 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i3 & 4) != 0) {
                                    i4 &= -897;
                                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                                }
                                if (i5 != 0) {
                                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                                } else {
                                    fM3122getSheetMaxWidthD9Ej5fM = f;
                                }
                                if ((i3 & 16) != 0) {
                                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                    i4 &= -57345;
                                } else {
                                    expandedShape = shape2;
                                }
                                if ((i3 & 32) != 0) {
                                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                    i4 &= -458753;
                                }
                                if ((i3 & 64) != 0) {
                                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                    i4 &= -3670017;
                                }
                                if (i7 != 0) {
                                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                                } else {
                                    fM9042constructorimpl = f2;
                                }
                                if ((i3 & 256) != 0) {
                                    scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                    i4 &= -234881025;
                                } else {
                                    scrimColor = j3;
                                }
                                if (i9 != 0) {
                                    bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                                } else {
                                    bm3VarM3312getLambda$655173438$material3 = bm3Var;
                                }
                                if ((i3 & 1024) != 0) {
                                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                        public final WindowInsets invoke(Composer composer3, int i22) {
                                            composer3.startReplaceGroup(69134487);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(69134487, i22, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                            }
                                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                            composer3.endReplaceGroup();
                                            return windowInsets;
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                            return invoke(composer3, num.intValue());
                                        }
                                    };
                                    i14 &= -15;
                                } else {
                                    bm3Var5 = bm3Var2;
                                }
                                if (i12 != 0) {
                                    properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                                } else {
                                    properties = modalBottomSheetProperties;
                                }
                                bm3Var6 = bm3Var5;
                                shape4 = expandedShape;
                                modifier3 = modifier2;
                                bm3 bm3Var8 = bm3VarM3312getLambda$655173438$material3;
                                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                                long j8 = jM3275contentColorForek8zF_U;
                                f6 = fM9042constructorimpl;
                                sheetState3 = sheetStateRememberModalBottomSheetState;
                                j7 = j8;
                                j6 = scrimColor;
                                bm3Var7 = bm3Var8;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 4) != 0) {
                                    i4 &= -897;
                                }
                                if ((i3 & 16) != 0) {
                                    i4 &= -57345;
                                }
                                if ((i3 & 32) != 0) {
                                    i4 &= -458753;
                                }
                                if ((i3 & 64) != 0) {
                                    i4 &= -3670017;
                                }
                                if ((i3 & 256) != 0) {
                                    i4 &= -234881025;
                                }
                                if ((i3 & 1024) != 0) {
                                    i14 &= -15;
                                }
                                bm3Var7 = bm3Var;
                                bm3Var6 = bm3Var2;
                                properties = modalBottomSheetProperties;
                                shape4 = shape2;
                                modifier3 = modifier2;
                                sheetState3 = sheetStateRememberModalBottomSheetState;
                                j7 = jM3275contentColorForek8zF_U;
                                f5 = f;
                                f6 = f2;
                                j6 = j3;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                            }
                            int i22 = i4 << 3;
                            int i23 = i14 << 3;
                            composer2 = composerStartRestartGroup;
                            m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i22 & 458752) | (i22 & 3670016) | (i22 & 29360128) | (i22 & 234881024) | (i22 & 1879048192), ((i4 >> 27) & 14) | (i23 & 112) | (i23 & 896) | (i23 & 7168), 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            long j9 = j7;
                            modifier2 = modifier3;
                            shape3 = shape4;
                            j5 = j9;
                            sheetState2 = sheetState3;
                            f3 = f5;
                            j4 = containerColor;
                            f4 = f6;
                            bm3Var3 = bm3Var7;
                            bm3Var4 = bm3Var6;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            f3 = f;
                            properties = modalBottomSheetProperties;
                            shape3 = shape2;
                            j4 = containerColor;
                            sheetState2 = sheetStateRememberModalBottomSheetState;
                            j5 = jM3275contentColorForek8zF_U;
                            f4 = f2;
                            j6 = j3;
                            bm3Var3 = bm3Var;
                            bm3Var4 = bm3Var2;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            final ModalBottomSheetProperties modalBottomSheetProperties2 = properties;
                            final Modifier modifier4 = modifier2;
                            final long j10 = j6;
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier4, sheetState2, f3, shape3, j4, j5, f4, j10, bm3Var3, bm3Var4, modalBottomSheetProperties2, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
                    if ((i4 & 306783379) == 306783378) {
                        z = true;
                    } else {
                        z = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i24) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i24, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var9 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j11 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j11;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var9;
                        } else {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i24) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i24, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var10 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j12 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j12;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var10;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                        }
                        int i24 = i4 << 3;
                        int i25 = i14 << 3;
                        composer2 = composerStartRestartGroup;
                        m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i24 & 458752) | (i24 & 3670016) | (i24 & 29360128) | (i24 & 234881024) | (i24 & 1879048192), ((i4 >> 27) & 14) | (i25 & 112) | (i25 & 896) | (i25 & 7168), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j13 = j7;
                        modifier2 = modifier3;
                        shape3 = shape4;
                        j5 = j13;
                        sheetState2 = sheetState3;
                        f3 = f5;
                        j4 = containerColor;
                        f4 = f6;
                        bm3Var3 = bm3Var7;
                        bm3Var4 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        f3 = f;
                        properties = modalBottomSheetProperties;
                        shape3 = shape2;
                        j4 = containerColor;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j5 = jM3275contentColorForek8zF_U;
                        f4 = f2;
                        j6 = j3;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final ModalBottomSheetProperties modalBottomSheetProperties3 = properties;
                        final Modifier modifier5 = modifier2;
                        final long j14 = j6;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier5, sheetState2, f3, shape3, j4, j5, f4, j14, bm3Var3, bm3Var4, modalBottomSheetProperties3, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                if ((i2 & 6) == 0) {
                    i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
                } else {
                    i11 = i2;
                }
                i12 = i3 & 2048;
                if (i12 != 0) {
                    i11 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                        i13 = 32;
                    } else {
                        i13 = 16;
                    }
                    i11 |= i13;
                }
                i14 = i11;
                if ((i3 & 4096) != 0) {
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 256;
                        } else {
                            i15 = 128;
                        }
                        i14 |= i15;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z = true;
                    } else {
                        z = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i26) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i26, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var11 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j15 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j15;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var11;
                        } else {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i26) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i26, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var12 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j16 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j16;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var12;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                        }
                        int i26 = i4 << 3;
                        int i27 = i14 << 3;
                        composer2 = composerStartRestartGroup;
                        m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i26 & 458752) | (i26 & 3670016) | (i26 & 29360128) | (i26 & 234881024) | (i26 & 1879048192), ((i4 >> 27) & 14) | (i27 & 112) | (i27 & 896) | (i27 & 7168), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j17 = j7;
                        modifier2 = modifier3;
                        shape3 = shape4;
                        j5 = j17;
                        sheetState2 = sheetState3;
                        f3 = f5;
                        j4 = containerColor;
                        f4 = f6;
                        bm3Var3 = bm3Var7;
                        bm3Var4 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        f3 = f;
                        properties = modalBottomSheetProperties;
                        shape3 = shape2;
                        j4 = containerColor;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j5 = jM3275contentColorForek8zF_U;
                        f4 = f2;
                        j6 = j3;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final ModalBottomSheetProperties modalBottomSheetProperties4 = properties;
                        final Modifier modifier6 = modifier2;
                        final long j18 = j6;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier6, sheetState2, f3, shape3, j4, j5, f4, j18, bm3Var3, bm3Var4, modalBottomSheetProperties4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
                if ((i4 & 306783379) == 306783378) {
                    z = true;
                } else {
                    z = true;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i28) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i28, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var13 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j19 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j19;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var13;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i28) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i28, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var14 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j110 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j110;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var14;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                    }
                    int i28 = i4 << 3;
                    int i29 = i14 << 3;
                    composer2 = composerStartRestartGroup;
                    m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i28 & 458752) | (i28 & 3670016) | (i28 & 29360128) | (i28 & 234881024) | (i28 & 1879048192), ((i4 >> 27) & 14) | (i29 & 112) | (i29 & 896) | (i29 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j111 = j7;
                    modifier2 = modifier3;
                    shape3 = shape4;
                    j5 = j111;
                    sheetState2 = sheetState3;
                    f3 = f5;
                    j4 = containerColor;
                    f4 = f6;
                    bm3Var3 = bm3Var7;
                    bm3Var4 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    f3 = f;
                    properties = modalBottomSheetProperties;
                    shape3 = shape2;
                    j4 = containerColor;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j5 = jM3275contentColorForek8zF_U;
                    f4 = f2;
                    j6 = j3;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final ModalBottomSheetProperties modalBottomSheetProperties5 = properties;
                    final Modifier modifier7 = modifier2;
                    final long j112 = j6;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier7, sheetState2, f3, shape3, j4, j5, f4, j112, bm3Var3, bm3Var4, modalBottomSheetProperties5, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            if ((i & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i4 |= i21;
                } else {
                    shape2 = shape;
                }
                i4 |= i21;
            } else {
                shape2 = shape;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                containerColor = j;
                if ((i3 & 32) == 0) {
                    i18 = 65536;
                } else {
                    i18 = 65536;
                }
                i4 |= i18;
            } else {
                containerColor = j;
            }
            if ((i & 1572864) == 0) {
                jM3275contentColorForek8zF_U = j2;
                if ((i3 & 64) == 0) {
                    i17 = 524288;
                } else {
                    i17 = 524288;
                }
                i4 |= i17;
            } else {
                jM3275contentColorForek8zF_U = j2;
            }
            i7 = i3 & 128;
            if (i7 != 0) {
                i4 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i4 |= i8;
            }
            if ((i & 100663296) != 0) {
                if ((i3 & 256) == 0) {
                    i16 = GroupFlagsKt.HasAuxSlotFlag;
                } else {
                    i16 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i16;
            }
            i9 = i3 & 512;
            if (i9 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 536870912;
                    } else {
                        i10 = 268435456;
                    }
                    i4 |= i10;
                }
                if ((i2 & 6) == 0) {
                    i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
                } else {
                    i11 = i2;
                }
                i12 = i3 & 2048;
                if (i12 != 0) {
                    i11 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                        i13 = 32;
                    } else {
                        i13 = 16;
                    }
                    i11 |= i13;
                }
                i14 = i11;
                if ((i3 & 4096) != 0) {
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 256;
                        } else {
                            i15 = 128;
                        }
                        i14 |= i15;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z = true;
                    } else {
                        z = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i210) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i210, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var15 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j113 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j113;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var15;
                        } else {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i210) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i210, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var16 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j114 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j114;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var16;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                        }
                        int i210 = i4 << 3;
                        int i211 = i14 << 3;
                        composer2 = composerStartRestartGroup;
                        m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i210 & 458752) | (i210 & 3670016) | (i210 & 29360128) | (i210 & 234881024) | (i210 & 1879048192), ((i4 >> 27) & 14) | (i211 & 112) | (i211 & 896) | (i211 & 7168), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j115 = j7;
                        modifier2 = modifier3;
                        shape3 = shape4;
                        j5 = j115;
                        sheetState2 = sheetState3;
                        f3 = f5;
                        j4 = containerColor;
                        f4 = f6;
                        bm3Var3 = bm3Var7;
                        bm3Var4 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        f3 = f;
                        properties = modalBottomSheetProperties;
                        shape3 = shape2;
                        j4 = containerColor;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j5 = jM3275contentColorForek8zF_U;
                        f4 = f2;
                        j6 = j3;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final ModalBottomSheetProperties modalBottomSheetProperties6 = properties;
                        final Modifier modifier8 = modifier2;
                        final long j116 = j6;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier8, sheetState2, f3, shape3, j4, j5, f4, j116, bm3Var3, bm3Var4, modalBottomSheetProperties6, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
                if ((i4 & 306783379) == 306783378) {
                    z = true;
                } else {
                    z = true;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i212) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i212, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var17 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j117 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j117;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var17;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i212) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i212, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var18 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j118 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j118;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var18;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                    }
                    int i212 = i4 << 3;
                    int i213 = i14 << 3;
                    composer2 = composerStartRestartGroup;
                    m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i212 & 458752) | (i212 & 3670016) | (i212 & 29360128) | (i212 & 234881024) | (i212 & 1879048192), ((i4 >> 27) & 14) | (i213 & 112) | (i213 & 896) | (i213 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j119 = j7;
                    modifier2 = modifier3;
                    shape3 = shape4;
                    j5 = j119;
                    sheetState2 = sheetState3;
                    f3 = f5;
                    j4 = containerColor;
                    f4 = f6;
                    bm3Var3 = bm3Var7;
                    bm3Var4 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    f3 = f;
                    properties = modalBottomSheetProperties;
                    shape3 = shape2;
                    j4 = containerColor;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j5 = jM3275contentColorForek8zF_U;
                    f4 = f2;
                    j6 = j3;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final ModalBottomSheetProperties modalBottomSheetProperties7 = properties;
                    final Modifier modifier9 = modifier2;
                    final long j1110 = j6;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier9, sheetState2, f3, shape3, j4, j5, f4, j1110, bm3Var3, bm3Var4, modalBottomSheetProperties7, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            if ((i2 & 6) == 0) {
                i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
            } else {
                i11 = i2;
            }
            i12 = i3 & 2048;
            if (i12 != 0) {
                i11 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                    i13 = 32;
                } else {
                    i13 = 16;
                }
                i11 |= i13;
            }
            i14 = i11;
            if ((i3 & 4096) != 0) {
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 256;
                    } else {
                        i15 = 128;
                    }
                    i14 |= i15;
                }
                if ((i4 & 306783379) == 306783378) {
                    z = true;
                } else {
                    z = true;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i214) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i214, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var19 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j1111 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j1111;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var19;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i214) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i214, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var110 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j1112 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j1112;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var110;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                    }
                    int i214 = i4 << 3;
                    int i215 = i14 << 3;
                    composer2 = composerStartRestartGroup;
                    m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i214 & 458752) | (i214 & 3670016) | (i214 & 29360128) | (i214 & 234881024) | (i214 & 1879048192), ((i4 >> 27) & 14) | (i215 & 112) | (i215 & 896) | (i215 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j1113 = j7;
                    modifier2 = modifier3;
                    shape3 = shape4;
                    j5 = j1113;
                    sheetState2 = sheetState3;
                    f3 = f5;
                    j4 = containerColor;
                    f4 = f6;
                    bm3Var3 = bm3Var7;
                    bm3Var4 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    f3 = f;
                    properties = modalBottomSheetProperties;
                    shape3 = shape2;
                    j4 = containerColor;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j5 = jM3275contentColorForek8zF_U;
                    f4 = f2;
                    j6 = j3;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final ModalBottomSheetProperties modalBottomSheetProperties8 = properties;
                    final Modifier modifier10 = modifier2;
                    final long j1114 = j6;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier10, sheetState2, f3, shape3, j4, j5, f4, j1114, bm3Var3, bm3Var4, modalBottomSheetProperties8, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            if ((i4 & 306783379) == 306783378) {
                z = true;
            } else {
                z = true;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i216) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i216, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var111 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j1115 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j1115;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var111;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i216) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i216, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var112 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j1116 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j1116;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var112;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                }
                int i216 = i4 << 3;
                int i217 = i14 << 3;
                composer2 = composerStartRestartGroup;
                m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i216 & 458752) | (i216 & 3670016) | (i216 & 29360128) | (i216 & 234881024) | (i216 & 1879048192), ((i4 >> 27) & 14) | (i217 & 112) | (i217 & 896) | (i217 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j1117 = j7;
                modifier2 = modifier3;
                shape3 = shape4;
                j5 = j1117;
                sheetState2 = sheetState3;
                f3 = f5;
                j4 = containerColor;
                f4 = f6;
                bm3Var3 = bm3Var7;
                bm3Var4 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                f3 = f;
                properties = modalBottomSheetProperties;
                shape3 = shape2;
                j4 = containerColor;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j5 = jM3275contentColorForek8zF_U;
                f4 = f2;
                j6 = j3;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final ModalBottomSheetProperties modalBottomSheetProperties9 = properties;
                final Modifier modifier11 = modifier2;
                final long j1118 = j6;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier11, sheetState2, f3, shape3, j4, j5, f4, j1118, bm3Var3, bm3Var4, modalBottomSheetProperties9, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                sheetStateRememberModalBottomSheetState = sheetState;
                if (composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) {
                }
                i4 |= i20;
            } else {
                sheetStateRememberModalBottomSheetState = sheetState;
            }
            i4 |= i20;
        } else {
            sheetStateRememberModalBottomSheetState = sheetState;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(f)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i4 |= i21;
                } else {
                    shape2 = shape;
                }
                i4 |= i21;
            } else {
                shape2 = shape;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                containerColor = j;
                if ((i3 & 32) == 0) {
                    i18 = 65536;
                } else {
                    i18 = 65536;
                }
                i4 |= i18;
            } else {
                containerColor = j;
            }
            if ((i & 1572864) == 0) {
                jM3275contentColorForek8zF_U = j2;
                if ((i3 & 64) == 0) {
                    i17 = 524288;
                } else {
                    i17 = 524288;
                }
                i4 |= i17;
            } else {
                jM3275contentColorForek8zF_U = j2;
            }
            i7 = i3 & 128;
            if (i7 != 0) {
                i4 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i8 = 8388608;
                } else {
                    i8 = 4194304;
                }
                i4 |= i8;
            }
            if ((i & 100663296) != 0) {
                if ((i3 & 256) == 0) {
                    i16 = GroupFlagsKt.HasAuxSlotFlag;
                } else {
                    i16 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i16;
            }
            i9 = i3 & 512;
            if (i9 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 536870912;
                    } else {
                        i10 = 268435456;
                    }
                    i4 |= i10;
                }
                if ((i2 & 6) == 0) {
                    i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
                } else {
                    i11 = i2;
                }
                i12 = i3 & 2048;
                if (i12 != 0) {
                    i11 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                        i13 = 32;
                    } else {
                        i13 = 16;
                    }
                    i11 |= i13;
                }
                i14 = i11;
                if ((i3 & 4096) != 0) {
                    if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i15 = 256;
                        } else {
                            i15 = 128;
                        }
                        i14 |= i15;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z = true;
                    } else {
                        z = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i218) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i218, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var113 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j1119 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j1119;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var113;
                        } else {
                            if (i19 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            }
                            if (i5 != 0) {
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            } else {
                                fM3122getSheetMaxWidthD9Ej5fM = f;
                            }
                            if ((i3 & 16) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i4 &= -57345;
                            } else {
                                expandedShape = shape2;
                            }
                            if ((i3 & 32) != 0) {
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                                i4 &= -458753;
                            }
                            if ((i3 & 64) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                                i4 &= -3670017;
                            }
                            if (i7 != 0) {
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            } else {
                                fM9042constructorimpl = f2;
                            }
                            if ((i3 & 256) != 0) {
                                scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                                i4 &= -234881025;
                            } else {
                                scrimColor = j3;
                            }
                            if (i9 != 0) {
                                bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                            } else {
                                bm3VarM3312getLambda$655173438$material3 = bm3Var;
                            }
                            if ((i3 & 1024) != 0) {
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                    public final WindowInsets invoke(Composer composer3, int i218) {
                                        composer3.startReplaceGroup(69134487);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(69134487, i218, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                i14 &= -15;
                            } else {
                                bm3Var5 = bm3Var2;
                            }
                            if (i12 != 0) {
                                properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                            } else {
                                properties = modalBottomSheetProperties;
                            }
                            bm3Var6 = bm3Var5;
                            shape4 = expandedShape;
                            modifier3 = modifier2;
                            bm3 bm3Var114 = bm3VarM3312getLambda$655173438$material3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            long j11110 = jM3275contentColorForek8zF_U;
                            f6 = fM9042constructorimpl;
                            sheetState3 = sheetStateRememberModalBottomSheetState;
                            j7 = j11110;
                            j6 = scrimColor;
                            bm3Var7 = bm3Var114;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                        }
                        int i218 = i4 << 3;
                        int i219 = i14 << 3;
                        composer2 = composerStartRestartGroup;
                        m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i218 & 458752) | (i218 & 3670016) | (i218 & 29360128) | (i218 & 234881024) | (i218 & 1879048192), ((i4 >> 27) & 14) | (i219 & 112) | (i219 & 896) | (i219 & 7168), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        long j11111 = j7;
                        modifier2 = modifier3;
                        shape3 = shape4;
                        j5 = j11111;
                        sheetState2 = sheetState3;
                        f3 = f5;
                        j4 = containerColor;
                        f4 = f6;
                        bm3Var3 = bm3Var7;
                        bm3Var4 = bm3Var6;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        f3 = f;
                        properties = modalBottomSheetProperties;
                        shape3 = shape2;
                        j4 = containerColor;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        j5 = jM3275contentColorForek8zF_U;
                        f4 = f2;
                        j6 = j3;
                        bm3Var3 = bm3Var;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        final ModalBottomSheetProperties modalBottomSheetProperties10 = properties;
                        final Modifier modifier12 = modifier2;
                        final long j11112 = j6;
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier12, sheetState2, f3, shape3, j4, j5, f4, j11112, bm3Var3, bm3Var4, modalBottomSheetProperties10, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
                if ((i4 & 306783379) == 306783378) {
                    z = true;
                } else {
                    z = true;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i2110) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i2110, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var115 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j11113 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j11113;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var115;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i2110) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i2110, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var116 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j11114 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j11114;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var116;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                    }
                    int i2110 = i4 << 3;
                    int i2111 = i14 << 3;
                    composer2 = composerStartRestartGroup;
                    m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i2110 & 458752) | (i2110 & 3670016) | (i2110 & 29360128) | (i2110 & 234881024) | (i2110 & 1879048192), ((i4 >> 27) & 14) | (i2111 & 112) | (i2111 & 896) | (i2111 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j11115 = j7;
                    modifier2 = modifier3;
                    shape3 = shape4;
                    j5 = j11115;
                    sheetState2 = sheetState3;
                    f3 = f5;
                    j4 = containerColor;
                    f4 = f6;
                    bm3Var3 = bm3Var7;
                    bm3Var4 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    f3 = f;
                    properties = modalBottomSheetProperties;
                    shape3 = shape2;
                    j4 = containerColor;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j5 = jM3275contentColorForek8zF_U;
                    f4 = f2;
                    j6 = j3;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final ModalBottomSheetProperties modalBottomSheetProperties11 = properties;
                    final Modifier modifier13 = modifier2;
                    final long j11116 = j6;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier13, sheetState2, f3, shape3, j4, j5, f4, j11116, bm3Var3, bm3Var4, modalBottomSheetProperties11, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            if ((i2 & 6) == 0) {
                i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
            } else {
                i11 = i2;
            }
            i12 = i3 & 2048;
            if (i12 != 0) {
                i11 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                    i13 = 32;
                } else {
                    i13 = 16;
                }
                i11 |= i13;
            }
            i14 = i11;
            if ((i3 & 4096) != 0) {
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 256;
                    } else {
                        i15 = 128;
                    }
                    i14 |= i15;
                }
                if ((i4 & 306783379) == 306783378) {
                    z = true;
                } else {
                    z = true;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i2112) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i2112, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var117 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j11117 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j11117;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var117;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i2112) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i2112, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var118 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j11118 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j11118;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var118;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                    }
                    int i2112 = i4 << 3;
                    int i2113 = i14 << 3;
                    composer2 = composerStartRestartGroup;
                    m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i2112 & 458752) | (i2112 & 3670016) | (i2112 & 29360128) | (i2112 & 234881024) | (i2112 & 1879048192), ((i4 >> 27) & 14) | (i2113 & 112) | (i2113 & 896) | (i2113 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j11119 = j7;
                    modifier2 = modifier3;
                    shape3 = shape4;
                    j5 = j11119;
                    sheetState2 = sheetState3;
                    f3 = f5;
                    j4 = containerColor;
                    f4 = f6;
                    bm3Var3 = bm3Var7;
                    bm3Var4 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    f3 = f;
                    properties = modalBottomSheetProperties;
                    shape3 = shape2;
                    j4 = containerColor;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j5 = jM3275contentColorForek8zF_U;
                    f4 = f2;
                    j6 = j3;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final ModalBottomSheetProperties modalBottomSheetProperties12 = properties;
                    final Modifier modifier14 = modifier2;
                    final long j111110 = j6;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier14, sheetState2, f3, shape3, j4, j5, f4, j111110, bm3Var3, bm3Var4, modalBottomSheetProperties12, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            if ((i4 & 306783379) == 306783378) {
                z = true;
            } else {
                z = true;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i2114) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i2114, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var119 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j111111 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j111111;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var119;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i2114) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i2114, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var1110 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j111112 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j111112;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var1110;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                }
                int i2114 = i4 << 3;
                int i2115 = i14 << 3;
                composer2 = composerStartRestartGroup;
                m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i2114 & 458752) | (i2114 & 3670016) | (i2114 & 29360128) | (i2114 & 234881024) | (i2114 & 1879048192), ((i4 >> 27) & 14) | (i2115 & 112) | (i2115 & 896) | (i2115 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j111113 = j7;
                modifier2 = modifier3;
                shape3 = shape4;
                j5 = j111113;
                sheetState2 = sheetState3;
                f3 = f5;
                j4 = containerColor;
                f4 = f6;
                bm3Var3 = bm3Var7;
                bm3Var4 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                f3 = f;
                properties = modalBottomSheetProperties;
                shape3 = shape2;
                j4 = containerColor;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j5 = jM3275contentColorForek8zF_U;
                f4 = f2;
                j6 = j3;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final ModalBottomSheetProperties modalBottomSheetProperties13 = properties;
                final Modifier modifier15 = modifier2;
                final long j111114 = j6;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier15, sheetState2, f3, shape3, j4, j5, f4, j111114, bm3Var3, bm3Var4, modalBottomSheetProperties13, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        if ((i & 24576) == 0) {
            if ((i3 & 16) == 0) {
                shape2 = shape;
                if (composerStartRestartGroup.changed(shape2)) {
                }
                i4 |= i21;
            } else {
                shape2 = shape;
            }
            i4 |= i21;
        } else {
            shape2 = shape;
        }
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            containerColor = j;
            if ((i3 & 32) == 0) {
                i18 = 65536;
            } else {
                i18 = 65536;
            }
            i4 |= i18;
        } else {
            containerColor = j;
        }
        if ((i & 1572864) == 0) {
            jM3275contentColorForek8zF_U = j2;
            if ((i3 & 64) == 0) {
                i17 = 524288;
            } else {
                i17 = 524288;
            }
            i4 |= i17;
        } else {
            jM3275contentColorForek8zF_U = j2;
        }
        i7 = i3 & 128;
        if (i7 != 0) {
            i4 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(f2)) {
                i8 = 8388608;
            } else {
                i8 = 4194304;
            }
            i4 |= i8;
        }
        if ((i & 100663296) != 0) {
            if ((i3 & 256) == 0) {
                i16 = GroupFlagsKt.HasAuxSlotFlag;
            } else {
                i16 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i4 |= i16;
        }
        i9 = i3 & 512;
        if (i9 != 0) {
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i10 = 536870912;
                } else {
                    i10 = 268435456;
                }
                i4 |= i10;
            }
            if ((i2 & 6) == 0) {
                i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
            } else {
                i11 = i2;
            }
            i12 = i3 & 2048;
            if (i12 != 0) {
                i11 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                    i13 = 32;
                } else {
                    i13 = 16;
                }
                i11 |= i13;
            }
            i14 = i11;
            if ((i3 & 4096) != 0) {
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i15 = 256;
                    } else {
                        i15 = 128;
                    }
                    i14 |= i15;
                }
                if ((i4 & 306783379) == 306783378) {
                    z = true;
                } else {
                    z = true;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i2116) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i2116, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var1111 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j111115 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j111115;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var1111;
                    } else {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 4) != 0) {
                            i4 &= -897;
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        }
                        if (i5 != 0) {
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        } else {
                            fM3122getSheetMaxWidthD9Ej5fM = f;
                        }
                        if ((i3 & 16) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i4 &= -57345;
                        } else {
                            expandedShape = shape2;
                        }
                        if ((i3 & 32) != 0) {
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            i4 &= -458753;
                        }
                        if ((i3 & 64) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                            i4 &= -3670017;
                        }
                        if (i7 != 0) {
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        } else {
                            fM9042constructorimpl = f2;
                        }
                        if ((i3 & 256) != 0) {
                            scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                            i4 &= -234881025;
                        } else {
                            scrimColor = j3;
                        }
                        if (i9 != 0) {
                            bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                        } else {
                            bm3VarM3312getLambda$655173438$material3 = bm3Var;
                        }
                        if ((i3 & 1024) != 0) {
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                                public final WindowInsets invoke(Composer composer3, int i2116) {
                                    composer3.startReplaceGroup(69134487);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(69134487, i2116, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            i14 &= -15;
                        } else {
                            bm3Var5 = bm3Var2;
                        }
                        if (i12 != 0) {
                            properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                        } else {
                            properties = modalBottomSheetProperties;
                        }
                        bm3Var6 = bm3Var5;
                        shape4 = expandedShape;
                        modifier3 = modifier2;
                        bm3 bm3Var1112 = bm3VarM3312getLambda$655173438$material3;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        long j111116 = jM3275contentColorForek8zF_U;
                        f6 = fM9042constructorimpl;
                        sheetState3 = sheetStateRememberModalBottomSheetState;
                        j7 = j111116;
                        j6 = scrimColor;
                        bm3Var7 = bm3Var1112;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                    }
                    int i2116 = i4 << 3;
                    int i2117 = i14 << 3;
                    composer2 = composerStartRestartGroup;
                    m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i2116 & 458752) | (i2116 & 3670016) | (i2116 & 29360128) | (i2116 & 234881024) | (i2116 & 1879048192), ((i4 >> 27) & 14) | (i2117 & 112) | (i2117 & 896) | (i2117 & 7168), 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    long j111117 = j7;
                    modifier2 = modifier3;
                    shape3 = shape4;
                    j5 = j111117;
                    sheetState2 = sheetState3;
                    f3 = f5;
                    j4 = containerColor;
                    f4 = f6;
                    bm3Var3 = bm3Var7;
                    bm3Var4 = bm3Var6;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    f3 = f;
                    properties = modalBottomSheetProperties;
                    shape3 = shape2;
                    j4 = containerColor;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    j5 = jM3275contentColorForek8zF_U;
                    f4 = f2;
                    j6 = j3;
                    bm3Var3 = bm3Var;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final ModalBottomSheetProperties modalBottomSheetProperties14 = properties;
                    final Modifier modifier16 = modifier2;
                    final long j111118 = j6;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier16, sheetState2, f3, shape3, j4, j5, f4, j111118, bm3Var3, bm3Var4, modalBottomSheetProperties14, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            if ((i4 & 306783379) == 306783378) {
                z = true;
            } else {
                z = true;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i2118) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i2118, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var1113 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j111119 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j111119;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var1113;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i2118) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i2118, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var1114 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j1111110 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j1111110;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var1114;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                }
                int i2118 = i4 << 3;
                int i2119 = i14 << 3;
                composer2 = composerStartRestartGroup;
                m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i2118 & 458752) | (i2118 & 3670016) | (i2118 & 29360128) | (i2118 & 234881024) | (i2118 & 1879048192), ((i4 >> 27) & 14) | (i2119 & 112) | (i2119 & 896) | (i2119 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j1111111 = j7;
                modifier2 = modifier3;
                shape3 = shape4;
                j5 = j1111111;
                sheetState2 = sheetState3;
                f3 = f5;
                j4 = containerColor;
                f4 = f6;
                bm3Var3 = bm3Var7;
                bm3Var4 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                f3 = f;
                properties = modalBottomSheetProperties;
                shape3 = shape2;
                j4 = containerColor;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j5 = jM3275contentColorForek8zF_U;
                f4 = f2;
                j6 = j3;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final ModalBottomSheetProperties modalBottomSheetProperties15 = properties;
                final Modifier modifier17 = modifier2;
                final long j1111112 = j6;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier17, sheetState2, f3, shape3, j4, j5, f4, j1111112, bm3Var3, bm3Var4, modalBottomSheetProperties15, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 805306368;
        if ((i2 & 6) == 0) {
            i11 = i2 | (((i3 & 1024) == 0 || !composerStartRestartGroup.changedInstance(bm3Var2)) ? 2 : 4);
        } else {
            i11 = i2;
        }
        i12 = i3 & 2048;
        if (i12 != 0) {
            i11 |= 48;
        } else if ((i2 & 48) != 0) {
            if (composerStartRestartGroup.changed(modalBottomSheetProperties)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        i14 = i11;
        if ((i3 & 4096) != 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i15 = 256;
                } else {
                    i15 = 128;
                }
                i14 |= i15;
            }
            if ((i4 & 306783379) == 306783378) {
                z = true;
            } else {
                z = true;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i21110) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i21110, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var1115 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j1111113 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j1111113;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var1115;
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    }
                    if (i5 != 0) {
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    } else {
                        fM3122getSheetMaxWidthD9Ej5fM = f;
                    }
                    if ((i3 & 16) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i4 &= -57345;
                    } else {
                        expandedShape = shape2;
                    }
                    if ((i3 & 32) != 0) {
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        i4 &= -458753;
                    }
                    if ((i3 & 64) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                        i4 &= -3670017;
                    }
                    if (i7 != 0) {
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    } else {
                        fM9042constructorimpl = f2;
                    }
                    if ((i3 & 256) != 0) {
                        scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                        i4 &= -234881025;
                    } else {
                        scrimColor = j3;
                    }
                    if (i9 != 0) {
                        bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                    } else {
                        bm3VarM3312getLambda$655173438$material3 = bm3Var;
                    }
                    if ((i3 & 1024) != 0) {
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                            public final WindowInsets invoke(Composer composer3, int i21110) {
                                composer3.startReplaceGroup(69134487);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(69134487, i21110, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        i14 &= -15;
                    } else {
                        bm3Var5 = bm3Var2;
                    }
                    if (i12 != 0) {
                        properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                    } else {
                        properties = modalBottomSheetProperties;
                    }
                    bm3Var6 = bm3Var5;
                    shape4 = expandedShape;
                    modifier3 = modifier2;
                    bm3 bm3Var1116 = bm3VarM3312getLambda$655173438$material3;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    long j1111114 = jM3275contentColorForek8zF_U;
                    f6 = fM9042constructorimpl;
                    sheetState3 = sheetStateRememberModalBottomSheetState;
                    j7 = j1111114;
                    j6 = scrimColor;
                    bm3Var7 = bm3Var1116;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
                }
                int i21110 = i4 << 3;
                int i21111 = i14 << 3;
                composer2 = composerStartRestartGroup;
                m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i21110 & 458752) | (i21110 & 3670016) | (i21110 & 29360128) | (i21110 & 234881024) | (i21110 & 1879048192), ((i4 >> 27) & 14) | (i21111 & 112) | (i21111 & 896) | (i21111 & 7168), 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                long j1111115 = j7;
                modifier2 = modifier3;
                shape3 = shape4;
                j5 = j1111115;
                sheetState2 = sheetState3;
                f3 = f5;
                j4 = containerColor;
                f4 = f6;
                bm3Var3 = bm3Var7;
                bm3Var4 = bm3Var6;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                f3 = f;
                properties = modalBottomSheetProperties;
                shape3 = shape2;
                j4 = containerColor;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                j5 = jM3275contentColorForek8zF_U;
                f4 = f2;
                j6 = j3;
                bm3Var3 = bm3Var;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final ModalBottomSheetProperties modalBottomSheetProperties16 = properties;
                final Modifier modifier18 = modifier2;
                final long j1111116 = j6;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier18, sheetState2, f3, shape3, j4, j5, f4, j1111116, bm3Var3, bm3Var4, modalBottomSheetProperties16, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        if ((i4 & 306783379) == 306783378) {
            z = true;
        } else {
            z = true;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    i4 &= -897;
                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                }
                if (i5 != 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                } else {
                    fM3122getSheetMaxWidthD9Ej5fM = f;
                }
                if ((i3 & 16) != 0) {
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    i4 &= -57345;
                } else {
                    expandedShape = shape2;
                }
                if ((i3 & 32) != 0) {
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -458753;
                }
                if ((i3 & 64) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                    i4 &= -3670017;
                }
                if (i7 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                } else {
                    fM9042constructorimpl = f2;
                }
                if ((i3 & 256) != 0) {
                    scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                    i4 &= -234881025;
                } else {
                    scrimColor = j3;
                }
                if (i9 != 0) {
                    bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                } else {
                    bm3VarM3312getLambda$655173438$material3 = bm3Var;
                }
                if ((i3 & 1024) != 0) {
                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                        public final WindowInsets invoke(Composer composer3, int i21112) {
                            composer3.startReplaceGroup(69134487);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(69134487, i21112, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            composer3.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                            return invoke(composer3, num.intValue());
                        }
                    };
                    i14 &= -15;
                } else {
                    bm3Var5 = bm3Var2;
                }
                if (i12 != 0) {
                    properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                } else {
                    properties = modalBottomSheetProperties;
                }
                bm3Var6 = bm3Var5;
                shape4 = expandedShape;
                modifier3 = modifier2;
                bm3 bm3Var1117 = bm3VarM3312getLambda$655173438$material3;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                long j1111117 = jM3275contentColorForek8zF_U;
                f6 = fM9042constructorimpl;
                sheetState3 = sheetStateRememberModalBottomSheetState;
                j7 = j1111117;
                j6 = scrimColor;
                bm3Var7 = bm3Var1117;
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 4) != 0) {
                    i4 &= -897;
                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                }
                if (i5 != 0) {
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                } else {
                    fM3122getSheetMaxWidthD9Ej5fM = f;
                }
                if ((i3 & 16) != 0) {
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    i4 &= -57345;
                } else {
                    expandedShape = shape2;
                }
                if ((i3 & 32) != 0) {
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    i4 &= -458753;
                }
                if ((i3 & 64) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, (i4 >> 15) & 14);
                    i4 &= -3670017;
                }
                if (i7 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                } else {
                    fM9042constructorimpl = f2;
                }
                if ((i3 & 256) != 0) {
                    scrimColor = BottomSheetDefaults.INSTANCE.getScrimColor(composerStartRestartGroup, 6);
                    i4 &= -234881025;
                } else {
                    scrimColor = j3;
                }
                if (i9 != 0) {
                    bm3VarM3312getLambda$655173438$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.m3312getLambda$655173438$material3();
                } else {
                    bm3VarM3312getLambda$655173438$material3 = bm3Var;
                }
                if ((i3 & 1024) != 0) {
                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$7
                        public final WindowInsets invoke(Composer composer3, int i21112) {
                            composer3.startReplaceGroup(69134487);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(69134487, i21112, -1, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.kt:233)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            composer3.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                            return invoke(composer3, num.intValue());
                        }
                    };
                    i14 &= -15;
                } else {
                    bm3Var5 = bm3Var2;
                }
                if (i12 != 0) {
                    properties = ModalBottomSheetDefaults.INSTANCE.getProperties();
                } else {
                    properties = modalBottomSheetProperties;
                }
                bm3Var6 = bm3Var5;
                shape4 = expandedShape;
                modifier3 = modifier2;
                bm3 bm3Var1118 = bm3VarM3312getLambda$655173438$material3;
                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                long j1111118 = jM3275contentColorForek8zF_U;
                f6 = fM9042constructorimpl;
                sheetState3 = sheetStateRememberModalBottomSheetState;
                j7 = j1111118;
                j6 = scrimColor;
                bm3Var7 = bm3Var1118;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(953901324, i4, i14, "androidx.compose.material3.ModalBottomSheet (ModalBottomSheet.kt:237)");
            }
            int i21112 = i4 << 3;
            int i21113 = i14 << 3;
            composer2 = composerStartRestartGroup;
            m3623ModalBottomSheetYbuCTN8(ll3Var, modifier3, sheetState3, f5, true, shape4, containerColor, j7, f6, j6, bm3Var7, bm3Var6, properties, dm3Var, composer2, (i4 & 14) | 24576 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i21112 & 458752) | (i21112 & 3670016) | (i21112 & 29360128) | (i21112 & 234881024) | (i21112 & 1879048192), ((i4 >> 27) & 14) | (i21113 & 112) | (i21113 & 896) | (i21113 & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            long j1111119 = j7;
            modifier2 = modifier3;
            shape3 = shape4;
            j5 = j1111119;
            sheetState2 = sheetState3;
            f3 = f5;
            j4 = containerColor;
            f4 = f6;
            bm3Var3 = bm3Var7;
            bm3Var4 = bm3Var6;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            f3 = f;
            properties = modalBottomSheetProperties;
            shape3 = shape2;
            j4 = containerColor;
            sheetState2 = sheetStateRememberModalBottomSheetState;
            j5 = jM3275contentColorForek8zF_U;
            f4 = f2;
            j6 = j3;
            bm3Var3 = bm3Var;
            bm3Var4 = bm3Var2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final ModalBottomSheetProperties modalBottomSheetProperties17 = properties;
            final Modifier modifier19 = modifier2;
            final long j11111110 = j6;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: yb5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ModalBottomSheetKt.ModalBottomSheet_dYc4hso$lambda$14(ll3Var, modifier19, sheetState2, f3, shape3, j4, j5, f4, j11111110, bm3Var3, bm3Var4, modalBottomSheetProperties17, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0122  */
    /* JADX WARN: Code duplicated, block: B:102:0x0126  */
    /* JADX WARN: Code duplicated, block: B:105:0x0131 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:108:0x0138  */
    /* JADX WARN: Code duplicated, block: B:111:0x013e  */
    /* JADX WARN: Code duplicated, block: B:113:0x0142  */
    /* JADX WARN: Code duplicated, block: B:115:0x014b  */
    /* JADX WARN: Code duplicated, block: B:116:0x014e  */
    /* JADX WARN: Code duplicated, block: B:119:0x0156  */
    /* JADX WARN: Code duplicated, block: B:122:0x015f  */
    /* JADX WARN: Code duplicated, block: B:124:0x0167  */
    /* JADX WARN: Code duplicated, block: B:127:0x0170  */
    /* JADX WARN: Code duplicated, block: B:130:0x0177  */
    /* JADX WARN: Code duplicated, block: B:133:0x0180  */
    /* JADX WARN: Code duplicated, block: B:134:0x0183  */
    /* JADX WARN: Code duplicated, block: B:136:0x0189  */
    /* JADX WARN: Code duplicated, block: B:138:0x0191  */
    /* JADX WARN: Code duplicated, block: B:139:0x0194  */
    /* JADX WARN: Code duplicated, block: B:141:0x019b  */
    /* JADX WARN: Code duplicated, block: B:144:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:147:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:150:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:155:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:157:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:160:0x01d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:162:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:165:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:167:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:169:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:171:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:175:0x0203  */
    /* JADX WARN: Code duplicated, block: B:179:0x0210  */
    /* JADX WARN: Code duplicated, block: B:182:0x0219  */
    /* JADX WARN: Code duplicated, block: B:184:0x022b  */
    /* JADX WARN: Code duplicated, block: B:204:0x026e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:205:0x0270  */
    /* JADX WARN: Code duplicated, block: B:208:0x0277  */
    /* JADX WARN: Code duplicated, block: B:209:0x0285  */
    /* JADX WARN: Code duplicated, block: B:211:0x0289  */
    /* JADX WARN: Code duplicated, block: B:213:0x0291  */
    /* JADX WARN: Code duplicated, block: B:214:0x0293  */
    /* JADX WARN: Code duplicated, block: B:217:0x0299  */
    /* JADX WARN: Code duplicated, block: B:218:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:221:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:222:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:225:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:226:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:228:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:229:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:231:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:232:0x02da  */
    /* JADX WARN: Code duplicated, block: B:235:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:236:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:239:0x0306  */
    /* JADX WARN: Code duplicated, block: B:240:0x0311  */
    /* JADX WARN: Code duplicated, block: B:243:0x033d  */
    /* JADX WARN: Code duplicated, block: B:245:0x034f  */
    /* JADX WARN: Code duplicated, block: B:247:0x0355  */
    /* JADX WARN: Code duplicated, block: B:253:0x0362  */
    /* JADX WARN: Code duplicated, block: B:255:0x036a  */
    /* JADX WARN: Code duplicated, block: B:257:0x0381  */
    /* JADX WARN: Code duplicated, block: B:260:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:262:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:266:0x03b2 A[PHI: r42
      0x03b2: PHI (r42v2 long) = (r42v0 long), (r42v3 long) binds: [B:265:0x03b0, B:263:0x03ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:267:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:270:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:272:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:275:0x03db  */
    /* JADX WARN: Code duplicated, block: B:278:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:281:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:282:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:285:0x0400  */
    /* JADX WARN: Code duplicated, block: B:287:0x0408  */
    /* JADX WARN: Code duplicated, block: B:290:0x042f  */
    /* JADX WARN: Code duplicated, block: B:294:0x043a  */
    /* JADX WARN: Code duplicated, block: B:297:0x0452  */
    /* JADX WARN: Code duplicated, block: B:300:0x0473  */
    /* JADX WARN: Code duplicated, block: B:302:0x0479  */
    /* JADX WARN: Code duplicated, block: B:308:0x0486  */
    /* JADX WARN: Code duplicated, block: B:314:0x0493  */
    /* JADX WARN: Code duplicated, block: B:317:0x049c  */
    /* JADX WARN: Code duplicated, block: B:321:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:324:0x050d  */
    /* JADX WARN: Code duplicated, block: B:326:0x0522  */
    /* JADX WARN: Code duplicated, block: B:329:0x0540  */
    /* JADX WARN: Code duplicated, block: B:331:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0076  */
    /* JADX WARN: Code duplicated, block: B:43:0x007a  */
    /* JADX WARN: Code duplicated, block: B:45:0x0082  */
    /* JADX WARN: Code duplicated, block: B:46:0x0085  */
    /* JADX WARN: Code duplicated, block: B:50:0x008f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0092  */
    /* JADX WARN: Code duplicated, block: B:53:0x0096  */
    /* JADX WARN: Code duplicated, block: B:55:0x009c  */
    /* JADX WARN: Code duplicated, block: B:56:0x009f  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:77:0x00de  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:81:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:86:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:90:0x0104  */
    /* JADX WARN: Code duplicated, block: B:91:0x0109  */
    /* JADX WARN: Code duplicated, block: B:93:0x010f  */
    /* JADX WARN: Code duplicated, block: B:95:0x0115  */
    /* JADX WARN: Code duplicated, block: B:96:0x0118  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r52v1 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX INFO: renamed from: ModalBottomSheetContent-7---e2Q, reason: not valid java name */
    public static final void m3625ModalBottomSheetContent7e2Q(final BoxScope boxScope, final Animatable<Float, AnimationVector1D> animatable, final y22 y22Var, final ll3<j59> ll3Var, final nl3<? super Float, j59> nl3Var, Modifier modifier, SheetState sheetState, float f, boolean z, Shape shape, long j, long j2, float f2, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var2, final dm3<? super ColumnScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        y22 y22Var2;
        int i5;
        int i6;
        int i7;
        int i8;
        Modifier modifier2;
        int i9;
        final SheetState sheetStateRememberModalBottomSheetState;
        int i10;
        float fM3122getSheetMaxWidthD9Ej5fM;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        long j3;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean z2;
        final boolean z3;
        final long j4;
        final bm3<? super Composer, ? super Integer, j59> bm3Var3;
        final float f3;
        final SheetState sheetState2;
        final Modifier modifier3;
        Composer composer2;
        final Shape shape2;
        final long j5;
        final float f4;
        final bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i23;
        boolean z4;
        Shape expandedShape;
        long containerColor;
        long jM3275contentColorForek8zF_U;
        float fM3120getElevationD9Ej5fM;
        bm3<? super Composer, ? super Integer, j59> lambda$1716959002$material3;
        int i24;
        Modifier modifier4;
        float f5;
        int i25;
        long j6;
        Shape shape3;
        bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var5;
        String strM4461getString2EP1pXo;
        Modifier modifierNestedScroll$default;
        int i26;
        long j7;
        boolean z5;
        Object objRememberedValue;
        boolean z6;
        boolean z7;
        Object objRememberedValue2;
        boolean zChanged;
        Object objRememberedValue3;
        boolean z8;
        int offset$material3;
        ?? r6;
        boolean z9;
        boolean z10;
        Object objRememberedValue4;
        boolean z11;
        boolean z12;
        Object objRememberedValue5;
        int i27;
        int i28;
        Composer composerStartRestartGroup = composer.startRestartGroup(-37400432);
        if ((Integer.MIN_VALUE & i3) != 0) {
            i4 = i | 6;
        } else if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(boxScope) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        if ((i3 & 1) != 0) {
            i4 |= 48;
        } else if ((i & 48) == 0) {
            i4 |= (i & 64) == 0 ? composerStartRestartGroup.changed(animatable) : composerStartRestartGroup.changedInstance(animatable) ? 32 : 16;
        }
        if ((i3 & 2) == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                y22Var2 = y22Var;
                i4 |= composerStartRestartGroup.changedInstance(y22Var2) ? 256 : 128;
            }
            if ((i3 & 4) != 0) {
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changedInstance(ll3Var)) {
                        i5 = 2048;
                    } else {
                        i5 = 1024;
                    }
                    i4 |= i5;
                }
                i6 = 8192;
                if ((i3 & 8) != 0) {
                    i4 |= 24576;
                } else if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i4 |= i7;
                }
                i8 = i3 & 16;
                if (i8 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    modifier2 = modifier;
                } else {
                    modifier2 = modifier;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(modifier2)) {
                            i9 = 131072;
                        } else {
                            i9 = 65536;
                        }
                        i4 |= i9;
                    }
                }
                if ((i & 1572864) == 0) {
                    sheetStateRememberModalBottomSheetState = sheetState;
                    if ((i3 & 32) == 0 || !composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) {
                        i28 = 524288;
                    } else {
                        i28 = 1048576;
                    }
                    i4 |= i28;
                } else {
                    sheetStateRememberModalBottomSheetState = sheetState;
                }
                i10 = i3 & 64;
                if (i10 != 0) {
                    i4 |= 12582912;
                    fM3122getSheetMaxWidthD9Ej5fM = f;
                } else {
                    fM3122getSheetMaxWidthD9Ej5fM = f;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i4 |= i11;
                    }
                }
                i12 = i3 & 128;
                if (i12 != 0) {
                    i4 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i13 = 67108864;
                    } else {
                        i13 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i13;
                }
                if ((i & 805306368) != 0) {
                    i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(shape)) ? 268435456 : 536870912;
                }
                if ((i2 & 6) == 0) {
                    if ((i3 & 512) == 0) {
                        i14 = i4;
                        int i29 = composerStartRestartGroup.changed(j) ? 4 : 2;
                        i15 = i2 | i29;
                    } else {
                        i14 = i4;
                    }
                    i15 = i2 | i29;
                } else {
                    i14 = i4;
                    i15 = i2;
                }
                if ((i2 & 48) == 0) {
                    j3 = j2;
                    if ((i3 & 1024) == 0 || !composerStartRestartGroup.changed(j3)) {
                        i27 = 16;
                    } else {
                        i27 = 32;
                    }
                    i15 |= i27;
                } else {
                    j3 = j2;
                }
                i16 = i15;
                i17 = i3 & 2048;
                if (i17 != 0) {
                    i18 = i16 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i18 = i16 | i19;
                } else {
                    i18 = i16;
                }
                i20 = i3 & 4096;
                if (i20 != 0) {
                    i22 = i18 | 3072;
                } else {
                    i21 = i18;
                    if ((i2 & 3072) == 0) {
                        i22 = i21 | (composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024);
                    } else {
                        i22 = i21;
                    }
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 8192) == 0 && composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i6 = 16384;
                    }
                    i22 |= i6;
                }
                if ((i3 & 16384) != 0) {
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        i22 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                    }
                    if ((i14 & 306783379) == 306783378 || (i22 & 74899) != 74898) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i8 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i3 & 32) != 0) {
                                sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                                i23 = i14 & (-3670017);
                            }
                            if (i10 != 0) {
                                i23 = i14;
                                fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                            }
                            if (i12 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if ((i3 & 256) != 0) {
                                expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                                i23 &= -1879048193;
                            } else {
                                expandedShape = shape;
                            }
                            if ((i3 & 512) != 0) {
                                i22 &= -15;
                                containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                            } else {
                                containerColor = j;
                            }
                            if ((i3 & 1024) != 0) {
                                jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                                i22 &= -113;
                            } else {
                                jM3275contentColorForek8zF_U = j2;
                            }
                            if (i17 != 0) {
                                fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                            } else {
                                fM3120getElevationD9Ej5fM = f2;
                            }
                            if (i20 != 0) {
                                lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                            } else {
                                lambda$1716959002$material3 = bm3Var;
                            }
                            if ((i3 & 8192) != 0) {
                                Modifier modifier5 = modifier2;
                                i24 = i23;
                                modifier4 = modifier5;
                                Shape shape4 = expandedShape;
                                bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                                    public final WindowInsets invoke(Composer composer3, int i30) {
                                        composer3.startReplaceGroup(1023699493);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1023699493, i30, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                        }
                                        WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                        composer3.endReplaceGroup();
                                        return windowInsets;
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                        return invoke(composer3, num.intValue());
                                    }
                                };
                                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                                j6 = containerColor;
                                shape3 = shape4;
                                i25 = i22 & (-57345);
                            } else {
                                Modifier modifier6 = modifier2;
                                i24 = i23;
                                modifier4 = modifier6;
                                f5 = fM3122getSheetMaxWidthD9Ej5fM;
                                i25 = i22;
                                j6 = containerColor;
                                shape3 = expandedShape;
                                bm3Var5 = bm3Var2;
                            }
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            int i30 = (i3 & 32) != 0 ? i14 & (-3670017) : i14;
                            if ((i3 & 256) != 0) {
                                i30 &= -1879048193;
                            }
                            if ((i3 & 512) != 0) {
                                i22 &= -15;
                            }
                            if ((i3 & 1024) != 0) {
                                i22 &= -113;
                            }
                            if ((i3 & 8192) != 0) {
                                i22 &= -57345;
                            }
                            Modifier modifier7 = modifier2;
                            i24 = i30;
                            modifier4 = modifier7;
                            z4 = z;
                            fM3120getElevationD9Ej5fM = f2;
                            lambda$1716959002$material3 = bm3Var;
                            bm3Var5 = bm3Var2;
                            jM3275contentColorForek8zF_U = j3;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            i25 = i22;
                            shape3 = shape;
                            j6 = j;
                        }
                        composerStartRestartGroup.endDefaults();
                        float f6 = fM3120getElevationD9Ej5fM;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
                        }
                        Strings.Companion companion = Strings.Companion;
                        strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
                        Modifier modifier8 = modifier4;
                        int i31 = i25;
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
                        if (z4) {
                            composerStartRestartGroup.startReplaceGroup(-1582035383);
                            Modifier.Companion companion2 = Modifier.Companion;
                            z12 = (((i24 & 3670016) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) || (i24 & 1572864) == 1048576;
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (z12 || objRememberedValue5 == Composer.Companion.getEmpty()) {
                                objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion2, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-1582020872);
                            composerStartRestartGroup.endReplaceGroup();
                            modifierNestedScroll$default = Modifier.Companion;
                        }
                        Modifier modifierThen = modifierFillMaxWidth$default.then(modifierNestedScroll$default);
                        AnchoredDraggableState<SheetValue> anchoredDraggableState$material3 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
                        Orientation orientation = Orientation.Vertical;
                        i26 = (i24 & 3670016) ^ 1572864;
                        if (i26 > 1048576 || !composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) {
                            j7 = j6;
                            if ((i24 & 1572864) != 1048576) {
                                z5 = false;
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z5 || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new bm3() { // from class: ub5
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDraggableAnchors = AnchoredDraggableKt.draggableAnchors(modifierThen, anchoredDraggableState$material3, orientation, (bm3) objRememberedValue);
                            DraggableState draggableState$material3 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                            if (z4 || !sheetStateRememberModalBottomSheetState.isVisible()) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                            boolean zIsAnimationRunning = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                            if ((i24 & 57344) == 16384) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z7 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierDraggable$default = DraggableKt.draggable$default(modifierDraggableAnchors, draggableState$material3, orientation, z6, null, zIsAnimationRunning, null, (dm3) objRememberedValue2, false, 168, null);
                            zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (!zChanged || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                z8 = false;
                                objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            } else {
                                z8 = false;
                            }
                            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifierDraggable$default, z8, (nl3) objRememberedValue3, 1, null);
                            offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                            r6 = offset$material3;
                            if (offset$material3 < 0) {
                                r6 = z8;
                            }
                            Modifier modifierConsumeWindowInsets = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                            boolean z13 = ((i26 > 1048576 || !composerStartRestartGroup.changed(sheetStateRememberModalBottomSheetState)) && (i24 & 1572864) != 1048576) ? z8 : true;
                            if ((i24 & 112) != 32 || ((i24 & 64) != 0 && composerStartRestartGroup.changedInstance(animatable))) {
                                z9 = true;
                            } else {
                                z9 = z8;
                            }
                            z10 = z13 | z9;
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (z10 == 0 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                                z11 = true;
                                objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            } else {
                                z11 = true;
                            }
                            Modifier modifierVerticalScaleUp = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                            SheetState sheetState3 = sheetStateRememberModalBottomSheetState;
                            boolean z14 = z4;
                            bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var6 = bm3Var5;
                            bm3<? super Composer, ? super Integer, j59> bm3Var7 = lambda$1716959002$material3;
                            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var6, animatable, sheetState3, bm3Var7, dm3Var, ll3Var, y22Var2, z14), composerStartRestartGroup, 54);
                            int i32 = i31 << 6;
                            Shape shape5 = shape3;
                            long j8 = jM3275contentColorForek8zF_U;
                            SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp, shape5, j7, j8, f6, 0.0f, null, composableLambdaRememberComposableLambda, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i32 & 896) | (i32 & 7168) | (57344 & i32), 96);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            z3 = z14;
                            sheetState2 = sheetState3;
                            bm3Var3 = bm3Var7;
                            shape2 = shape5;
                            f4 = f6;
                            composer2 = composerStartRestartGroup;
                            f3 = f5;
                            bm3Var4 = bm3Var6;
                            j4 = j8;
                            modifier3 = modifier8;
                            j5 = j7;
                        } else {
                            j7 = j6;
                        }
                        z5 = true;
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue = new bm3() { // from class: ub5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = new bm3() { // from class: ub5
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDraggableAnchors2 = AnchoredDraggableKt.draggableAnchors(modifierThen, anchoredDraggableState$material3, orientation, (bm3) objRememberedValue);
                        DraggableState draggableState$material4 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                        if (z4) {
                            z6 = false;
                        } else {
                            z6 = false;
                        }
                        boolean zIsAnimationRunning2 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                        if ((i24 & 57344) == 16384) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z7) {
                            objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierDraggable$default2 = DraggableKt.draggable$default(modifierDraggableAnchors2, draggableState$material4, orientation, z6, null, zIsAnimationRunning2, null, (dm3) objRememberedValue2, false, 168, null);
                        zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            z8 = false;
                            objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            z8 = false;
                            objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        Modifier modifierSemantics$default2 = SemanticsModifierKt.semantics$default(modifierDraggable$default2, z8, (nl3) objRememberedValue3, 1, null);
                        offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                        r6 = offset$material3;
                        if (offset$material3 < 0) {
                            r6 = z8;
                        }
                        Modifier modifierConsumeWindowInsets2 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default2, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                        if (i26 > 1048576) {
                        }
                        if ((i24 & 112) != 32) {
                            z9 = true;
                        } else {
                            z9 = true;
                        }
                        z10 = z13 | z9;
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (z10 == 0) {
                            z11 = true;
                            objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        } else {
                            z11 = true;
                            objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        Modifier modifierVerticalScaleUp2 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets2, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                        SheetState sheetState4 = sheetStateRememberModalBottomSheetState;
                        boolean z15 = z4;
                        bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var8 = bm3Var5;
                        bm3<? super Composer, ? super Integer, j59> bm3Var9 = lambda$1716959002$material3;
                        ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var8, animatable, sheetState4, bm3Var9, dm3Var, ll3Var, y22Var2, z15), composerStartRestartGroup, 54);
                        int i33 = i31 << 6;
                        Shape shape6 = shape3;
                        long j9 = jM3275contentColorForek8zF_U;
                        SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp2, shape6, j7, j9, f6, 0.0f, null, composableLambdaRememberComposableLambda2, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i33 & 896) | (i33 & 7168) | (57344 & i33), 96);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        z3 = z15;
                        sheetState2 = sheetState4;
                        bm3Var3 = bm3Var9;
                        shape2 = shape6;
                        f4 = f6;
                        composer2 = composerStartRestartGroup;
                        f3 = f5;
                        bm3Var4 = bm3Var8;
                        j4 = j9;
                        modifier3 = modifier8;
                        j5 = j7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z3 = z;
                        j4 = j2;
                        bm3Var3 = bm3Var;
                        f3 = fM3122getSheetMaxWidthD9Ej5fM;
                        sheetState2 = sheetStateRememberModalBottomSheetState;
                        modifier3 = modifier2;
                        composer2 = composerStartRestartGroup;
                        shape2 = shape;
                        j5 = j;
                        f4 = f2;
                        bm3Var4 = bm3Var2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i22 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 32) != 0) {
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            i23 = i14 & (-3670017);
                        }
                        if (i10 != 0) {
                            i23 = i14;
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if (i12 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if ((i3 & 256) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i23 &= -1879048193;
                        } else {
                            expandedShape = shape;
                        }
                        if ((i3 & 512) != 0) {
                            i22 &= -15;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 1024) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                            i22 &= -113;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i17 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f2;
                        }
                        if (i20 != 0) {
                            lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                        } else {
                            lambda$1716959002$material3 = bm3Var;
                        }
                        if ((i3 & 8192) != 0) {
                            Modifier modifier9 = modifier2;
                            i24 = i23;
                            modifier4 = modifier9;
                            Shape shape7 = expandedShape;
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                                public final WindowInsets invoke(Composer composer3, int i34) {
                                    composer3.startReplaceGroup(1023699493);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1023699493, i34, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            j6 = containerColor;
                            shape3 = shape7;
                            i25 = i22 & (-57345);
                        } else {
                            Modifier modifier10 = modifier2;
                            i24 = i23;
                            modifier4 = modifier10;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            i25 = i22;
                            j6 = containerColor;
                            shape3 = expandedShape;
                            bm3Var5 = bm3Var2;
                        }
                    } else {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 32) != 0) {
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            i23 = i14 & (-3670017);
                        }
                        if (i10 != 0) {
                            i23 = i14;
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if (i12 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if ((i3 & 256) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i23 &= -1879048193;
                        } else {
                            expandedShape = shape;
                        }
                        if ((i3 & 512) != 0) {
                            i22 &= -15;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 1024) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                            i22 &= -113;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i17 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f2;
                        }
                        if (i20 != 0) {
                            lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                        } else {
                            lambda$1716959002$material3 = bm3Var;
                        }
                        if ((i3 & 8192) != 0) {
                            Modifier modifier11 = modifier2;
                            i24 = i23;
                            modifier4 = modifier11;
                            Shape shape8 = expandedShape;
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                                public final WindowInsets invoke(Composer composer3, int i34) {
                                    composer3.startReplaceGroup(1023699493);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1023699493, i34, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            j6 = containerColor;
                            shape3 = shape8;
                            i25 = i22 & (-57345);
                        } else {
                            Modifier modifier12 = modifier2;
                            i24 = i23;
                            modifier4 = modifier12;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            i25 = i22;
                            j6 = containerColor;
                            shape3 = expandedShape;
                            bm3Var5 = bm3Var2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    float f7 = fM3120getElevationD9Ej5fM;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
                    }
                    Strings.Companion companion3 = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
                    Modifier modifier13 = modifier4;
                    int i34 = i25;
                    Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
                    if (z4) {
                        composerStartRestartGroup.startReplaceGroup(-1582035383);
                        Modifier.Companion companion4 = Modifier.Companion;
                        if (((i24 & 3670016) ^ 1572864) <= 1048576) {
                        }
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (z12) {
                            objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion4, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1582020872);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierNestedScroll$default = Modifier.Companion;
                    }
                    Modifier modifierThen2 = modifierFillMaxWidth$default2.then(modifierNestedScroll$default);
                    AnchoredDraggableState<SheetValue> anchoredDraggableState$material4 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
                    Orientation orientation2 = Orientation.Vertical;
                    i26 = (i24 & 3670016) ^ 1572864;
                    if (i26 > 1048576) {
                        j7 = j6;
                        if ((i24 & 1572864) != 1048576) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                    } else {
                        j7 = j6;
                        if ((i24 & 1572864) != 1048576) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue = new bm3() { // from class: ub5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: ub5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchors3 = AnchoredDraggableKt.draggableAnchors(modifierThen2, anchoredDraggableState$material4, orientation2, (bm3) objRememberedValue);
                    DraggableState draggableState$material5 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                    if (z4) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    boolean zIsAnimationRunning3 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                    if ((i24 & 57344) == 16384) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierDraggable$default3 = DraggableKt.draggable$default(modifierDraggableAnchors3, draggableState$material5, orientation2, z6, null, zIsAnimationRunning3, null, (dm3) objRememberedValue2, false, 168, null);
                    zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z8 = false;
                        objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        z8 = false;
                        objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    Modifier modifierSemantics$default3 = SemanticsModifierKt.semantics$default(modifierDraggable$default3, z8, (nl3) objRememberedValue3, 1, null);
                    offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                    r6 = offset$material3;
                    if (offset$material3 < 0) {
                        r6 = z8;
                    }
                    Modifier modifierConsumeWindowInsets3 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default3, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                    if (i26 > 1048576) {
                    }
                    if ((i24 & 112) != 32) {
                        z9 = true;
                    } else {
                        z9 = true;
                    }
                    z10 = z13 | z9;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z10 == 0) {
                        z11 = true;
                        objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        z11 = true;
                        objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    Modifier modifierVerticalScaleUp3 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets3, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                    SheetState sheetState5 = sheetStateRememberModalBottomSheetState;
                    boolean z16 = z4;
                    bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var10 = bm3Var5;
                    bm3<? super Composer, ? super Integer, j59> bm3Var11 = lambda$1716959002$material3;
                    ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var10, animatable, sheetState5, bm3Var11, dm3Var, ll3Var, y22Var2, z16), composerStartRestartGroup, 54);
                    int i35 = i34 << 6;
                    Shape shape9 = shape3;
                    long j10 = jM3275contentColorForek8zF_U;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp3, shape9, j7, j10, f7, 0.0f, null, composableLambdaRememberComposableLambda3, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i35 & 896) | (i35 & 7168) | (57344 & i35), 96);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z3 = z16;
                    sheetState2 = sheetState5;
                    bm3Var3 = bm3Var11;
                    shape2 = shape9;
                    f4 = f7;
                    composer2 = composerStartRestartGroup;
                    f3 = f5;
                    bm3Var4 = bm3Var10;
                    j4 = j10;
                    modifier3 = modifier13;
                    j5 = j7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z3 = z;
                    j4 = j2;
                    bm3Var3 = bm3Var;
                    f3 = fM3122getSheetMaxWidthD9Ej5fM;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    modifier3 = modifier2;
                    composer2 = composerStartRestartGroup;
                    shape2 = shape;
                    j5 = j;
                    f4 = f2;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            i6 = 8192;
            if ((i3 & 8) != 0) {
                i4 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            i8 = i3 & 16;
            if (i8 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                modifier2 = modifier;
            } else {
                modifier2 = modifier;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i4 |= i9;
                }
            }
            if ((i & 1572864) == 0) {
                sheetStateRememberModalBottomSheetState = sheetState;
                if ((i3 & 32) == 0) {
                    i28 = 524288;
                } else {
                    i28 = 524288;
                }
                i4 |= i28;
            } else {
                sheetStateRememberModalBottomSheetState = sheetState;
            }
            i10 = i3 & 64;
            if (i10 != 0) {
                i4 |= 12582912;
                fM3122getSheetMaxWidthD9Ej5fM = f;
            } else {
                fM3122getSheetMaxWidthD9Ej5fM = f;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i4 |= i11;
                }
            }
            i12 = i3 & 128;
            if (i12 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i13;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(shape)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if ((i3 & 512) == 0) {
                    i14 = i4;
                    if (composerStartRestartGroup.changed(j)) {
                    }
                    i15 = i2 | i29;
                } else {
                    i14 = i4;
                }
                i15 = i2 | i29;
            } else {
                i14 = i4;
                i15 = i2;
            }
            if ((i2 & 48) == 0) {
                j3 = j2;
                if ((i3 & 1024) == 0) {
                    i27 = 16;
                } else {
                    i27 = 16;
                }
                i15 |= i27;
            } else {
                j3 = j2;
            }
            i16 = i15;
            i17 = i3 & 2048;
            if (i17 != 0) {
                i18 = i16 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i18 = i16 | i19;
            } else {
                i18 = i16;
            }
            i20 = i3 & 4096;
            if (i20 != 0) {
                i22 = i18 | 3072;
            } else {
                i21 = i18;
                if ((i2 & 3072) == 0) {
                    i22 = i21 | (composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024);
                } else {
                    i22 = i21;
                }
            }
            if ((i2 & 24576) != 0) {
                if ((i3 & 8192) == 0) {
                    i6 = 16384;
                }
                i22 |= i6;
            }
            if ((i3 & 16384) != 0) {
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i22 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 32) != 0) {
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            i23 = i14 & (-3670017);
                        }
                        if (i10 != 0) {
                            i23 = i14;
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if (i12 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if ((i3 & 256) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i23 &= -1879048193;
                        } else {
                            expandedShape = shape;
                        }
                        if ((i3 & 512) != 0) {
                            i22 &= -15;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 1024) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                            i22 &= -113;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i17 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f2;
                        }
                        if (i20 != 0) {
                            lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                        } else {
                            lambda$1716959002$material3 = bm3Var;
                        }
                        if ((i3 & 8192) != 0) {
                            Modifier modifier14 = modifier2;
                            i24 = i23;
                            modifier4 = modifier14;
                            Shape shape10 = expandedShape;
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                                public final WindowInsets invoke(Composer composer3, int i36) {
                                    composer3.startReplaceGroup(1023699493);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1023699493, i36, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            j6 = containerColor;
                            shape3 = shape10;
                            i25 = i22 & (-57345);
                        } else {
                            Modifier modifier15 = modifier2;
                            i24 = i23;
                            modifier4 = modifier15;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            i25 = i22;
                            j6 = containerColor;
                            shape3 = expandedShape;
                            bm3Var5 = bm3Var2;
                        }
                    } else {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 32) != 0) {
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            i23 = i14 & (-3670017);
                        }
                        if (i10 != 0) {
                            i23 = i14;
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if (i12 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if ((i3 & 256) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i23 &= -1879048193;
                        } else {
                            expandedShape = shape;
                        }
                        if ((i3 & 512) != 0) {
                            i22 &= -15;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 1024) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                            i22 &= -113;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i17 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f2;
                        }
                        if (i20 != 0) {
                            lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                        } else {
                            lambda$1716959002$material3 = bm3Var;
                        }
                        if ((i3 & 8192) != 0) {
                            Modifier modifier16 = modifier2;
                            i24 = i23;
                            modifier4 = modifier16;
                            Shape shape11 = expandedShape;
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                                public final WindowInsets invoke(Composer composer3, int i36) {
                                    composer3.startReplaceGroup(1023699493);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1023699493, i36, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            j6 = containerColor;
                            shape3 = shape11;
                            i25 = i22 & (-57345);
                        } else {
                            Modifier modifier17 = modifier2;
                            i24 = i23;
                            modifier4 = modifier17;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            i25 = i22;
                            j6 = containerColor;
                            shape3 = expandedShape;
                            bm3Var5 = bm3Var2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    float f8 = fM3120getElevationD9Ej5fM;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
                    }
                    Strings.Companion companion5 = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
                    Modifier modifier18 = modifier4;
                    int i36 = i25;
                    Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
                    if (z4) {
                        composerStartRestartGroup.startReplaceGroup(-1582035383);
                        Modifier.Companion companion6 = Modifier.Companion;
                        if (((i24 & 3670016) ^ 1572864) <= 1048576) {
                        }
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (z12) {
                            objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion6, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1582020872);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierNestedScroll$default = Modifier.Companion;
                    }
                    Modifier modifierThen3 = modifierFillMaxWidth$default3.then(modifierNestedScroll$default);
                    AnchoredDraggableState<SheetValue> anchoredDraggableState$material5 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
                    Orientation orientation3 = Orientation.Vertical;
                    i26 = (i24 & 3670016) ^ 1572864;
                    if (i26 > 1048576) {
                        j7 = j6;
                        if ((i24 & 1572864) != 1048576) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                    } else {
                        j7 = j6;
                        if ((i24 & 1572864) != 1048576) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue = new bm3() { // from class: ub5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: ub5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchors4 = AnchoredDraggableKt.draggableAnchors(modifierThen3, anchoredDraggableState$material5, orientation3, (bm3) objRememberedValue);
                    DraggableState draggableState$material6 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                    if (z4) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    boolean zIsAnimationRunning4 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                    if ((i24 & 57344) == 16384) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierDraggable$default4 = DraggableKt.draggable$default(modifierDraggableAnchors4, draggableState$material6, orientation3, z6, null, zIsAnimationRunning4, null, (dm3) objRememberedValue2, false, 168, null);
                    zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z8 = false;
                        objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        z8 = false;
                        objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    Modifier modifierSemantics$default4 = SemanticsModifierKt.semantics$default(modifierDraggable$default4, z8, (nl3) objRememberedValue3, 1, null);
                    offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                    r6 = offset$material3;
                    if (offset$material3 < 0) {
                        r6 = z8;
                    }
                    Modifier modifierConsumeWindowInsets4 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default4, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                    if (i26 > 1048576) {
                    }
                    if ((i24 & 112) != 32) {
                        z9 = true;
                    } else {
                        z9 = true;
                    }
                    z10 = z13 | z9;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z10 == 0) {
                        z11 = true;
                        objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        z11 = true;
                        objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    Modifier modifierVerticalScaleUp4 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets4, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                    SheetState sheetState6 = sheetStateRememberModalBottomSheetState;
                    boolean z17 = z4;
                    bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var12 = bm3Var5;
                    bm3<? super Composer, ? super Integer, j59> bm3Var13 = lambda$1716959002$material3;
                    ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var12, animatable, sheetState6, bm3Var13, dm3Var, ll3Var, y22Var2, z17), composerStartRestartGroup, 54);
                    int i37 = i36 << 6;
                    Shape shape12 = shape3;
                    long j11 = jM3275contentColorForek8zF_U;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp4, shape12, j7, j11, f8, 0.0f, null, composableLambdaRememberComposableLambda4, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i37 & 896) | (i37 & 7168) | (57344 & i37), 96);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z3 = z17;
                    sheetState2 = sheetState6;
                    bm3Var3 = bm3Var13;
                    shape2 = shape12;
                    f4 = f8;
                    composer2 = composerStartRestartGroup;
                    f3 = f5;
                    bm3Var4 = bm3Var12;
                    j4 = j11;
                    modifier3 = modifier18;
                    j5 = j7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z3 = z;
                    j4 = j2;
                    bm3Var3 = bm3Var;
                    f3 = fM3122getSheetMaxWidthD9Ej5fM;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    modifier3 = modifier2;
                    composer2 = composerStartRestartGroup;
                    shape2 = shape;
                    j5 = j;
                    f4 = f2;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i22 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 32) != 0) {
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        i23 = i14 & (-3670017);
                    }
                    if (i10 != 0) {
                        i23 = i14;
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if (i12 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if ((i3 & 256) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i23 &= -1879048193;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i3 & 512) != 0) {
                        i22 &= -15;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 1024) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                        i22 &= -113;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i17 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f2;
                    }
                    if (i20 != 0) {
                        lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                    } else {
                        lambda$1716959002$material3 = bm3Var;
                    }
                    if ((i3 & 8192) != 0) {
                        Modifier modifier19 = modifier2;
                        i24 = i23;
                        modifier4 = modifier19;
                        Shape shape13 = expandedShape;
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                            public final WindowInsets invoke(Composer composer3, int i38) {
                                composer3.startReplaceGroup(1023699493);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1023699493, i38, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j6 = containerColor;
                        shape3 = shape13;
                        i25 = i22 & (-57345);
                    } else {
                        Modifier modifier110 = modifier2;
                        i24 = i23;
                        modifier4 = modifier110;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        i25 = i22;
                        j6 = containerColor;
                        shape3 = expandedShape;
                        bm3Var5 = bm3Var2;
                    }
                } else {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 32) != 0) {
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        i23 = i14 & (-3670017);
                    }
                    if (i10 != 0) {
                        i23 = i14;
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if (i12 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if ((i3 & 256) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i23 &= -1879048193;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i3 & 512) != 0) {
                        i22 &= -15;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 1024) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                        i22 &= -113;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i17 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f2;
                    }
                    if (i20 != 0) {
                        lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                    } else {
                        lambda$1716959002$material3 = bm3Var;
                    }
                    if ((i3 & 8192) != 0) {
                        Modifier modifier111 = modifier2;
                        i24 = i23;
                        modifier4 = modifier111;
                        Shape shape14 = expandedShape;
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                            public final WindowInsets invoke(Composer composer3, int i38) {
                                composer3.startReplaceGroup(1023699493);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1023699493, i38, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j6 = containerColor;
                        shape3 = shape14;
                        i25 = i22 & (-57345);
                    } else {
                        Modifier modifier112 = modifier2;
                        i24 = i23;
                        modifier4 = modifier112;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        i25 = i22;
                        j6 = containerColor;
                        shape3 = expandedShape;
                        bm3Var5 = bm3Var2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                float f9 = fM3120getElevationD9Ej5fM;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
                }
                Strings.Companion companion7 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
                Modifier modifier113 = modifier4;
                int i38 = i25;
                Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
                if (z4) {
                    composerStartRestartGroup.startReplaceGroup(-1582035383);
                    Modifier.Companion companion8 = Modifier.Companion;
                    if (((i24 & 3670016) ^ 1572864) <= 1048576) {
                    }
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion8, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1582020872);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierNestedScroll$default = Modifier.Companion;
                }
                Modifier modifierThen4 = modifierFillMaxWidth$default4.then(modifierNestedScroll$default);
                AnchoredDraggableState<SheetValue> anchoredDraggableState$material6 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
                Orientation orientation4 = Orientation.Vertical;
                i26 = (i24 & 3670016) ^ 1572864;
                if (i26 > 1048576) {
                    j7 = j6;
                    if ((i24 & 1572864) != 1048576) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                } else {
                    j7 = j6;
                    if ((i24 & 1572864) != 1048576) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue = new bm3() { // from class: ub5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: ub5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchors5 = AnchoredDraggableKt.draggableAnchors(modifierThen4, anchoredDraggableState$material6, orientation4, (bm3) objRememberedValue);
                DraggableState draggableState$material7 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                if (z4) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                boolean zIsAnimationRunning5 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                if ((i24 & 57344) == 16384) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierDraggable$default5 = DraggableKt.draggable$default(modifierDraggableAnchors5, draggableState$material7, orientation4, z6, null, zIsAnimationRunning5, null, (dm3) objRememberedValue2, false, 168, null);
                zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z8 = false;
                    objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    z8 = false;
                    objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifierSemantics$default5 = SemanticsModifierKt.semantics$default(modifierDraggable$default5, z8, (nl3) objRememberedValue3, 1, null);
                offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                r6 = offset$material3;
                if (offset$material3 < 0) {
                    r6 = z8;
                }
                Modifier modifierConsumeWindowInsets5 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default5, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                if (i26 > 1048576) {
                }
                if ((i24 & 112) != 32) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                z10 = z13 | z9;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z10 == 0) {
                    z11 = true;
                    objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    z11 = true;
                    objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                Modifier modifierVerticalScaleUp5 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets5, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                SheetState sheetState7 = sheetStateRememberModalBottomSheetState;
                boolean z18 = z4;
                bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var14 = bm3Var5;
                bm3<? super Composer, ? super Integer, j59> bm3Var15 = lambda$1716959002$material3;
                ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var14, animatable, sheetState7, bm3Var15, dm3Var, ll3Var, y22Var2, z18), composerStartRestartGroup, 54);
                int i39 = i38 << 6;
                Shape shape15 = shape3;
                long j12 = jM3275contentColorForek8zF_U;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp5, shape15, j7, j12, f9, 0.0f, null, composableLambdaRememberComposableLambda5, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i39 & 896) | (i39 & 7168) | (57344 & i39), 96);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z3 = z18;
                sheetState2 = sheetState7;
                bm3Var3 = bm3Var15;
                shape2 = shape15;
                f4 = f9;
                composer2 = composerStartRestartGroup;
                f3 = f5;
                bm3Var4 = bm3Var14;
                j4 = j12;
                modifier3 = modifier113;
                j5 = j7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z3 = z;
                j4 = j2;
                bm3Var3 = bm3Var;
                f3 = fM3122getSheetMaxWidthD9Ej5fM;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                modifier3 = modifier2;
                composer2 = composerStartRestartGroup;
                shape2 = shape;
                j5 = j;
                f4 = f2;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        y22Var2 = y22Var;
        if ((i3 & 4) != 0) {
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(ll3Var)) {
                    i5 = 2048;
                } else {
                    i5 = 1024;
                }
                i4 |= i5;
            }
            i6 = 8192;
            if ((i3 & 8) != 0) {
                i4 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i4 |= i7;
            }
            i8 = i3 & 16;
            if (i8 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                modifier2 = modifier;
            } else {
                modifier2 = modifier;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i4 |= i9;
                }
            }
            if ((i & 1572864) == 0) {
                sheetStateRememberModalBottomSheetState = sheetState;
                if ((i3 & 32) == 0) {
                    i28 = 524288;
                } else {
                    i28 = 524288;
                }
                i4 |= i28;
            } else {
                sheetStateRememberModalBottomSheetState = sheetState;
            }
            i10 = i3 & 64;
            if (i10 != 0) {
                i4 |= 12582912;
                fM3122getSheetMaxWidthD9Ej5fM = f;
            } else {
                fM3122getSheetMaxWidthD9Ej5fM = f;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i4 |= i11;
                }
            }
            i12 = i3 & 128;
            if (i12 != 0) {
                i4 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i13 = 67108864;
                } else {
                    i13 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i13;
            }
            if ((i & 805306368) != 0) {
                i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(shape)) ? 268435456 : 536870912;
            }
            if ((i2 & 6) == 0) {
                if ((i3 & 512) == 0) {
                    i14 = i4;
                    if (composerStartRestartGroup.changed(j)) {
                    }
                    i15 = i2 | i29;
                } else {
                    i14 = i4;
                }
                i15 = i2 | i29;
            } else {
                i14 = i4;
                i15 = i2;
            }
            if ((i2 & 48) == 0) {
                j3 = j2;
                if ((i3 & 1024) == 0) {
                    i27 = 16;
                } else {
                    i27 = 16;
                }
                i15 |= i27;
            } else {
                j3 = j2;
            }
            i16 = i15;
            i17 = i3 & 2048;
            if (i17 != 0) {
                i18 = i16 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i18 = i16 | i19;
            } else {
                i18 = i16;
            }
            i20 = i3 & 4096;
            if (i20 != 0) {
                i22 = i18 | 3072;
            } else {
                i21 = i18;
                if ((i2 & 3072) == 0) {
                    i22 = i21 | (composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024);
                } else {
                    i22 = i21;
                }
            }
            if ((i2 & 24576) != 0) {
                if ((i3 & 8192) == 0) {
                    i6 = 16384;
                }
                i22 |= i6;
            }
            if ((i3 & 16384) != 0) {
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    i22 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 32) != 0) {
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            i23 = i14 & (-3670017);
                        }
                        if (i10 != 0) {
                            i23 = i14;
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if (i12 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if ((i3 & 256) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i23 &= -1879048193;
                        } else {
                            expandedShape = shape;
                        }
                        if ((i3 & 512) != 0) {
                            i22 &= -15;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 1024) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                            i22 &= -113;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i17 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f2;
                        }
                        if (i20 != 0) {
                            lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                        } else {
                            lambda$1716959002$material3 = bm3Var;
                        }
                        if ((i3 & 8192) != 0) {
                            Modifier modifier114 = modifier2;
                            i24 = i23;
                            modifier4 = modifier114;
                            Shape shape16 = expandedShape;
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                                public final WindowInsets invoke(Composer composer3, int i310) {
                                    composer3.startReplaceGroup(1023699493);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1023699493, i310, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            j6 = containerColor;
                            shape3 = shape16;
                            i25 = i22 & (-57345);
                        } else {
                            Modifier modifier115 = modifier2;
                            i24 = i23;
                            modifier4 = modifier115;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            i25 = i22;
                            j6 = containerColor;
                            shape3 = expandedShape;
                            bm3Var5 = bm3Var2;
                        }
                    } else {
                        if (i8 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i3 & 32) != 0) {
                            sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                            i23 = i14 & (-3670017);
                        }
                        if (i10 != 0) {
                            i23 = i14;
                            fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                        }
                        if (i12 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if ((i3 & 256) != 0) {
                            expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                            i23 &= -1879048193;
                        } else {
                            expandedShape = shape;
                        }
                        if ((i3 & 512) != 0) {
                            i22 &= -15;
                            containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                        } else {
                            containerColor = j;
                        }
                        if ((i3 & 1024) != 0) {
                            jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                            i22 &= -113;
                        } else {
                            jM3275contentColorForek8zF_U = j2;
                        }
                        if (i17 != 0) {
                            fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                        } else {
                            fM3120getElevationD9Ej5fM = f2;
                        }
                        if (i20 != 0) {
                            lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                        } else {
                            lambda$1716959002$material3 = bm3Var;
                        }
                        if ((i3 & 8192) != 0) {
                            Modifier modifier116 = modifier2;
                            i24 = i23;
                            modifier4 = modifier116;
                            Shape shape17 = expandedShape;
                            bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                                public final WindowInsets invoke(Composer composer3, int i310) {
                                    composer3.startReplaceGroup(1023699493);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1023699493, i310, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                    }
                                    WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    composer3.endReplaceGroup();
                                    return windowInsets;
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                    return invoke(composer3, num.intValue());
                                }
                            };
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            j6 = containerColor;
                            shape3 = shape17;
                            i25 = i22 & (-57345);
                        } else {
                            Modifier modifier117 = modifier2;
                            i24 = i23;
                            modifier4 = modifier117;
                            f5 = fM3122getSheetMaxWidthD9Ej5fM;
                            i25 = i22;
                            j6 = containerColor;
                            shape3 = expandedShape;
                            bm3Var5 = bm3Var2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    float f10 = fM3120getElevationD9Ej5fM;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
                    }
                    Strings.Companion companion9 = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
                    Modifier modifier118 = modifier4;
                    int i310 = i25;
                    Modifier modifierFillMaxWidth$default5 = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
                    if (z4) {
                        composerStartRestartGroup.startReplaceGroup(-1582035383);
                        Modifier.Companion companion10 = Modifier.Companion;
                        if (((i24 & 3670016) ^ 1572864) <= 1048576) {
                        }
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (z12) {
                            objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        }
                        modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion10, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-1582020872);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierNestedScroll$default = Modifier.Companion;
                    }
                    Modifier modifierThen5 = modifierFillMaxWidth$default5.then(modifierNestedScroll$default);
                    AnchoredDraggableState<SheetValue> anchoredDraggableState$material7 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
                    Orientation orientation5 = Orientation.Vertical;
                    i26 = (i24 & 3670016) ^ 1572864;
                    if (i26 > 1048576) {
                        j7 = j6;
                        if ((i24 & 1572864) != 1048576) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                    } else {
                        j7 = j6;
                        if ((i24 & 1572864) != 1048576) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue = new bm3() { // from class: ub5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = new bm3() { // from class: ub5
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDraggableAnchors6 = AnchoredDraggableKt.draggableAnchors(modifierThen5, anchoredDraggableState$material7, orientation5, (bm3) objRememberedValue);
                    DraggableState draggableState$material8 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                    if (z4) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    boolean zIsAnimationRunning6 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                    if ((i24 & 57344) == 16384) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z7) {
                        objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierDraggable$default6 = DraggableKt.draggable$default(modifierDraggableAnchors6, draggableState$material8, orientation5, z6, null, zIsAnimationRunning6, null, (dm3) objRememberedValue2, false, 168, null);
                    zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        z8 = false;
                        objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        z8 = false;
                        objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    Modifier modifierSemantics$default6 = SemanticsModifierKt.semantics$default(modifierDraggable$default6, z8, (nl3) objRememberedValue3, 1, null);
                    offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                    r6 = offset$material3;
                    if (offset$material3 < 0) {
                        r6 = z8;
                    }
                    Modifier modifierConsumeWindowInsets6 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default6, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                    if (i26 > 1048576) {
                    }
                    if ((i24 & 112) != 32) {
                        z9 = true;
                    } else {
                        z9 = true;
                    }
                    z10 = z13 | z9;
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (z10 == 0) {
                        z11 = true;
                        objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    } else {
                        z11 = true;
                        objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    Modifier modifierVerticalScaleUp6 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets6, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                    SheetState sheetState8 = sheetStateRememberModalBottomSheetState;
                    boolean z19 = z4;
                    bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var16 = bm3Var5;
                    bm3<? super Composer, ? super Integer, j59> bm3Var17 = lambda$1716959002$material3;
                    ComposableLambda composableLambdaRememberComposableLambda6 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var16, animatable, sheetState8, bm3Var17, dm3Var, ll3Var, y22Var2, z19), composerStartRestartGroup, 54);
                    int i311 = i310 << 6;
                    Shape shape18 = shape3;
                    long j13 = jM3275contentColorForek8zF_U;
                    SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp6, shape18, j7, j13, f10, 0.0f, null, composableLambdaRememberComposableLambda6, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i311 & 896) | (i311 & 7168) | (57344 & i311), 96);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    z3 = z19;
                    sheetState2 = sheetState8;
                    bm3Var3 = bm3Var17;
                    shape2 = shape18;
                    f4 = f10;
                    composer2 = composerStartRestartGroup;
                    f3 = f5;
                    bm3Var4 = bm3Var16;
                    j4 = j13;
                    modifier3 = modifier118;
                    j5 = j7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z3 = z;
                    j4 = j2;
                    bm3Var3 = bm3Var;
                    f3 = fM3122getSheetMaxWidthD9Ej5fM;
                    sheetState2 = sheetStateRememberModalBottomSheetState;
                    modifier3 = modifier2;
                    composer2 = composerStartRestartGroup;
                    shape2 = shape;
                    j5 = j;
                    f4 = f2;
                    bm3Var4 = bm3Var2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i22 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 32) != 0) {
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        i23 = i14 & (-3670017);
                    }
                    if (i10 != 0) {
                        i23 = i14;
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if (i12 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if ((i3 & 256) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i23 &= -1879048193;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i3 & 512) != 0) {
                        i22 &= -15;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 1024) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                        i22 &= -113;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i17 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f2;
                    }
                    if (i20 != 0) {
                        lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                    } else {
                        lambda$1716959002$material3 = bm3Var;
                    }
                    if ((i3 & 8192) != 0) {
                        Modifier modifier119 = modifier2;
                        i24 = i23;
                        modifier4 = modifier119;
                        Shape shape19 = expandedShape;
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                            public final WindowInsets invoke(Composer composer3, int i312) {
                                composer3.startReplaceGroup(1023699493);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1023699493, i312, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j6 = containerColor;
                        shape3 = shape19;
                        i25 = i22 & (-57345);
                    } else {
                        Modifier modifier1110 = modifier2;
                        i24 = i23;
                        modifier4 = modifier1110;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        i25 = i22;
                        j6 = containerColor;
                        shape3 = expandedShape;
                        bm3Var5 = bm3Var2;
                    }
                } else {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 32) != 0) {
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        i23 = i14 & (-3670017);
                    }
                    if (i10 != 0) {
                        i23 = i14;
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if (i12 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if ((i3 & 256) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i23 &= -1879048193;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i3 & 512) != 0) {
                        i22 &= -15;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 1024) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                        i22 &= -113;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i17 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f2;
                    }
                    if (i20 != 0) {
                        lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                    } else {
                        lambda$1716959002$material3 = bm3Var;
                    }
                    if ((i3 & 8192) != 0) {
                        Modifier modifier1111 = modifier2;
                        i24 = i23;
                        modifier4 = modifier1111;
                        Shape shape110 = expandedShape;
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                            public final WindowInsets invoke(Composer composer3, int i312) {
                                composer3.startReplaceGroup(1023699493);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1023699493, i312, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j6 = containerColor;
                        shape3 = shape110;
                        i25 = i22 & (-57345);
                    } else {
                        Modifier modifier1112 = modifier2;
                        i24 = i23;
                        modifier4 = modifier1112;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        i25 = i22;
                        j6 = containerColor;
                        shape3 = expandedShape;
                        bm3Var5 = bm3Var2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                float f11 = fM3120getElevationD9Ej5fM;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
                }
                Strings.Companion companion11 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
                Modifier modifier1113 = modifier4;
                int i312 = i25;
                Modifier modifierFillMaxWidth$default6 = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
                if (z4) {
                    composerStartRestartGroup.startReplaceGroup(-1582035383);
                    Modifier.Companion companion12 = Modifier.Companion;
                    if (((i24 & 3670016) ^ 1572864) <= 1048576) {
                    }
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion12, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1582020872);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierNestedScroll$default = Modifier.Companion;
                }
                Modifier modifierThen6 = modifierFillMaxWidth$default6.then(modifierNestedScroll$default);
                AnchoredDraggableState<SheetValue> anchoredDraggableState$material8 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
                Orientation orientation6 = Orientation.Vertical;
                i26 = (i24 & 3670016) ^ 1572864;
                if (i26 > 1048576) {
                    j7 = j6;
                    if ((i24 & 1572864) != 1048576) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                } else {
                    j7 = j6;
                    if ((i24 & 1572864) != 1048576) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue = new bm3() { // from class: ub5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: ub5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchors7 = AnchoredDraggableKt.draggableAnchors(modifierThen6, anchoredDraggableState$material8, orientation6, (bm3) objRememberedValue);
                DraggableState draggableState$material9 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                if (z4) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                boolean zIsAnimationRunning7 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                if ((i24 & 57344) == 16384) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierDraggable$default7 = DraggableKt.draggable$default(modifierDraggableAnchors7, draggableState$material9, orientation6, z6, null, zIsAnimationRunning7, null, (dm3) objRememberedValue2, false, 168, null);
                zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z8 = false;
                    objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    z8 = false;
                    objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifierSemantics$default7 = SemanticsModifierKt.semantics$default(modifierDraggable$default7, z8, (nl3) objRememberedValue3, 1, null);
                offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                r6 = offset$material3;
                if (offset$material3 < 0) {
                    r6 = z8;
                }
                Modifier modifierConsumeWindowInsets7 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default7, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                if (i26 > 1048576) {
                }
                if ((i24 & 112) != 32) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                z10 = z13 | z9;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z10 == 0) {
                    z11 = true;
                    objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    z11 = true;
                    objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                Modifier modifierVerticalScaleUp7 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets7, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                SheetState sheetState9 = sheetStateRememberModalBottomSheetState;
                boolean z110 = z4;
                bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var18 = bm3Var5;
                bm3<? super Composer, ? super Integer, j59> bm3Var19 = lambda$1716959002$material3;
                ComposableLambda composableLambdaRememberComposableLambda7 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var18, animatable, sheetState9, bm3Var19, dm3Var, ll3Var, y22Var2, z110), composerStartRestartGroup, 54);
                int i313 = i312 << 6;
                Shape shape111 = shape3;
                long j14 = jM3275contentColorForek8zF_U;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp7, shape111, j7, j14, f11, 0.0f, null, composableLambdaRememberComposableLambda7, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i313 & 896) | (i313 & 7168) | (57344 & i313), 96);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z3 = z110;
                sheetState2 = sheetState9;
                bm3Var3 = bm3Var19;
                shape2 = shape111;
                f4 = f11;
                composer2 = composerStartRestartGroup;
                f3 = f5;
                bm3Var4 = bm3Var18;
                j4 = j14;
                modifier3 = modifier1113;
                j5 = j7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z3 = z;
                j4 = j2;
                bm3Var3 = bm3Var;
                f3 = fM3122getSheetMaxWidthD9Ej5fM;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                modifier3 = modifier2;
                composer2 = composerStartRestartGroup;
                shape2 = shape;
                j5 = j;
                f4 = f2;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        i6 = 8192;
        if ((i3 & 8) != 0) {
            i4 |= 24576;
        } else if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i4 |= i7;
        }
        i8 = i3 & 16;
        if (i8 != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(modifier2)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i4 |= i9;
            }
        }
        if ((i & 1572864) == 0) {
            sheetStateRememberModalBottomSheetState = sheetState;
            if ((i3 & 32) == 0) {
                i28 = 524288;
            } else {
                i28 = 524288;
            }
            i4 |= i28;
        } else {
            sheetStateRememberModalBottomSheetState = sheetState;
        }
        i10 = i3 & 64;
        if (i10 != 0) {
            i4 |= 12582912;
            fM3122getSheetMaxWidthD9Ej5fM = f;
        } else {
            fM3122getSheetMaxWidthD9Ej5fM = f;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(fM3122getSheetMaxWidthD9Ej5fM)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i4 |= i11;
            }
        }
        i12 = i3 & 128;
        if (i12 != 0) {
            i4 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(z)) {
                i13 = 67108864;
            } else {
                i13 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i4 |= i13;
        }
        if ((i & 805306368) != 0) {
            i4 |= ((i3 & 256) == 0 || !composerStartRestartGroup.changed(shape)) ? 268435456 : 536870912;
        }
        if ((i2 & 6) == 0) {
            if ((i3 & 512) == 0) {
                i14 = i4;
                if (composerStartRestartGroup.changed(j)) {
                }
                i15 = i2 | i29;
            } else {
                i14 = i4;
            }
            i15 = i2 | i29;
        } else {
            i14 = i4;
            i15 = i2;
        }
        if ((i2 & 48) == 0) {
            j3 = j2;
            if ((i3 & 1024) == 0) {
                i27 = 16;
            } else {
                i27 = 16;
            }
            i15 |= i27;
        } else {
            j3 = j2;
        }
        i16 = i15;
        i17 = i3 & 2048;
        if (i17 != 0) {
            i18 = i16 | RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if (composerStartRestartGroup.changed(f2)) {
                i19 = 256;
            } else {
                i19 = 128;
            }
            i18 = i16 | i19;
        } else {
            i18 = i16;
        }
        i20 = i3 & 4096;
        if (i20 != 0) {
            i22 = i18 | 3072;
        } else {
            i21 = i18;
            if ((i2 & 3072) == 0) {
                i22 = i21 | (composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024);
            } else {
                i22 = i21;
            }
        }
        if ((i2 & 24576) != 0) {
            if ((i3 & 8192) == 0) {
                i6 = 16384;
            }
            i22 |= i6;
        }
        if ((i3 & 16384) != 0) {
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                i22 |= composerStartRestartGroup.changedInstance(dm3Var) ? 131072 : 65536;
            }
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 32) != 0) {
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        i23 = i14 & (-3670017);
                    }
                    if (i10 != 0) {
                        i23 = i14;
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if (i12 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if ((i3 & 256) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i23 &= -1879048193;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i3 & 512) != 0) {
                        i22 &= -15;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 1024) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                        i22 &= -113;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i17 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f2;
                    }
                    if (i20 != 0) {
                        lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                    } else {
                        lambda$1716959002$material3 = bm3Var;
                    }
                    if ((i3 & 8192) != 0) {
                        Modifier modifier1114 = modifier2;
                        i24 = i23;
                        modifier4 = modifier1114;
                        Shape shape112 = expandedShape;
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                            public final WindowInsets invoke(Composer composer3, int i314) {
                                composer3.startReplaceGroup(1023699493);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1023699493, i314, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j6 = containerColor;
                        shape3 = shape112;
                        i25 = i22 & (-57345);
                    } else {
                        Modifier modifier1115 = modifier2;
                        i24 = i23;
                        modifier4 = modifier1115;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        i25 = i22;
                        j6 = containerColor;
                        shape3 = expandedShape;
                        bm3Var5 = bm3Var2;
                    }
                } else {
                    if (i8 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i3 & 32) != 0) {
                        sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                        i23 = i14 & (-3670017);
                    }
                    if (i10 != 0) {
                        i23 = i14;
                        fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                    }
                    if (i12 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if ((i3 & 256) != 0) {
                        expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                        i23 &= -1879048193;
                    } else {
                        expandedShape = shape;
                    }
                    if ((i3 & 512) != 0) {
                        i22 &= -15;
                        containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                    } else {
                        containerColor = j;
                    }
                    if ((i3 & 1024) != 0) {
                        jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                        i22 &= -113;
                    } else {
                        jM3275contentColorForek8zF_U = j2;
                    }
                    if (i17 != 0) {
                        fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                    } else {
                        fM3120getElevationD9Ej5fM = f2;
                    }
                    if (i20 != 0) {
                        lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                    } else {
                        lambda$1716959002$material3 = bm3Var;
                    }
                    if ((i3 & 8192) != 0) {
                        Modifier modifier1116 = modifier2;
                        i24 = i23;
                        modifier4 = modifier1116;
                        Shape shape113 = expandedShape;
                        bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                            public final WindowInsets invoke(Composer composer3, int i314) {
                                composer3.startReplaceGroup(1023699493);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1023699493, i314, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                                }
                                WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                composer3.endReplaceGroup();
                                return windowInsets;
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                                return invoke(composer3, num.intValue());
                            }
                        };
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        j6 = containerColor;
                        shape3 = shape113;
                        i25 = i22 & (-57345);
                    } else {
                        Modifier modifier1117 = modifier2;
                        i24 = i23;
                        modifier4 = modifier1117;
                        f5 = fM3122getSheetMaxWidthD9Ej5fM;
                        i25 = i22;
                        j6 = containerColor;
                        shape3 = expandedShape;
                        bm3Var5 = bm3Var2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                float f12 = fM3120getElevationD9Ej5fM;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
                }
                Strings.Companion companion13 = Strings.Companion;
                strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
                Modifier modifier1118 = modifier4;
                int i314 = i25;
                Modifier modifierFillMaxWidth$default7 = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
                if (z4) {
                    composerStartRestartGroup.startReplaceGroup(-1582035383);
                    Modifier.Companion companion14 = Modifier.Companion;
                    if (((i24 & 3670016) ^ 1572864) <= 1048576) {
                    }
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (z12) {
                        objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    } else {
                        objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion14, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1582020872);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierNestedScroll$default = Modifier.Companion;
                }
                Modifier modifierThen7 = modifierFillMaxWidth$default7.then(modifierNestedScroll$default);
                AnchoredDraggableState<SheetValue> anchoredDraggableState$material9 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
                Orientation orientation7 = Orientation.Vertical;
                i26 = (i24 & 3670016) ^ 1572864;
                if (i26 > 1048576) {
                    j7 = j6;
                    if ((i24 & 1572864) != 1048576) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                } else {
                    j7 = j6;
                    if ((i24 & 1572864) != 1048576) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue = new bm3() { // from class: ub5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new bm3() { // from class: ub5
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierDraggableAnchors8 = AnchoredDraggableKt.draggableAnchors(modifierThen7, anchoredDraggableState$material9, orientation7, (bm3) objRememberedValue);
                DraggableState draggableState$material10 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
                if (z4) {
                    z6 = false;
                } else {
                    z6 = false;
                }
                boolean zIsAnimationRunning8 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
                if ((i24 & 57344) == 16384) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z7) {
                    objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierDraggable$default8 = DraggableKt.draggable$default(modifierDraggableAnchors8, draggableState$material10, orientation7, z6, null, zIsAnimationRunning8, null, (dm3) objRememberedValue2, false, 168, null);
                zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    z8 = false;
                    objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    z8 = false;
                    objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                Modifier modifierSemantics$default8 = SemanticsModifierKt.semantics$default(modifierDraggable$default8, z8, (nl3) objRememberedValue3, 1, null);
                offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
                r6 = offset$material3;
                if (offset$material3 < 0) {
                    r6 = z8;
                }
                Modifier modifierConsumeWindowInsets8 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default8, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
                if (i26 > 1048576) {
                }
                if ((i24 & 112) != 32) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                z10 = z13 | z9;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z10 == 0) {
                    z11 = true;
                    objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                } else {
                    z11 = true;
                    objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                Modifier modifierVerticalScaleUp8 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets8, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
                SheetState sheetState10 = sheetStateRememberModalBottomSheetState;
                boolean z111 = z4;
                bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var110 = bm3Var5;
                bm3<? super Composer, ? super Integer, j59> bm3Var111 = lambda$1716959002$material3;
                ComposableLambda composableLambdaRememberComposableLambda8 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var110, animatable, sheetState10, bm3Var111, dm3Var, ll3Var, y22Var2, z111), composerStartRestartGroup, 54);
                int i315 = i314 << 6;
                Shape shape114 = shape3;
                long j15 = jM3275contentColorForek8zF_U;
                SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp8, shape114, j7, j15, f12, 0.0f, null, composableLambdaRememberComposableLambda8, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i315 & 896) | (i315 & 7168) | (57344 & i315), 96);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                z3 = z111;
                sheetState2 = sheetState10;
                bm3Var3 = bm3Var111;
                shape2 = shape114;
                f4 = f12;
                composer2 = composerStartRestartGroup;
                f3 = f5;
                bm3Var4 = bm3Var110;
                j4 = j15;
                modifier3 = modifier1118;
                j5 = j7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z3 = z;
                j4 = j2;
                bm3Var3 = bm3Var;
                f3 = fM3122getSheetMaxWidthD9Ej5fM;
                sheetState2 = sheetStateRememberModalBottomSheetState;
                modifier3 = modifier2;
                composer2 = composerStartRestartGroup;
                shape2 = shape;
                j5 = j;
                f4 = f2;
                bm3Var4 = bm3Var2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i22 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        if ((i14 & 306783379) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i14 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i8 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 32) != 0) {
                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    i23 = i14 & (-3670017);
                }
                if (i10 != 0) {
                    i23 = i14;
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                }
                if (i12 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if ((i3 & 256) != 0) {
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    i23 &= -1879048193;
                } else {
                    expandedShape = shape;
                }
                if ((i3 & 512) != 0) {
                    i22 &= -15;
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                } else {
                    containerColor = j;
                }
                if ((i3 & 1024) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                    i22 &= -113;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                if (i17 != 0) {
                    fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                } else {
                    fM3120getElevationD9Ej5fM = f2;
                }
                if (i20 != 0) {
                    lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                } else {
                    lambda$1716959002$material3 = bm3Var;
                }
                if ((i3 & 8192) != 0) {
                    Modifier modifier1119 = modifier2;
                    i24 = i23;
                    modifier4 = modifier1119;
                    Shape shape115 = expandedShape;
                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                        public final WindowInsets invoke(Composer composer3, int i316) {
                            composer3.startReplaceGroup(1023699493);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1023699493, i316, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            composer3.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                            return invoke(composer3, num.intValue());
                        }
                    };
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j6 = containerColor;
                    shape3 = shape115;
                    i25 = i22 & (-57345);
                } else {
                    Modifier modifier11110 = modifier2;
                    i24 = i23;
                    modifier4 = modifier11110;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    i25 = i22;
                    j6 = containerColor;
                    shape3 = expandedShape;
                    bm3Var5 = bm3Var2;
                }
            } else {
                if (i8 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i3 & 32) != 0) {
                    sheetStateRememberModalBottomSheetState = rememberModalBottomSheetState(false, null, composerStartRestartGroup, 0, 3);
                    i23 = i14 & (-3670017);
                }
                if (i10 != 0) {
                    i23 = i14;
                    fM3122getSheetMaxWidthD9Ej5fM = BottomSheetDefaults.INSTANCE.m3122getSheetMaxWidthD9Ej5fM();
                }
                if (i12 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if ((i3 & 256) != 0) {
                    expandedShape = BottomSheetDefaults.INSTANCE.getExpandedShape(composerStartRestartGroup, 6);
                    i23 &= -1879048193;
                } else {
                    expandedShape = shape;
                }
                if ((i3 & 512) != 0) {
                    i22 &= -15;
                    containerColor = BottomSheetDefaults.INSTANCE.getContainerColor(composerStartRestartGroup, 6);
                } else {
                    containerColor = j;
                }
                if ((i3 & 1024) != 0) {
                    jM3275contentColorForek8zF_U = ColorSchemeKt.m3275contentColorForek8zF_U(containerColor, composerStartRestartGroup, i22 & 14);
                    i22 &= -113;
                } else {
                    jM3275contentColorForek8zF_U = j2;
                }
                if (i17 != 0) {
                    fM3120getElevationD9Ej5fM = BottomSheetDefaults.INSTANCE.m3120getElevationD9Ej5fM();
                } else {
                    fM3120getElevationD9Ej5fM = f2;
                }
                if (i20 != 0) {
                    lambda$1716959002$material3 = ComposableSingletons$ModalBottomSheetKt.INSTANCE.getLambda$1716959002$material3();
                } else {
                    lambda$1716959002$material3 = bm3Var;
                }
                if ((i3 & 8192) != 0) {
                    Modifier modifier11111 = modifier2;
                    i24 = i23;
                    modifier4 = modifier11111;
                    Shape shape116 = expandedShape;
                    bm3Var5 = new bm3<Composer, Integer, WindowInsets>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$1
                        public final WindowInsets invoke(Composer composer3, int i316) {
                            composer3.startReplaceGroup(1023699493);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1023699493, i316, -1, "androidx.compose.material3.ModalBottomSheetContent.<anonymous> (ModalBottomSheet.kt:270)");
                            }
                            WindowInsets windowInsets = BottomSheetDefaults.INSTANCE.getWindowInsets(composer3, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            composer3.endReplaceGroup();
                            return windowInsets;
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ WindowInsets invoke(Composer composer3, Integer num) {
                            return invoke(composer3, num.intValue());
                        }
                    };
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    j6 = containerColor;
                    shape3 = shape116;
                    i25 = i22 & (-57345);
                } else {
                    Modifier modifier11112 = modifier2;
                    i24 = i23;
                    modifier4 = modifier11112;
                    f5 = fM3122getSheetMaxWidthD9Ej5fM;
                    i25 = i22;
                    j6 = containerColor;
                    shape3 = expandedShape;
                    bm3Var5 = bm3Var2;
                }
            }
            composerStartRestartGroup.endDefaults();
            float f13 = fM3120getElevationD9Ej5fM;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-37400432, i24, i25, "androidx.compose.material3.ModalBottomSheetContent (ModalBottomSheet.kt:272)");
            }
            Strings.Companion companion15 = Strings.Companion;
            strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_bottom_sheet_pane_title), composerStartRestartGroup, 0);
            Modifier modifier11113 = modifier4;
            int i316 = i25;
            Modifier modifierFillMaxWidth$default8 = SizeKt.fillMaxWidth$default(SizeKt.m2106widthInVpY3zN4$default(boxScope.align(modifier4, Alignment.Companion.getTopCenter()), 0.0f, f5, 1, null), 0.0f, 1, null);
            if (z4) {
                composerStartRestartGroup.startReplaceGroup(-1582035383);
                Modifier.Companion companion16 = Modifier.Companion;
                if (((i24 & 3670016) ^ 1572864) <= 1048576) {
                }
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (z12) {
                    objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetStateRememberModalBottomSheetState, Orientation.Vertical, nl3Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                modifierNestedScroll$default = NestedScrollModifierKt.nestedScroll$default(companion16, (NestedScrollConnection) objRememberedValue5, null, 2, null);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1582020872);
                composerStartRestartGroup.endReplaceGroup();
                modifierNestedScroll$default = Modifier.Companion;
            }
            Modifier modifierThen8 = modifierFillMaxWidth$default8.then(modifierNestedScroll$default);
            AnchoredDraggableState<SheetValue> anchoredDraggableState$material10 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3();
            Orientation orientation8 = Orientation.Vertical;
            i26 = (i24 & 3670016) ^ 1572864;
            if (i26 > 1048576) {
                j7 = j6;
                if ((i24 & 1572864) != 1048576) {
                    z5 = true;
                } else {
                    z5 = false;
                }
            } else {
                j7 = j6;
                if ((i24 & 1572864) != 1048576) {
                    z5 = true;
                } else {
                    z5 = false;
                }
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z5) {
                objRememberedValue = new bm3() { // from class: ub5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new bm3() { // from class: ub5
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(sheetStateRememberModalBottomSheetState, (IntSize) obj, (Constraints) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierDraggableAnchors9 = AnchoredDraggableKt.draggableAnchors(modifierThen8, anchoredDraggableState$material10, orientation8, (bm3) objRememberedValue);
            DraggableState draggableState$material11 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().getDraggableState$material3();
            if (z4) {
                z6 = false;
            } else {
                z6 = false;
            }
            boolean zIsAnimationRunning9 = sheetStateRememberModalBottomSheetState.getAnchoredDraggableState$material3().isAnimationRunning();
            if ((i24 & 57344) == 16384) {
                z7 = true;
            } else {
                z7 = false;
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z7) {
                objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(nl3Var, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierDraggable$default9 = DraggableKt.draggable$default(modifierDraggableAnchors9, draggableState$material11, orientation8, z6, null, zIsAnimationRunning9, null, (dm3) objRememberedValue2, false, 168, null);
            zChanged = composerStartRestartGroup.changed(strM4461getString2EP1pXo);
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                z8 = false;
                objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                z8 = false;
                objRememberedValue3 = new vb5(strM4461getString2EP1pXo, false ? 1 : 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifierSemantics$default9 = SemanticsModifierKt.semantics$default(modifierDraggable$default9, z8, (nl3) objRememberedValue3, 1, null);
            offset$material3 = (int) sheetStateRememberModalBottomSheetState.getOffset$material3();
            r6 = offset$material3;
            if (offset$material3 < 0) {
                r6 = z8;
            }
            Modifier modifierConsumeWindowInsets9 = WindowInsetsPaddingKt.consumeWindowInsets(modifierSemantics$default9, WindowInsetsKt.WindowInsets$default(0, r6 == true ? 1 : 0, 0, 0, 13, null));
            if (i26 > 1048576) {
            }
            if ((i24 & 112) != 32) {
                z9 = true;
            } else {
                z9 = true;
            }
            z10 = z13 | z9;
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (z10 == 0) {
                z11 = true;
                objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                z11 = true;
                objRememberedValue4 = new am4(true ? 1 : 0, sheetStateRememberModalBottomSheetState, animatable);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            Modifier modifierVerticalScaleUp9 = BottomSheetScaffoldKt.verticalScaleUp(GraphicsLayerModifierKt.graphicsLayer(modifierConsumeWindowInsets9, (nl3) objRememberedValue4), sheetStateRememberModalBottomSheetState);
            SheetState sheetState11 = sheetStateRememberModalBottomSheetState;
            boolean z112 = z4;
            bm3<? super Composer, ? super Integer, ? extends WindowInsets> bm3Var112 = bm3Var5;
            bm3<? super Composer, ? super Integer, j59> bm3Var113 = lambda$1716959002$material3;
            ComposableLambda composableLambdaRememberComposableLambda9 = ComposableLambdaKt.rememberComposableLambda(728743275, z11, new ModalBottomSheetKt$ModalBottomSheetContent$7(bm3Var112, animatable, sheetState11, bm3Var113, dm3Var, ll3Var, y22Var2, z112), composerStartRestartGroup, 54);
            int i317 = i316 << 6;
            Shape shape117 = shape3;
            long j16 = jM3275contentColorForek8zF_U;
            SurfaceKt.m3942SurfaceT9BRK9s(modifierVerticalScaleUp9, shape117, j7, j16, f13, 0.0f, null, composableLambdaRememberComposableLambda9, composerStartRestartGroup, ((i24 >> 24) & 112) | 12582912 | (i317 & 896) | (i317 & 7168) | (57344 & i317), 96);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            z3 = z112;
            sheetState2 = sheetState11;
            bm3Var3 = bm3Var113;
            shape2 = shape117;
            f4 = f13;
            composer2 = composerStartRestartGroup;
            f3 = f5;
            bm3Var4 = bm3Var112;
            j4 = j16;
            modifier3 = modifier11113;
            j5 = j7;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            z3 = z;
            j4 = j2;
            bm3Var3 = bm3Var;
            f3 = fM3122getSheetMaxWidthD9Ej5fM;
            sheetState2 = sheetStateRememberModalBottomSheetState;
            modifier3 = modifier2;
            composer2 = composerStartRestartGroup;
            shape2 = shape;
            j5 = j;
            f4 = f2;
            bm3Var4 = bm3Var2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wb5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$24(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier3, sheetState2, f3, z3, shape2, j5, j4, f4, bm3Var3, bm3Var4, dm3Var, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b36 ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17(final SheetState sheetState, final IntSize intSize, Constraints constraints) {
        SheetValue sheetValue;
        final float fM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(constraints.m9001unboximpl());
        DraggableAnchors DraggableAnchors = AnchoredDraggableKt.DraggableAnchors(new nl3() { // from class: xb5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17$lambda$16(fM8994getMaxHeightimpl, intSize, sheetState, (DraggableAnchorsConfig) obj);
            }
        });
        int i = WhenMappings.$EnumSwitchMapping$0[sheetState.getAnchoredDraggableState$material3().getTargetValue().ordinal()];
        if (i == 1) {
            sheetValue = SheetValue.Hidden;
        } else if (i == 2) {
            sheetValue = SheetValue.PartiallyExpanded;
            if (!DraggableAnchors.hasAnchorFor(sheetValue)) {
                sheetValue = SheetValue.Expanded;
                if (!DraggableAnchors.hasAnchorFor(sheetValue)) {
                    sheetValue = SheetValue.Hidden;
                }
            }
        } else {
            if (i != 3) {
                me0.e();
                return null;
            }
            sheetValue = SheetValue.Expanded;
            if (!DraggableAnchors.hasAnchorFor(sheetValue)) {
                sheetValue = SheetValue.Hidden;
            }
        }
        return new b36(DraggableAnchors, sheetValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheetContent_7___e2Q$lambda$18$lambda$17$lambda$16(float f, IntSize intSize, SheetState sheetState, DraggableAnchorsConfig draggableAnchorsConfig) {
        draggableAnchorsConfig.at(SheetValue.Hidden, f);
        if (((int) (intSize.m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) > f / 2.0f && !sheetState.getSkipPartiallyExpanded$material3()) {
            draggableAnchorsConfig.at(SheetValue.PartiallyExpanded, f / 2.0f);
        }
        if (((int) (intSize.m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) != 0) {
            draggableAnchorsConfig.at(SheetValue.Expanded, Math.max(0.0f, f - ((int) (intSize.m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheetContent_7___e2Q$lambda$21$lambda$20(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver, str);
        SemanticsPropertiesKt.setTraversalIndex(semanticsPropertyReceiver, 0.0f);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheetContent_7___e2Q$lambda$23$lambda$22(SheetState sheetState, Animatable animatable, GraphicsLayerScope graphicsLayerScope) {
        float offset = sheetState.getAnchoredDraggableState$material3().getOffset();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (!Float.isNaN(offset) && !Float.isNaN(fIntBitsToFloat) && fIntBitsToFloat != 0.0f) {
            float fFloatValue = ((Number) animatable.getValue()).floatValue();
            graphicsLayerScope.setScaleX(calculatePredictiveBackScaleX(graphicsLayerScope, fFloatValue));
            graphicsLayerScope.setScaleY(calculatePredictiveBackScaleY(graphicsLayerScope, fFloatValue));
            graphicsLayerScope.mo6433setTransformOrigin__ExYCQ(TransformOriginKt.TransformOrigin(0.5f, (offset + fIntBitsToFloat) / fIntBitsToFloat));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheetContent_7___e2Q$lambda$24(BoxScope boxScope, Animatable animatable, y22 y22Var, ll3 ll3Var, nl3 nl3Var, Modifier modifier, SheetState sheetState, float f, boolean z, Shape shape, long j, long j2, float f2, bm3 bm3Var, bm3 bm3Var2, dm3 dm3Var, int i, int i2, int i3, Composer composer, int i4) {
        m3625ModalBottomSheetContent7e2Q(boxScope, animatable, y22Var, ll3Var, nl3Var, modifier, sheetState, f, z, shape, j, j2, f2, bm3Var, bm3Var2, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$1$lambda$0(SheetState sheetState, FiniteAnimationSpec finiteAnimationSpec, FiniteAnimationSpec finiteAnimationSpec2, FiniteAnimationSpec finiteAnimationSpec3) {
        sheetState.setShowMotionSpec$material3(finiteAnimationSpec);
        sheetState.setHideMotionSpec$material3(finiteAnimationSpec2);
        sheetState.setAnchoredDraggableMotionSpec$material3(finiteAnimationSpec3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$11$lambda$10(SheetState sheetState, y22 y22Var, Animatable animatable, ll3 ll3Var) {
        if (sheetState.getCurrentValue() == SheetValue.Expanded && sheetState.getHasPartiallyExpandedState()) {
            av0.c(y22Var, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$1(animatable, null), 3);
            av0.c(y22Var, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$2(sheetState, null), 3);
        } else {
            av0.c(y22Var, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$3(sheetState, null), 3).g(new ry2(ll3Var, 1));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$11$lambda$10$lambda$9(ll3 ll3Var, Throwable th) {
        ll3Var.invoke();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$13(ll3 ll3Var, Modifier modifier, SheetState sheetState, float f, boolean z, Shape shape, long j, long j2, float f2, long j3, bm3 bm3Var, bm3 bm3Var2, ModalBottomSheetProperties modalBottomSheetProperties, dm3 dm3Var, int i, int i2, int i3, Composer composer, int i4) {
        m3623ModalBottomSheetYbuCTN8(ll3Var, modifier, sheetState, f, z, shape, j, j2, f2, j3, bm3Var, bm3Var2, modalBottomSheetProperties, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$4$lambda$3(SheetState sheetState, y22 y22Var, ll3 ll3Var) {
        if (sheetState.getAnchoredDraggableState$material3().getConfirmValueChange$material3().invoke(SheetValue.Hidden).booleanValue()) {
            av0.c(y22Var, null, null, new ModalBottomSheetKt$ModalBottomSheet$animateToDismiss$1$1$1(sheetState, null), 3).g(new at0(sheetState, ll3Var));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$4$lambda$3$lambda$2(SheetState sheetState, ll3 ll3Var, Throwable th) {
        if (!sheetState.isVisible()) {
            ll3Var.invoke();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$7$lambda$6(y22 y22Var, SheetState sheetState, ll3 ll3Var, float f) {
        av0.c(y22Var, null, null, new ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1(sheetState, f, null), 3).g(new zh2(1, sheetState, ll3Var));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_YbuCTN8$lambda$7$lambda$6$lambda$5(SheetState sheetState, ll3 ll3Var, Throwable th) {
        if (!sheetState.isVisible()) {
            ll3Var.invoke();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ModalBottomSheet_dYc4hso$lambda$14(ll3 ll3Var, Modifier modifier, SheetState sheetState, float f, Shape shape, long j, long j2, float f2, long j3, bm3 bm3Var, bm3 bm3Var2, ModalBottomSheetProperties modalBottomSheetProperties, dm3 dm3Var, int i, int i2, int i3, Composer composer, int i4) {
        m3624ModalBottomSheetdYc4hso(ll3Var, modifier, sheetState, f, shape, j, j2, f2, j3, bm3Var, bm3Var2, modalBottomSheetProperties, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Scrim-KTwxG1Y, reason: not valid java name */
    public static final void m3626ScrimKTwxG1Y(final long j, final ll3<j59> ll3Var, final boolean z, final boolean z2, Composer composer, final int i) {
        int i2;
        int i3;
        Modifier.Companion companion;
        Modifier modifierSemantics;
        Composer composerStartRestartGroup = composer.startRestartGroup(-391613911);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z2) ? 2048 : 1024;
        }
        int i4 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 1171) != 1170, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-391613911, i2, -1, "androidx.compose.material3.Scrim (ModalBottomSheet.kt:514)");
            }
            if (j != 16) {
                composerStartRestartGroup.startReplaceGroup(-1438582326);
                int i5 = i2;
                final State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(z ? 1.0f : 0.0f, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                Strings.Companion companion2 = Strings.Companion;
                Object objM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(androidx.compose.ui.R.string.close_sheet), composerStartRestartGroup, 0);
                if (z2) {
                    composerStartRestartGroup.startReplaceGroup(-1438283579);
                    companion = Modifier.Companion;
                    int i6 = i5 & 112;
                    boolean z3 = i6 == 32;
                    Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new ModalBottomSheetKt$Scrim$dismissSheet$1$1(ll3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierPointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, ll3Var, (PointerInputEventHandler) objRememberedValue);
                    boolean zChanged = (i6 == 32) | composerStartRestartGroup.changed(objM4461getString2EP1pXo);
                    Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new zb5(i4, objM4461getString2EP1pXo, ll3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    i3 = 1;
                    modifierSemantics = SemanticsModifierKt.semantics(modifierPointerInput, true, (nl3) objRememberedValue2);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    i3 = 1;
                    composerStartRestartGroup.startReplaceGroup(-1437857391);
                    composerStartRestartGroup.endReplaceGroup();
                    companion = Modifier.Companion;
                    modifierSemantics = companion;
                }
                Modifier modifierThen = SizeKt.fillMaxSize$default(companion, 0.0f, i3, null).then(modifierSemantics);
                int i7 = (composerStartRestartGroup.changed(stateAnimateFloatAsState) ? 1 : 0) | ((i5 & 14) == 4 ? i3 : 0);
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (i7 != 0 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new nl3() { // from class: ac5
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return ModalBottomSheetKt.Scrim_KTwxG1Y$lambda$33$lambda$32(j, stateAnimateFloatAsState, (DrawScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CanvasKt.Canvas(modifierThen, (nl3) objRememberedValue3, composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1437676103);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bc5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ModalBottomSheetKt.Scrim_KTwxG1Y$lambda$34(j, ll3Var, z, z2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    private static final float Scrim_KTwxG1Y$lambda$27(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scrim_KTwxG1Y$lambda$31$lambda$30(String str, ll3 ll3Var, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalIndex(semanticsPropertyReceiver, 1.0f);
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        SemanticsPropertiesKt.onClick$default(semanticsPropertyReceiver, null, new e84(ll3Var, 1), 1, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Scrim_KTwxG1Y$lambda$31$lambda$30$lambda$29(ll3 ll3Var) {
        ll3Var.invoke();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scrim_KTwxG1Y$lambda$33$lambda$32(long j, State state, DrawScope drawScope) {
        DrawScope.m6800drawRectnJ9OG0$default(drawScope, j, 0L, 0L, kx6.d(Scrim_KTwxG1Y$lambda$27(state), 0.0f, 1.0f), null, null, 0, 118, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Scrim_KTwxG1Y$lambda$34(long j, ll3 ll3Var, boolean z, boolean z2, int i, Composer composer, int i2) {
        m3626ScrimKTwxG1Y(j, ll3Var, z, z2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculatePredictiveBackScaleX(GraphicsLayerScope graphicsLayerScope, float f) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() >> 32));
        if (Float.isNaN(fIntBitsToFloat) || fIntBitsToFloat == 0.0f) {
            return 1.0f;
        }
        return 1.0f - (MathHelpersKt.lerp(0.0f, Math.min(graphicsLayerScope.mo1434toPx0680j_4(PredictiveBackMaxScaleXDistance), fIntBitsToFloat), f) / fIntBitsToFloat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculatePredictiveBackScaleY(GraphicsLayerScope graphicsLayerScope, float f) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (Float.isNaN(fIntBitsToFloat) || fIntBitsToFloat == 0.0f) {
            return 1.0f;
        }
        return 1.0f - (MathHelpersKt.lerp(0.0f, Math.min(graphicsLayerScope.mo1434toPx0680j_4(PredictiveBackMaxScaleYDistance), fIntBitsToFloat), f) / fIntBitsToFloat);
    }

    public static final SheetState rememberModalBottomSheetState(boolean z, nl3<? super SheetValue, Boolean> nl3Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i2 & 2) != 0) {
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new xy2(1);
                composer.updateRememberedValue(objRememberedValue);
            }
            nl3Var = (nl3) objRememberedValue;
        }
        nl3<? super SheetValue, Boolean> nl3Var2 = nl3Var;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-778250030, i, -1, "androidx.compose.material3.rememberModalBottomSheetState (ModalBottomSheet.kt:502)");
        }
        SheetState sheetStateM3851rememberSheetStateAGcomas = SheetDefaultsKt.m3851rememberSheetStateAGcomas(z2, nl3Var2, SheetValue.Hidden, false, 0.0f, 0.0f, composer, (i & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | (i & 112), 56);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return sheetStateM3851rememberSheetStateAGcomas;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean rememberModalBottomSheetState$lambda$26$lambda$25(SheetValue sheetValue) {
        return true;
    }
}

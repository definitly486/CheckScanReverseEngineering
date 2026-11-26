package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.nt0;

/* JADX INFO: loaded from: classes.dex */
public final class BoxWithConstraintsKt {
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x007a  */
    /* JADX WARN: Code duplicated, block: B:45:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x0087  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x008d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:55:0x0097  */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00da  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    public static final void BoxWithConstraints(Modifier modifier, Alignment alignment, boolean z, final dm3<? super BoxWithConstraintsScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        Alignment alignment2;
        int i4;
        boolean z2;
        int i5;
        int i6;
        boolean z3;
        Modifier modifier3;
        Alignment topStart;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy;
        boolean zChanged;
        Object objRememberedValue;
        int i7;
        Composer composerStartRestartGroup = composer.startRestartGroup(380139498);
        int i8 = i2 & 1;
        if (i8 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            i3 = (composerStartRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i9 = i2 & 2;
        if (i9 == 0) {
            if ((i & 48) == 0) {
                alignment2 = alignment;
                i3 |= composerStartRestartGroup.changed(alignment2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i6 = 0;
                if ((i3 & 1171) != 1170) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i8 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i9 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i4 != 0) {
                        z2 = false;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(380139498, i3, -1, "androidx.compose.foundation.layout.BoxWithConstraints (BoxWithConstraints.kt:61)");
                    }
                    measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(topStart, z2);
                    zChanged = composerStartRestartGroup.changed(measurePolicyMaybeCachedBoxMeasurePolicy) | ((i3 & 7168) == 2048);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new nt0(i6, measurePolicyMaybeCachedBoxMeasurePolicy, dm3Var);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    SubcomposeLayoutKt.SubcomposeLayout(modifier3, (bm3) objRememberedValue, composerStartRestartGroup, i3 & 14, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    topStart = alignment2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final Modifier modifier4 = modifier3;
                    final Alignment alignment3 = topStart;
                    final boolean z4 = z2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ot0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BoxWithConstraintsKt.BoxWithConstraints$lambda$1(modifier4, alignment3, z4, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z2 = z;
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            i6 = 0;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i8 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i9 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                } else {
                    topStart = alignment2;
                }
                if (i4 != 0) {
                    z2 = false;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(380139498, i3, -1, "androidx.compose.foundation.layout.BoxWithConstraints (BoxWithConstraints.kt:61)");
                }
                measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(topStart, z2);
                zChanged = composerStartRestartGroup.changed(measurePolicyMaybeCachedBoxMeasurePolicy) | ((i3 & 7168) == 2048);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new nt0(i6, measurePolicyMaybeCachedBoxMeasurePolicy, dm3Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nt0(i6, measurePolicyMaybeCachedBoxMeasurePolicy, dm3Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                SubcomposeLayoutKt.SubcomposeLayout(modifier3, (bm3) objRememberedValue, composerStartRestartGroup, i3 & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                topStart = alignment2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier5 = modifier3;
                final Alignment alignment4 = topStart;
                final boolean z5 = z2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ot0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BoxWithConstraintsKt.BoxWithConstraints$lambda$1(modifier5, alignment4, z5, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        alignment2 = alignment;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            i6 = 0;
            if ((i3 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i8 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i9 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                } else {
                    topStart = alignment2;
                }
                if (i4 != 0) {
                    z2 = false;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(380139498, i3, -1, "androidx.compose.foundation.layout.BoxWithConstraints (BoxWithConstraints.kt:61)");
                }
                measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(topStart, z2);
                zChanged = composerStartRestartGroup.changed(measurePolicyMaybeCachedBoxMeasurePolicy) | ((i3 & 7168) == 2048);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    objRememberedValue = new nt0(i6, measurePolicyMaybeCachedBoxMeasurePolicy, dm3Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = new nt0(i6, measurePolicyMaybeCachedBoxMeasurePolicy, dm3Var);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                SubcomposeLayoutKt.SubcomposeLayout(modifier3, (bm3) objRememberedValue, composerStartRestartGroup, i3 & 14, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                topStart = alignment2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                final Modifier modifier6 = modifier3;
                final Alignment alignment5 = topStart;
                final boolean z6 = z2;
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ot0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BoxWithConstraintsKt.BoxWithConstraints$lambda$1(modifier6, alignment5, z6, dm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        z2 = z;
        if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i3 |= i7;
        }
        i6 = 0;
        if ((i3 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i8 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i9 != 0) {
                topStart = Alignment.Companion.getTopStart();
            } else {
                topStart = alignment2;
            }
            if (i4 != 0) {
                z2 = false;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(380139498, i3, -1, "androidx.compose.foundation.layout.BoxWithConstraints (BoxWithConstraints.kt:61)");
            }
            measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(topStart, z2);
            zChanged = composerStartRestartGroup.changed(measurePolicyMaybeCachedBoxMeasurePolicy) | ((i3 & 7168) == 2048);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                objRememberedValue = new nt0(i6, measurePolicyMaybeCachedBoxMeasurePolicy, dm3Var);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new nt0(i6, measurePolicyMaybeCachedBoxMeasurePolicy, dm3Var);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            SubcomposeLayoutKt.SubcomposeLayout(modifier3, (bm3) objRememberedValue, composerStartRestartGroup, i3 & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            topStart = alignment2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier7 = modifier3;
            final Alignment alignment6 = topStart;
            final boolean z7 = z2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ot0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BoxWithConstraintsKt.BoxWithConstraints$lambda$1(modifier7, alignment6, z7, dm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult BoxWithConstraints$lambda$0$0(MeasurePolicy measurePolicy, final dm3 dm3Var, SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        final BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = new BoxWithConstraintsScopeImpl(subcomposeMeasureScope, constraints.m9001unboximpl(), null);
        return measurePolicy.mo1045measure3p2s80s(subcomposeMeasureScope, subcomposeMeasureScope.subcompose(j59.a, ComposableLambdaKt.composableLambdaInstance(-431986394, true, new bm3() { // from class: androidx.compose.foundation.layout.f
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                int iIntValue = ((Integer) obj2).intValue();
                return BoxWithConstraintsKt.BoxWithConstraints$lambda$0$0$0(dm3Var, boxWithConstraintsScopeImpl, (Composer) obj, iIntValue);
            }
        })), constraints.m9001unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BoxWithConstraints$lambda$0$0$0(dm3 dm3Var, BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-431986394, i, -1, "androidx.compose.foundation.layout.BoxWithConstraints.<anonymous>.<anonymous>.<anonymous> (BoxWithConstraints.kt:66)");
            }
            dm3Var.invoke(boxWithConstraintsScopeImpl, composer, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BoxWithConstraints$lambda$1(Modifier modifier, Alignment alignment, boolean z, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        BoxWithConstraints(modifier, alignment, z, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}

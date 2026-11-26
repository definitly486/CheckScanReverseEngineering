package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class LookaheadAnimationVisualDebugHelperKt {
    private static int colorIndex;
    private static final MutableScatterMap<Object, Color> keyToColor = new MutableScatterMap<>(0, 1, null);

    /* JADX INFO: renamed from: CustomizedLookaheadAnimationVisualDebugging-Iv8Zu3U, reason: not valid java name */
    public static final void m1138CustomizedLookaheadAnimationVisualDebuggingIv8Zu3U(long j, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1657127863);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1657127863, i2, -1, "androidx.compose.animation.CustomizedLookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:591)");
            }
            CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugColor().provides(Color.m6222boximpl(j)), bm3Var, composerStartRestartGroup, (i2 & 112) | ProvidedValue.$stable);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$CustomizedLookaheadAnimationVisualDebugging$1(j, bm3Var, i));
        }
    }

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
    /* JADX WARN: Code duplicated, block: B:48:0x0081  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x0092  */
    /* JADX WARN: Code duplicated, block: B:55:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x009f  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00de  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:81:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:83:0x0102  */
    /* JADX WARN: Code duplicated, block: B:84:0x0105  */
    /* JADX WARN: Code duplicated, block: B:87:0x010d  */
    /* JADX WARN: Code duplicated, block: B:90:0x0137  */
    /* JADX WARN: Code duplicated, block: B:92:0x0143  */
    /* JADX WARN: Code duplicated, block: B:95:0x0153  */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: LookaheadAnimationVisualDebugging-gUzqikQ, reason: not valid java name */
    public static final void m1139LookaheadAnimationVisualDebugginggUzqikQ(boolean z, long j, long j2, long j3, boolean z2, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        boolean z3;
        int i3;
        long j4;
        int i4;
        long j5;
        int i5;
        int i6;
        long j6;
        int i7;
        int i8;
        int i9;
        boolean z4;
        boolean z5;
        boolean z6;
        long j7;
        long j8;
        long j9;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        long jColor;
        long jColor2;
        long jColor3;
        boolean z7;
        int i10;
        Composer composerStartRestartGroup = composer.startRestartGroup(1722790302);
        int i11 = i2 & 1;
        if (i11 != 0) {
            i3 = i | 6;
            z3 = z;
        } else if ((i & 6) == 0) {
            z3 = z;
            i3 = (composerStartRestartGroup.changed(z3) ? 4 : 2) | i;
        } else {
            z3 = z;
            i3 = i;
        }
        int i12 = i2 & 2;
        if (i12 == 0) {
            if ((i & 48) == 0) {
                j4 = j;
                i3 |= composerStartRestartGroup.changed(j4) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    j5 = j2;
                    if (composerStartRestartGroup.changed(j5)) {
                        i5 = 256;
                    } else {
                        i5 = 128;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 8;
                if (i6 != 0) {
                    if ((i & 3072) == 0) {
                        j6 = j3;
                        if (composerStartRestartGroup.changed(j6)) {
                            i7 = 2048;
                        } else {
                            i7 = 1024;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 16;
                    if (i8 != 0) {
                        if ((i & 24576) == 0) {
                            if (composerStartRestartGroup.changed(z2)) {
                                i9 = 16384;
                            } else {
                                i9 = 8192;
                            }
                            i3 |= i9;
                        }
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                                i10 = 131072;
                            } else {
                                i10 = 65536;
                            }
                            i3 |= i10;
                        }
                        if ((i3 & 74899) != 74898) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                            if (i11 != 0) {
                                z6 = true;
                            } else {
                                z6 = z3;
                            }
                            if (i12 != 0) {
                                jColor = ColorKt.Color(2150934611L);
                            } else {
                                jColor = j4;
                            }
                            if (i4 != 0) {
                                jColor2 = ColorKt.Color(4293542709L);
                            } else {
                                jColor2 = j5;
                            }
                            if (i6 != 0) {
                                jColor3 = ColorKt.Color(4288323750L);
                            } else {
                                jColor3 = j6;
                            }
                            if (i8 != 0) {
                                z7 = false;
                            } else {
                                z7 = z2;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                            }
                            CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            j7 = jColor;
                            j8 = jColor2;
                            j9 = jColor3;
                            z5 = z7;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            z5 = z2;
                            z6 = z3;
                            j7 = j4;
                            j8 = j5;
                            j9 = j6;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                        }
                    }
                    i3 |= 24576;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 74899) != 74898) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        if (i11 != 0) {
                            z6 = true;
                        } else {
                            z6 = z3;
                        }
                        if (i12 != 0) {
                            jColor = ColorKt.Color(2150934611L);
                        } else {
                            jColor = j4;
                        }
                        if (i4 != 0) {
                            jColor2 = ColorKt.Color(4293542709L);
                        } else {
                            jColor2 = j5;
                        }
                        if (i6 != 0) {
                            jColor3 = ColorKt.Color(4288323750L);
                        } else {
                            jColor3 = j6;
                        }
                        if (i8 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                        }
                        CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j7 = jColor;
                        j8 = jColor2;
                        j9 = jColor3;
                        z5 = z7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z2;
                        z6 = z3;
                        j7 = j4;
                        j8 = j5;
                        j9 = j6;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                    }
                }
                i3 |= 3072;
                j6 = j3;
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 74899) != 74898) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        if (i11 != 0) {
                            z6 = true;
                        } else {
                            z6 = z3;
                        }
                        if (i12 != 0) {
                            jColor = ColorKt.Color(2150934611L);
                        } else {
                            jColor = j4;
                        }
                        if (i4 != 0) {
                            jColor2 = ColorKt.Color(4293542709L);
                        } else {
                            jColor2 = j5;
                        }
                        if (i6 != 0) {
                            jColor3 = ColorKt.Color(4288323750L);
                        } else {
                            jColor3 = j6;
                        }
                        if (i8 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                        }
                        CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j7 = jColor;
                        j8 = jColor2;
                        j9 = jColor3;
                        z5 = z7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z2;
                        z6 = z3;
                        j7 = j4;
                        j8 = j5;
                        j9 = j6;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                    }
                }
                i3 |= 24576;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i3 |= i10;
                }
                if ((i3 & 74899) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i11 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i12 != 0) {
                        jColor = ColorKt.Color(2150934611L);
                    } else {
                        jColor = j4;
                    }
                    if (i4 != 0) {
                        jColor2 = ColorKt.Color(4293542709L);
                    } else {
                        jColor2 = j5;
                    }
                    if (i6 != 0) {
                        jColor3 = ColorKt.Color(4288323750L);
                    } else {
                        jColor3 = j6;
                    }
                    if (i8 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j7 = jColor;
                    j8 = jColor2;
                    j9 = jColor3;
                    z5 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z2;
                    z6 = z3;
                    j7 = j4;
                    j8 = j5;
                    j9 = j6;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            j5 = j2;
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    j6 = j3;
                    if (composerStartRestartGroup.changed(j6)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 74899) != 74898) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        if (i11 != 0) {
                            z6 = true;
                        } else {
                            z6 = z3;
                        }
                        if (i12 != 0) {
                            jColor = ColorKt.Color(2150934611L);
                        } else {
                            jColor = j4;
                        }
                        if (i4 != 0) {
                            jColor2 = ColorKt.Color(4293542709L);
                        } else {
                            jColor2 = j5;
                        }
                        if (i6 != 0) {
                            jColor3 = ColorKt.Color(4288323750L);
                        } else {
                            jColor3 = j6;
                        }
                        if (i8 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                        }
                        CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j7 = jColor;
                        j8 = jColor2;
                        j9 = jColor3;
                        z5 = z7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z2;
                        z6 = z3;
                        j7 = j4;
                        j8 = j5;
                        j9 = j6;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                    }
                }
                i3 |= 24576;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i3 |= i10;
                }
                if ((i3 & 74899) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i11 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i12 != 0) {
                        jColor = ColorKt.Color(2150934611L);
                    } else {
                        jColor = j4;
                    }
                    if (i4 != 0) {
                        jColor2 = ColorKt.Color(4293542709L);
                    } else {
                        jColor2 = j5;
                    }
                    if (i6 != 0) {
                        jColor3 = ColorKt.Color(4288323750L);
                    } else {
                        jColor3 = j6;
                    }
                    if (i8 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j7 = jColor;
                    j8 = jColor2;
                    j9 = jColor3;
                    z5 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z2;
                    z6 = z3;
                    j7 = j4;
                    j8 = j5;
                    j9 = j6;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                }
            }
            i3 |= 3072;
            j6 = j3;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i3 |= i10;
                }
                if ((i3 & 74899) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i11 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i12 != 0) {
                        jColor = ColorKt.Color(2150934611L);
                    } else {
                        jColor = j4;
                    }
                    if (i4 != 0) {
                        jColor2 = ColorKt.Color(4293542709L);
                    } else {
                        jColor2 = j5;
                    }
                    if (i6 != 0) {
                        jColor3 = ColorKt.Color(4288323750L);
                    } else {
                        jColor3 = j6;
                    }
                    if (i8 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j7 = jColor;
                    j8 = jColor2;
                    j9 = jColor3;
                    z5 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z2;
                    z6 = z3;
                    j7 = j4;
                    j8 = j5;
                    j9 = j6;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                }
            }
            i3 |= 24576;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i3 |= i10;
            }
            if ((i3 & 74899) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i11 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i12 != 0) {
                    jColor = ColorKt.Color(2150934611L);
                } else {
                    jColor = j4;
                }
                if (i4 != 0) {
                    jColor2 = ColorKt.Color(4293542709L);
                } else {
                    jColor2 = j5;
                }
                if (i6 != 0) {
                    jColor3 = ColorKt.Color(4288323750L);
                } else {
                    jColor3 = j6;
                }
                if (i8 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                }
                CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j7 = jColor;
                j8 = jColor2;
                j9 = jColor3;
                z5 = z7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z2;
                z6 = z3;
                j7 = j4;
                j8 = j5;
                j9 = j6;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
            }
        }
        i3 |= 48;
        j4 = j;
        i4 = i2 & 4;
        if (i4 != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                j5 = j2;
                if (composerStartRestartGroup.changed(j5)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i3 |= i5;
            }
            i6 = i2 & 8;
            if (i6 != 0) {
                if ((i & 3072) == 0) {
                    j6 = j3;
                    if (composerStartRestartGroup.changed(j6)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 16;
                if (i8 != 0) {
                    if ((i & 24576) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i3 |= i9;
                    }
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i3 |= i10;
                    }
                    if ((i3 & 74899) != 74898) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        if (i11 != 0) {
                            z6 = true;
                        } else {
                            z6 = z3;
                        }
                        if (i12 != 0) {
                            jColor = ColorKt.Color(2150934611L);
                        } else {
                            jColor = j4;
                        }
                        if (i4 != 0) {
                            jColor2 = ColorKt.Color(4293542709L);
                        } else {
                            jColor2 = j5;
                        }
                        if (i6 != 0) {
                            jColor3 = ColorKt.Color(4288323750L);
                        } else {
                            jColor3 = j6;
                        }
                        if (i8 != 0) {
                            z7 = false;
                        } else {
                            z7 = z2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                        }
                        CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j7 = jColor;
                        j8 = jColor2;
                        j9 = jColor3;
                        z5 = z7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        z5 = z2;
                        z6 = z3;
                        j7 = j4;
                        j8 = j5;
                        j9 = j6;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                    }
                }
                i3 |= 24576;
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i3 |= i10;
                }
                if ((i3 & 74899) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i11 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i12 != 0) {
                        jColor = ColorKt.Color(2150934611L);
                    } else {
                        jColor = j4;
                    }
                    if (i4 != 0) {
                        jColor2 = ColorKt.Color(4293542709L);
                    } else {
                        jColor2 = j5;
                    }
                    if (i6 != 0) {
                        jColor3 = ColorKt.Color(4288323750L);
                    } else {
                        jColor3 = j6;
                    }
                    if (i8 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j7 = jColor;
                    j8 = jColor2;
                    j9 = jColor3;
                    z5 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z2;
                    z6 = z3;
                    j7 = j4;
                    j8 = j5;
                    j9 = j6;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                }
            }
            i3 |= 3072;
            j6 = j3;
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i3 |= i10;
                }
                if ((i3 & 74899) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i11 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i12 != 0) {
                        jColor = ColorKt.Color(2150934611L);
                    } else {
                        jColor = j4;
                    }
                    if (i4 != 0) {
                        jColor2 = ColorKt.Color(4293542709L);
                    } else {
                        jColor2 = j5;
                    }
                    if (i6 != 0) {
                        jColor3 = ColorKt.Color(4288323750L);
                    } else {
                        jColor3 = j6;
                    }
                    if (i8 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j7 = jColor;
                    j8 = jColor2;
                    j9 = jColor3;
                    z5 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z2;
                    z6 = z3;
                    j7 = j4;
                    j8 = j5;
                    j9 = j6;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                }
            }
            i3 |= 24576;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i3 |= i10;
            }
            if ((i3 & 74899) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i11 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i12 != 0) {
                    jColor = ColorKt.Color(2150934611L);
                } else {
                    jColor = j4;
                }
                if (i4 != 0) {
                    jColor2 = ColorKt.Color(4293542709L);
                } else {
                    jColor2 = j5;
                }
                if (i6 != 0) {
                    jColor3 = ColorKt.Color(4288323750L);
                } else {
                    jColor3 = j6;
                }
                if (i8 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                }
                CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j7 = jColor;
                j8 = jColor2;
                j9 = jColor3;
                z5 = z7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z2;
                z6 = z3;
                j7 = j4;
                j8 = j5;
                j9 = j6;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        j5 = j2;
        i6 = i2 & 8;
        if (i6 != 0) {
            if ((i & 3072) == 0) {
                j6 = j3;
                if (composerStartRestartGroup.changed(j6)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
            }
            i8 = i2 & 16;
            if (i8 != 0) {
                if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                }
                if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i3 |= i10;
                }
                if ((i3 & 74899) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i11 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i12 != 0) {
                        jColor = ColorKt.Color(2150934611L);
                    } else {
                        jColor = j4;
                    }
                    if (i4 != 0) {
                        jColor2 = ColorKt.Color(4293542709L);
                    } else {
                        jColor2 = j5;
                    }
                    if (i6 != 0) {
                        jColor3 = ColorKt.Color(4288323750L);
                    } else {
                        jColor3 = j6;
                    }
                    if (i8 != 0) {
                        z7 = false;
                    } else {
                        z7 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j7 = jColor;
                    j8 = jColor2;
                    j9 = jColor3;
                    z5 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    z5 = z2;
                    z6 = z3;
                    j7 = j4;
                    j8 = j5;
                    j9 = j6;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
                }
            }
            i3 |= 24576;
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i3 |= i10;
            }
            if ((i3 & 74899) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i11 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i12 != 0) {
                    jColor = ColorKt.Color(2150934611L);
                } else {
                    jColor = j4;
                }
                if (i4 != 0) {
                    jColor2 = ColorKt.Color(4293542709L);
                } else {
                    jColor2 = j5;
                }
                if (i6 != 0) {
                    jColor3 = ColorKt.Color(4288323750L);
                } else {
                    jColor3 = j6;
                }
                if (i8 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                }
                CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j7 = jColor;
                j8 = jColor2;
                j9 = jColor3;
                z5 = z7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z2;
                z6 = z3;
                j7 = j4;
                j8 = j5;
                j9 = j6;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
            }
        }
        i3 |= 3072;
        j6 = j3;
        i8 = i2 & 16;
        if (i8 != 0) {
            if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i3 |= i9;
            }
            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i3 |= i10;
            }
            if ((i3 & 74899) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i11 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i12 != 0) {
                    jColor = ColorKt.Color(2150934611L);
                } else {
                    jColor = j4;
                }
                if (i4 != 0) {
                    jColor2 = ColorKt.Color(4293542709L);
                } else {
                    jColor2 = j5;
                }
                if (i6 != 0) {
                    jColor3 = ColorKt.Color(4288323750L);
                } else {
                    jColor3 = j6;
                }
                if (i8 != 0) {
                    z7 = false;
                } else {
                    z7 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
                }
                CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j7 = jColor;
                j8 = jColor2;
                j9 = jColor3;
                z5 = z7;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                z5 = z2;
                z6 = z3;
                j7 = j4;
                j8 = j5;
                j9 = j6;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
            }
        }
        i3 |= 24576;
        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i3 |= i10;
        }
        if ((i3 & 74899) != 74898) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            if (i11 != 0) {
                z6 = true;
            } else {
                z6 = z3;
            }
            if (i12 != 0) {
                jColor = ColorKt.Color(2150934611L);
            } else {
                jColor = j4;
            }
            if (i4 != 0) {
                jColor2 = ColorKt.Color(4293542709L);
            } else {
                jColor2 = j5;
            }
            if (i6 != 0) {
                jColor3 = ColorKt.Color(4288323750L);
            } else {
                jColor3 = j6;
            }
            if (i8 != 0) {
                z7 = false;
            } else {
                z7 = z2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1722790302, i3, -1, "androidx.compose.animation.LookaheadAnimationVisualDebugging (LookaheadAnimationVisualDebugHelper.kt:558)");
            }
            CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalLookaheadAnimationVisualDebugConfig().provides(new LookaheadAnimationVisualDebugConfig(z6, jColor, jColor2, jColor3, z7, null)), bm3Var, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j7 = jColor;
            j8 = jColor2;
            j9 = jColor3;
            z5 = z7;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            z5 = z2;
            z6 = z3;
            j7 = j4;
            j8 = j5;
            j9 = j6;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new LookaheadAnimationVisualDebugHelperKt$LookaheadAnimationVisualDebugging$1(z6, j7, j8, j9, z5, bm3Var, i, i2));
        }
    }
}

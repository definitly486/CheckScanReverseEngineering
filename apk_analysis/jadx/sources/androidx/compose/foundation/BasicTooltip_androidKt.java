package androidx.compose.foundation;

import androidx.compose.foundation.BasicTooltip_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class BasicTooltip_androidKt {
    /* JADX WARN: Code duplicated, block: B:37:0x0060  */
    /* JADX WARN: Code duplicated, block: B:39:0x0065  */
    /* JADX WARN: Code duplicated, block: B:41:0x0069  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:44:0x0074  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0081  */
    /* JADX WARN: Code duplicated, block: B:52:0x0084  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x008f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0097  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:85:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:87:0x0101  */
    /* JADX WARN: Code duplicated, block: B:90:0x010f  */
    /* JADX WARN: Code duplicated, block: B:92:? A[RETURN, SYNTHETIC] */
    @ul2
    public static final /* synthetic */ void BasicTooltipBox(final PopupPositionProvider popupPositionProvider, final bm3 bm3Var, final BasicTooltipState basicTooltipState, Modifier modifier, boolean z, boolean z2, final bm3 bm3Var2, Composer composer, final int i, final int i2) {
        int i3;
        final Modifier modifier2;
        int i4;
        boolean z3;
        int i5;
        int i6;
        int i7;
        boolean z4;
        Composer composer2;
        final boolean z5;
        final boolean z6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier3;
        boolean z7;
        boolean z8;
        int i8;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1368136524);
        if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(popupPositionProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(basicTooltipState) ? 256 : 128;
        }
        int i9 = i2 & 8;
        if (i9 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    z3 = z;
                    if (composerStartRestartGroup.changed(z3)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        if (composerStartRestartGroup.changed(z2)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((1572864 & i) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i3 |= i8;
                    }
                    if ((599187 & i3) != 599186) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                        if (i9 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i4 != 0) {
                            z7 = true;
                        } else {
                            z7 = z3;
                        }
                        if (i6 != 0) {
                            z8 = true;
                        } else {
                            z8 = z2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
                        }
                        composer2 = composerStartRestartGroup;
                        BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier2 = modifier3;
                        z5 = z7;
                        z6 = z8;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z5 = z3;
                        z6 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((1572864 & i) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i6 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    z5 = z7;
                    z6 = z8;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z5 = z3;
                    z6 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z3 = z;
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i6 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    z5 = z7;
                    z6 = z8;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z5 = z3;
                    z6 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((1572864 & i) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i6 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
                }
                composer2 = composerStartRestartGroup;
                BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                z5 = z7;
                z6 = z8;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z5 = z3;
                z6 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                z3 = z;
                if (composerStartRestartGroup.changed(z3)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((1572864 & i) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    if (i9 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i4 != 0) {
                        z7 = true;
                    } else {
                        z7 = z3;
                    }
                    if (i6 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier2 = modifier3;
                    z5 = z7;
                    z6 = z8;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z5 = z3;
                    z6 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((1572864 & i) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i6 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
                }
                composer2 = composerStartRestartGroup;
                BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                z5 = z7;
                z6 = z8;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z5 = z3;
                z6 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z3 = z;
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((1572864 & i) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                if (i9 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i4 != 0) {
                    z7 = true;
                } else {
                    z7 = z3;
                }
                if (i6 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
                }
                composer2 = composerStartRestartGroup;
                BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier2 = modifier3;
                z5 = z7;
                z6 = z8;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z5 = z3;
                z6 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        if ((1572864 & i) != 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                i8 = 1048576;
            } else {
                i8 = 524288;
            }
            i3 |= i8;
        }
        if ((599187 & i3) != 599186) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            if (i9 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i4 != 0) {
                z7 = true;
            } else {
                z7 = z3;
            }
            if (i6 != 0) {
                z8 = true;
            } else {
                z8 = z2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1368136524, i3, -1, "androidx.compose.foundation.BasicTooltipBoxAndroid (BasicTooltip.android.kt:61)");
            }
            composer2 = composerStartRestartGroup;
            BasicTooltipKt.BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier3, z7, z8, false, bm3Var2, composer2, (524286 & i3) | ((i3 << 3) & 29360128), 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            z5 = z7;
            z6 = z8;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            z5 = z3;
            z6 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ci0
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return BasicTooltip_androidKt.BasicTooltipBoxAndroid$lambda$0(popupPositionProvider, bm3Var, basicTooltipState, modifier2, z5, z6, bm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 BasicTooltipBoxAndroid$lambda$0(PopupPositionProvider popupPositionProvider, bm3 bm3Var, BasicTooltipState basicTooltipState, Modifier modifier, boolean z, boolean z2, bm3 bm3Var2, int i, int i2, Composer composer, int i3) {
        BasicTooltipBox(popupPositionProvider, bm3Var, basicTooltipState, modifier, z, z2, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }
}

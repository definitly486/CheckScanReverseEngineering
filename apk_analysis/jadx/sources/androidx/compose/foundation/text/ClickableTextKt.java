package androidx.compose.foundation.text;

import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bf;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.ol1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class ClickableTextKt {
    /* JADX WARN: Code duplicated, block: B:100:0x011e  */
    /* JADX WARN: Code duplicated, block: B:102:0x0124  */
    /* JADX WARN: Code duplicated, block: B:104:0x0130  */
    /* JADX WARN: Code duplicated, block: B:106:0x013b  */
    /* JADX WARN: Code duplicated, block: B:109:0x0143  */
    /* JADX WARN: Code duplicated, block: B:112:0x0158  */
    /* JADX WARN: Code duplicated, block: B:115:0x016c  */
    /* JADX WARN: Code duplicated, block: B:116:0x016e  */
    /* JADX WARN: Code duplicated, block: B:119:0x0175  */
    /* JADX WARN: Code duplicated, block: B:121:0x017b  */
    /* JADX WARN: Code duplicated, block: B:124:0x0195  */
    /* JADX WARN: Code duplicated, block: B:125:0x0197  */
    /* JADX WARN: Code duplicated, block: B:128:0x019e  */
    /* JADX WARN: Code duplicated, block: B:130:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:133:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:136:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:139:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:141:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0043  */
    /* JADX WARN: Code duplicated, block: B:27:0x0047  */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x0059  */
    /* JADX WARN: Code duplicated, block: B:36:0x005e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0074  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:49:0x007d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:56:0x0091  */
    /* JADX WARN: Code duplicated, block: B:57:0x0096  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00af  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:91:0x0101  */
    /* JADX WARN: Code duplicated, block: B:94:0x0105  */
    /* JADX WARN: Code duplicated, block: B:95:0x0107  */
    /* JADX WARN: Code duplicated, block: B:97:0x010b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0114  */
    @ul2
    /* JADX INFO: renamed from: ClickableText-4YKlhWE, reason: not valid java name */
    public static final void m2464ClickableText4YKlhWE(final AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, boolean z, int i, int i2, nl3<? super TextLayoutResult, j59> nl3Var, final nl3<? super Integer, j59> nl3Var2, Composer composer, final int i3, final int i4) {
        int i5;
        Modifier modifier2;
        int i6;
        TextStyle textStyle2;
        int i7;
        int i8;
        int i9;
        int i10;
        int iM8977getClipgIe3tQ8;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z2;
        Composer composer2;
        final boolean z3;
        final int i17;
        final TextStyle textStyle3;
        final nl3<? super TextLayoutResult, j59> nl3Var3;
        final Modifier modifier3;
        final int i18;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        TextStyle textStyle4;
        boolean z4;
        int i19;
        int i20;
        nl3<? super TextLayoutResult, j59> nl3Var4;
        Object objRememberedValue;
        Composer.Companion companion;
        MutableState mutableState;
        boolean z5;
        Object objRememberedValue2;
        boolean z6;
        Object objRememberedValue3;
        Object objRememberedValue4;
        int i21;
        Composer composerStartRestartGroup = composer.startRestartGroup(-246609449);
        if ((i3 & 6) == 0) {
            i5 = (composerStartRestartGroup.changed(annotatedString) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i22 = i4 & 2;
        if (i22 == 0) {
            if ((i3 & 48) == 0) {
                modifier2 = modifier;
                i5 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            i6 = i4 & 4;
            if (i6 != 0) {
                if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    textStyle2 = textStyle;
                    if (composerStartRestartGroup.changed(textStyle2)) {
                        i7 = 256;
                    } else {
                        i7 = 128;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 8;
                if (i8 != 0) {
                    if ((i3 & 3072) == 0) {
                        if (composerStartRestartGroup.changed(z)) {
                            i9 = 2048;
                        } else {
                            i9 = 1024;
                        }
                        i5 |= i9;
                    }
                    i10 = i4 & 16;
                    if (i10 != 0) {
                        if ((i3 & 24576) == 0) {
                            iM8977getClipgIe3tQ8 = i;
                            if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                                i11 = 16384;
                            } else {
                                i11 = 8192;
                            }
                            i5 |= i11;
                        }
                        i12 = i4 & 32;
                        if (i12 != 0) {
                            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(i2)) {
                                i13 = 131072;
                            } else {
                                i13 = 65536;
                            }
                            i5 |= i13;
                        }
                        i14 = i4 & 64;
                        if (i14 != 0) {
                            i5 |= 1572864;
                        } else if ((i3 & 1572864) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                                i15 = 1048576;
                            } else {
                                i15 = 524288;
                            }
                            i5 |= i15;
                        }
                        if ((i3 & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                                i21 = 8388608;
                            } else {
                                i21 = 4194304;
                            }
                            i5 |= i21;
                        }
                        i16 = 1;
                        if ((i5 & 4793491) != 4793490) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if (i6 != 0) {
                                textStyle4 = TextStyle.Companion.getDefault();
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if (i8 != 0) {
                                z4 = true;
                            } else {
                                z4 = z;
                            }
                            if (i10 != 0) {
                                iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                            }
                            if (i12 != 0) {
                                i20 = Integer.MAX_VALUE;
                                i19 = i14;
                            } else {
                                i19 = i14;
                                i20 = i2;
                            }
                            if (i19 != 0) {
                                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                    objRememberedValue4 = new bf(i16);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                }
                                nl3Var4 = (nl3) objRememberedValue4;
                            } else {
                                nl3Var4 = nl3Var;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                            }
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            mutableState = (MutableState) objRememberedValue;
                            Modifier.Companion companion2 = Modifier.Companion;
                            if ((29360128 & i5) == 8388608) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z5 || objRememberedValue2 == companion.getEmpty()) {
                                objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierThen = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion2, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                            if ((i5 & 3670016) == 1048576) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (z6 || objRememberedValue3 == companion.getEmpty()) {
                                objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            composer2 = composerStartRestartGroup;
                            BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            nl3Var3 = nl3Var4;
                            textStyle3 = textStyle4;
                            z3 = z4;
                            i17 = i20;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            z3 = z;
                            i17 = i2;
                            textStyle3 = textStyle2;
                            nl3Var3 = nl3Var;
                        }
                        modifier3 = modifier2;
                        i18 = iM8977getClipgIe3tQ8;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i5 |= 24576;
                    iM8977getClipgIe3tQ8 = i;
                    i12 = i4 & 32;
                    if (i12 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i5 |= i13;
                    }
                    i14 = i4 & 64;
                    if (i14 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 1048576;
                        } else {
                            i15 = 524288;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i21 = 8388608;
                        } else {
                            i21 = 4194304;
                        }
                        i5 |= i21;
                    }
                    i16 = 1;
                    if ((i5 & 4793491) != 4793490) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i8 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i10 != 0) {
                            iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                        }
                        if (i12 != 0) {
                            i20 = Integer.MAX_VALUE;
                            i19 = i14;
                        } else {
                            i19 = i14;
                            i20 = i2;
                        }
                        if (i19 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new bf(i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            nl3Var4 = (nl3) objRememberedValue4;
                        } else {
                            nl3Var4 = nl3Var;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableState = (MutableState) objRememberedValue;
                        Modifier.Companion companion3 = Modifier.Companion;
                        if ((29360128 & i5) == 8388608) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierThen2 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion3, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                        if ((i5 & 3670016) == 1048576) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        composer2 = composerStartRestartGroup;
                        BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen2, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        nl3Var3 = nl3Var4;
                        textStyle3 = textStyle4;
                        z3 = z4;
                        i17 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z3 = z;
                        i17 = i2;
                        textStyle3 = textStyle2;
                        nl3Var3 = nl3Var;
                    }
                    modifier3 = modifier2;
                    i18 = iM8977getClipgIe3tQ8;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 3072;
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        iM8977getClipgIe3tQ8 = i;
                        if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i5 |= i11;
                    }
                    i12 = i4 & 32;
                    if (i12 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i5 |= i13;
                    }
                    i14 = i4 & 64;
                    if (i14 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 1048576;
                        } else {
                            i15 = 524288;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i21 = 8388608;
                        } else {
                            i21 = 4194304;
                        }
                        i5 |= i21;
                    }
                    i16 = 1;
                    if ((i5 & 4793491) != 4793490) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i8 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i10 != 0) {
                            iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                        }
                        if (i12 != 0) {
                            i20 = Integer.MAX_VALUE;
                            i19 = i14;
                        } else {
                            i19 = i14;
                            i20 = i2;
                        }
                        if (i19 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new bf(i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            nl3Var4 = (nl3) objRememberedValue4;
                        } else {
                            nl3Var4 = nl3Var;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableState = (MutableState) objRememberedValue;
                        Modifier.Companion companion4 = Modifier.Companion;
                        if ((29360128 & i5) == 8388608) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierThen3 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion4, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                        if ((i5 & 3670016) == 1048576) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        composer2 = composerStartRestartGroup;
                        BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen3, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        nl3Var3 = nl3Var4;
                        textStyle3 = textStyle4;
                        z3 = z4;
                        i17 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z3 = z;
                        i17 = i2;
                        textStyle3 = textStyle2;
                        nl3Var3 = nl3Var;
                    }
                    modifier3 = modifier2;
                    i18 = iM8977getClipgIe3tQ8;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                iM8977getClipgIe3tQ8 = i;
                i12 = i4 & 32;
                if (i12 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i5 |= i13;
                }
                i14 = i4 & 64;
                if (i14 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i5 |= i15;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i5 |= i21;
                }
                i16 = 1;
                if ((i5 & 4793491) != 4793490) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i10 != 0) {
                        iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                    }
                    if (i12 != 0) {
                        i20 = Integer.MAX_VALUE;
                        i19 = i14;
                    } else {
                        i19 = i14;
                        i20 = i2;
                    }
                    if (i19 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new bf(i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var4 = (nl3) objRememberedValue4;
                    } else {
                        nl3Var4 = nl3Var;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableState = (MutableState) objRememberedValue;
                    Modifier.Companion companion5 = Modifier.Companion;
                    if ((29360128 & i5) == 8388608) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierThen4 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion5, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                    if ((i5 & 3670016) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen4, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    nl3Var3 = nl3Var4;
                    textStyle3 = textStyle4;
                    z3 = z4;
                    i17 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z3 = z;
                    i17 = i2;
                    textStyle3 = textStyle2;
                    nl3Var3 = nl3Var;
                }
                modifier3 = modifier2;
                i18 = iM8977getClipgIe3tQ8;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle2 = textStyle;
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        iM8977getClipgIe3tQ8 = i;
                        if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i5 |= i11;
                    }
                    i12 = i4 & 32;
                    if (i12 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i5 |= i13;
                    }
                    i14 = i4 & 64;
                    if (i14 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 1048576;
                        } else {
                            i15 = 524288;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i21 = 8388608;
                        } else {
                            i21 = 4194304;
                        }
                        i5 |= i21;
                    }
                    i16 = 1;
                    if ((i5 & 4793491) != 4793490) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i8 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i10 != 0) {
                            iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                        }
                        if (i12 != 0) {
                            i20 = Integer.MAX_VALUE;
                            i19 = i14;
                        } else {
                            i19 = i14;
                            i20 = i2;
                        }
                        if (i19 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new bf(i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            nl3Var4 = (nl3) objRememberedValue4;
                        } else {
                            nl3Var4 = nl3Var;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableState = (MutableState) objRememberedValue;
                        Modifier.Companion companion6 = Modifier.Companion;
                        if ((29360128 & i5) == 8388608) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierThen5 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion6, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                        if ((i5 & 3670016) == 1048576) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        composer2 = composerStartRestartGroup;
                        BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen5, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        nl3Var3 = nl3Var4;
                        textStyle3 = textStyle4;
                        z3 = z4;
                        i17 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z3 = z;
                        i17 = i2;
                        textStyle3 = textStyle2;
                        nl3Var3 = nl3Var;
                    }
                    modifier3 = modifier2;
                    i18 = iM8977getClipgIe3tQ8;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                iM8977getClipgIe3tQ8 = i;
                i12 = i4 & 32;
                if (i12 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i5 |= i13;
                }
                i14 = i4 & 64;
                if (i14 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i5 |= i15;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i5 |= i21;
                }
                i16 = 1;
                if ((i5 & 4793491) != 4793490) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i10 != 0) {
                        iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                    }
                    if (i12 != 0) {
                        i20 = Integer.MAX_VALUE;
                        i19 = i14;
                    } else {
                        i19 = i14;
                        i20 = i2;
                    }
                    if (i19 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new bf(i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var4 = (nl3) objRememberedValue4;
                    } else {
                        nl3Var4 = nl3Var;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableState = (MutableState) objRememberedValue;
                    Modifier.Companion companion7 = Modifier.Companion;
                    if ((29360128 & i5) == 8388608) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierThen6 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion7, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                    if ((i5 & 3670016) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen6, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    nl3Var3 = nl3Var4;
                    textStyle3 = textStyle4;
                    z3 = z4;
                    i17 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z3 = z;
                    i17 = i2;
                    textStyle3 = textStyle2;
                    nl3Var3 = nl3Var;
                }
                modifier3 = modifier2;
                i18 = iM8977getClipgIe3tQ8;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    iM8977getClipgIe3tQ8 = i;
                    if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i5 |= i11;
                }
                i12 = i4 & 32;
                if (i12 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i5 |= i13;
                }
                i14 = i4 & 64;
                if (i14 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i5 |= i15;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i5 |= i21;
                }
                i16 = 1;
                if ((i5 & 4793491) != 4793490) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i10 != 0) {
                        iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                    }
                    if (i12 != 0) {
                        i20 = Integer.MAX_VALUE;
                        i19 = i14;
                    } else {
                        i19 = i14;
                        i20 = i2;
                    }
                    if (i19 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new bf(i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var4 = (nl3) objRememberedValue4;
                    } else {
                        nl3Var4 = nl3Var;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableState = (MutableState) objRememberedValue;
                    Modifier.Companion companion8 = Modifier.Companion;
                    if ((29360128 & i5) == 8388608) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierThen7 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion8, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                    if ((i5 & 3670016) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen7, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    nl3Var3 = nl3Var4;
                    textStyle3 = textStyle4;
                    z3 = z4;
                    i17 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z3 = z;
                    i17 = i2;
                    textStyle3 = textStyle2;
                    nl3Var3 = nl3Var;
                }
                modifier3 = modifier2;
                i18 = iM8977getClipgIe3tQ8;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            iM8977getClipgIe3tQ8 = i;
            i12 = i4 & 32;
            if (i12 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i13 = 131072;
                } else {
                    i13 = 65536;
                }
                i5 |= i13;
            }
            i14 = i4 & 64;
            if (i14 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 1048576;
                } else {
                    i15 = 524288;
                }
                i5 |= i15;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                    i21 = 8388608;
                } else {
                    i21 = 4194304;
                }
                i5 |= i21;
            }
            i16 = 1;
            if ((i5 & 4793491) != 4793490) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    textStyle4 = TextStyle.Companion.getDefault();
                } else {
                    textStyle4 = textStyle2;
                }
                if (i8 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i10 != 0) {
                    iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                }
                if (i12 != 0) {
                    i20 = Integer.MAX_VALUE;
                    i19 = i14;
                } else {
                    i19 = i14;
                    i20 = i2;
                }
                if (i19 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new bf(i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3Var4 = (nl3) objRememberedValue4;
                } else {
                    nl3Var4 = nl3Var;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableState = (MutableState) objRememberedValue;
                Modifier.Companion companion9 = Modifier.Companion;
                if ((29360128 & i5) == 8388608) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierThen8 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion9, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                if ((i5 & 3670016) == 1048576) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                composer2 = composerStartRestartGroup;
                BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen8, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                nl3Var3 = nl3Var4;
                textStyle3 = textStyle4;
                z3 = z4;
                i17 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z3 = z;
                i17 = i2;
                textStyle3 = textStyle2;
                nl3Var3 = nl3Var;
            }
            modifier3 = modifier2;
            i18 = iM8977getClipgIe3tQ8;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 48;
        modifier2 = modifier;
        i6 = i4 & 4;
        if (i6 != 0) {
            if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                textStyle2 = textStyle;
                if (composerStartRestartGroup.changed(textStyle2)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i5 |= i7;
            }
            i8 = i4 & 8;
            if (i8 != 0) {
                if ((i3 & 3072) == 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i9 = 2048;
                    } else {
                        i9 = 1024;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 16;
                if (i10 != 0) {
                    if ((i3 & 24576) == 0) {
                        iM8977getClipgIe3tQ8 = i;
                        if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i5 |= i11;
                    }
                    i12 = i4 & 32;
                    if (i12 != 0) {
                        i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(i2)) {
                            i13 = 131072;
                        } else {
                            i13 = 65536;
                        }
                        i5 |= i13;
                    }
                    i14 = i4 & 64;
                    if (i14 != 0) {
                        i5 |= 1572864;
                    } else if ((i3 & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i15 = 1048576;
                        } else {
                            i15 = 524288;
                        }
                        i5 |= i15;
                    }
                    if ((i3 & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                            i21 = 8388608;
                        } else {
                            i21 = 4194304;
                        }
                        i5 |= i21;
                    }
                    i16 = 1;
                    if ((i5 & 4793491) != 4793490) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if (i6 != 0) {
                            textStyle4 = TextStyle.Companion.getDefault();
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if (i8 != 0) {
                            z4 = true;
                        } else {
                            z4 = z;
                        }
                        if (i10 != 0) {
                            iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                        }
                        if (i12 != 0) {
                            i20 = Integer.MAX_VALUE;
                            i19 = i14;
                        } else {
                            i19 = i14;
                            i20 = i2;
                        }
                        if (i19 != 0) {
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                                objRememberedValue4 = new bf(i16);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                            }
                            nl3Var4 = (nl3) objRememberedValue4;
                        } else {
                            nl3Var4 = nl3Var;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                        }
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableState = (MutableState) objRememberedValue;
                        Modifier.Companion companion10 = Modifier.Companion;
                        if ((29360128 & i5) == 8388608) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierThen9 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion10, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                        if ((i5 & 3670016) == 1048576) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (z6) {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        composer2 = composerStartRestartGroup;
                        BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen9, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        nl3Var3 = nl3Var4;
                        textStyle3 = textStyle4;
                        z3 = z4;
                        i17 = i20;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        z3 = z;
                        i17 = i2;
                        textStyle3 = textStyle2;
                        nl3Var3 = nl3Var;
                    }
                    modifier3 = modifier2;
                    i18 = iM8977getClipgIe3tQ8;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i5 |= 24576;
                iM8977getClipgIe3tQ8 = i;
                i12 = i4 & 32;
                if (i12 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i5 |= i13;
                }
                i14 = i4 & 64;
                if (i14 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i5 |= i15;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i5 |= i21;
                }
                i16 = 1;
                if ((i5 & 4793491) != 4793490) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i10 != 0) {
                        iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                    }
                    if (i12 != 0) {
                        i20 = Integer.MAX_VALUE;
                        i19 = i14;
                    } else {
                        i19 = i14;
                        i20 = i2;
                    }
                    if (i19 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new bf(i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var4 = (nl3) objRememberedValue4;
                    } else {
                        nl3Var4 = nl3Var;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableState = (MutableState) objRememberedValue;
                    Modifier.Companion companion11 = Modifier.Companion;
                    if ((29360128 & i5) == 8388608) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierThen10 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion11, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                    if ((i5 & 3670016) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen10, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    nl3Var3 = nl3Var4;
                    textStyle3 = textStyle4;
                    z3 = z4;
                    i17 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z3 = z;
                    i17 = i2;
                    textStyle3 = textStyle2;
                    nl3Var3 = nl3Var;
                }
                modifier3 = modifier2;
                i18 = iM8977getClipgIe3tQ8;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 3072;
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    iM8977getClipgIe3tQ8 = i;
                    if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i5 |= i11;
                }
                i12 = i4 & 32;
                if (i12 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i5 |= i13;
                }
                i14 = i4 & 64;
                if (i14 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i5 |= i15;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i5 |= i21;
                }
                i16 = 1;
                if ((i5 & 4793491) != 4793490) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i10 != 0) {
                        iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                    }
                    if (i12 != 0) {
                        i20 = Integer.MAX_VALUE;
                        i19 = i14;
                    } else {
                        i19 = i14;
                        i20 = i2;
                    }
                    if (i19 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new bf(i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var4 = (nl3) objRememberedValue4;
                    } else {
                        nl3Var4 = nl3Var;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableState = (MutableState) objRememberedValue;
                    Modifier.Companion companion12 = Modifier.Companion;
                    if ((29360128 & i5) == 8388608) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierThen11 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion12, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                    if ((i5 & 3670016) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen11, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    nl3Var3 = nl3Var4;
                    textStyle3 = textStyle4;
                    z3 = z4;
                    i17 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z3 = z;
                    i17 = i2;
                    textStyle3 = textStyle2;
                    nl3Var3 = nl3Var;
                }
                modifier3 = modifier2;
                i18 = iM8977getClipgIe3tQ8;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            iM8977getClipgIe3tQ8 = i;
            i12 = i4 & 32;
            if (i12 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i13 = 131072;
                } else {
                    i13 = 65536;
                }
                i5 |= i13;
            }
            i14 = i4 & 64;
            if (i14 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 1048576;
                } else {
                    i15 = 524288;
                }
                i5 |= i15;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                    i21 = 8388608;
                } else {
                    i21 = 4194304;
                }
                i5 |= i21;
            }
            i16 = 1;
            if ((i5 & 4793491) != 4793490) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    textStyle4 = TextStyle.Companion.getDefault();
                } else {
                    textStyle4 = textStyle2;
                }
                if (i8 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i10 != 0) {
                    iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                }
                if (i12 != 0) {
                    i20 = Integer.MAX_VALUE;
                    i19 = i14;
                } else {
                    i19 = i14;
                    i20 = i2;
                }
                if (i19 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new bf(i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3Var4 = (nl3) objRememberedValue4;
                } else {
                    nl3Var4 = nl3Var;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableState = (MutableState) objRememberedValue;
                Modifier.Companion companion13 = Modifier.Companion;
                if ((29360128 & i5) == 8388608) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierThen12 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion13, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                if ((i5 & 3670016) == 1048576) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                composer2 = composerStartRestartGroup;
                BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen12, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                nl3Var3 = nl3Var4;
                textStyle3 = textStyle4;
                z3 = z4;
                i17 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z3 = z;
                i17 = i2;
                textStyle3 = textStyle2;
                nl3Var3 = nl3Var;
            }
            modifier3 = modifier2;
            i18 = iM8977getClipgIe3tQ8;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        textStyle2 = textStyle;
        i8 = i4 & 8;
        if (i8 != 0) {
            if ((i3 & 3072) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i5 |= i9;
            }
            i10 = i4 & 16;
            if (i10 != 0) {
                if ((i3 & 24576) == 0) {
                    iM8977getClipgIe3tQ8 = i;
                    if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                        i11 = 16384;
                    } else {
                        i11 = 8192;
                    }
                    i5 |= i11;
                }
                i12 = i4 & 32;
                if (i12 != 0) {
                    i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(i2)) {
                        i13 = 131072;
                    } else {
                        i13 = 65536;
                    }
                    i5 |= i13;
                }
                i14 = i4 & 64;
                if (i14 != 0) {
                    i5 |= 1572864;
                } else if ((i3 & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i5 |= i15;
                }
                if ((i3 & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                        i21 = 8388608;
                    } else {
                        i21 = 4194304;
                    }
                    i5 |= i21;
                }
                i16 = 1;
                if ((i5 & 4793491) != 4793490) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if (i6 != 0) {
                        textStyle4 = TextStyle.Companion.getDefault();
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    } else {
                        z4 = z;
                    }
                    if (i10 != 0) {
                        iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                    }
                    if (i12 != 0) {
                        i20 = Integer.MAX_VALUE;
                        i19 = i14;
                    } else {
                        i19 = i14;
                        i20 = i2;
                    }
                    if (i19 != 0) {
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new bf(i16);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        nl3Var4 = (nl3) objRememberedValue4;
                    } else {
                        nl3Var4 = nl3Var;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                    }
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    mutableState = (MutableState) objRememberedValue;
                    Modifier.Companion companion14 = Modifier.Companion;
                    if ((29360128 & i5) == 8388608) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierThen13 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion14, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                    if ((i5 & 3670016) == 1048576) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (z6) {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    composer2 = composerStartRestartGroup;
                    BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen13, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    nl3Var3 = nl3Var4;
                    textStyle3 = textStyle4;
                    z3 = z4;
                    i17 = i20;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    z3 = z;
                    i17 = i2;
                    textStyle3 = textStyle2;
                    nl3Var3 = nl3Var;
                }
                modifier3 = modifier2;
                i18 = iM8977getClipgIe3tQ8;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i5 |= 24576;
            iM8977getClipgIe3tQ8 = i;
            i12 = i4 & 32;
            if (i12 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i13 = 131072;
                } else {
                    i13 = 65536;
                }
                i5 |= i13;
            }
            i14 = i4 & 64;
            if (i14 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 1048576;
                } else {
                    i15 = 524288;
                }
                i5 |= i15;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                    i21 = 8388608;
                } else {
                    i21 = 4194304;
                }
                i5 |= i21;
            }
            i16 = 1;
            if ((i5 & 4793491) != 4793490) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    textStyle4 = TextStyle.Companion.getDefault();
                } else {
                    textStyle4 = textStyle2;
                }
                if (i8 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i10 != 0) {
                    iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                }
                if (i12 != 0) {
                    i20 = Integer.MAX_VALUE;
                    i19 = i14;
                } else {
                    i19 = i14;
                    i20 = i2;
                }
                if (i19 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new bf(i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3Var4 = (nl3) objRememberedValue4;
                } else {
                    nl3Var4 = nl3Var;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableState = (MutableState) objRememberedValue;
                Modifier.Companion companion15 = Modifier.Companion;
                if ((29360128 & i5) == 8388608) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierThen14 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion15, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                if ((i5 & 3670016) == 1048576) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                composer2 = composerStartRestartGroup;
                BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen14, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                nl3Var3 = nl3Var4;
                textStyle3 = textStyle4;
                z3 = z4;
                i17 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z3 = z;
                i17 = i2;
                textStyle3 = textStyle2;
                nl3Var3 = nl3Var;
            }
            modifier3 = modifier2;
            i18 = iM8977getClipgIe3tQ8;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 3072;
        i10 = i4 & 16;
        if (i10 != 0) {
            if ((i3 & 24576) == 0) {
                iM8977getClipgIe3tQ8 = i;
                if (composerStartRestartGroup.changed(iM8977getClipgIe3tQ8)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i5 |= i11;
            }
            i12 = i4 & 32;
            if (i12 != 0) {
                i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(i2)) {
                    i13 = 131072;
                } else {
                    i13 = 65536;
                }
                i5 |= i13;
            }
            i14 = i4 & 64;
            if (i14 != 0) {
                i5 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i15 = 1048576;
                } else {
                    i15 = 524288;
                }
                i5 |= i15;
            }
            if ((i3 & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                    i21 = 8388608;
                } else {
                    i21 = 4194304;
                }
                i5 |= i21;
            }
            i16 = 1;
            if ((i5 & 4793491) != 4793490) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if (i6 != 0) {
                    textStyle4 = TextStyle.Companion.getDefault();
                } else {
                    textStyle4 = textStyle2;
                }
                if (i8 != 0) {
                    z4 = true;
                } else {
                    z4 = z;
                }
                if (i10 != 0) {
                    iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
                }
                if (i12 != 0) {
                    i20 = Integer.MAX_VALUE;
                    i19 = i14;
                } else {
                    i19 = i14;
                    i20 = i2;
                }
                if (i19 != 0) {
                    objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                        objRememberedValue4 = new bf(i16);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                    }
                    nl3Var4 = (nl3) objRememberedValue4;
                } else {
                    nl3Var4 = nl3Var;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue == companion.getEmpty()) {
                    objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                mutableState = (MutableState) objRememberedValue;
                Modifier.Companion companion16 = Modifier.Companion;
                if ((29360128 & i5) == 8388608) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (z5) {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                } else {
                    objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                Modifier modifierThen15 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion16, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
                if ((i5 & 3670016) == 1048576) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z6) {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                composer2 = composerStartRestartGroup;
                BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen15, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                nl3Var3 = nl3Var4;
                textStyle3 = textStyle4;
                z3 = z4;
                i17 = i20;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                z3 = z;
                i17 = i2;
                textStyle3 = textStyle2;
                nl3Var3 = nl3Var;
            }
            modifier3 = modifier2;
            i18 = iM8977getClipgIe3tQ8;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 24576;
        iM8977getClipgIe3tQ8 = i;
        i12 = i4 & 32;
        if (i12 != 0) {
            i5 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(i2)) {
                i13 = 131072;
            } else {
                i13 = 65536;
            }
            i5 |= i13;
        }
        i14 = i4 & 64;
        if (i14 != 0) {
            i5 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i15 = 1048576;
            } else {
                i15 = 524288;
            }
            i5 |= i15;
        }
        if ((i3 & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var2)) {
                i21 = 8388608;
            } else {
                i21 = 4194304;
            }
            i5 |= i21;
        }
        i16 = 1;
        if ((i5 & 4793491) != 4793490) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i5 & 1)) {
            if (i22 != 0) {
                modifier2 = Modifier.Companion;
            }
            if (i6 != 0) {
                textStyle4 = TextStyle.Companion.getDefault();
            } else {
                textStyle4 = textStyle2;
            }
            if (i8 != 0) {
                z4 = true;
            } else {
                z4 = z;
            }
            if (i10 != 0) {
                iM8977getClipgIe3tQ8 = TextOverflow.Companion.m8977getClipgIe3tQ8();
            }
            if (i12 != 0) {
                i20 = Integer.MAX_VALUE;
                i19 = i14;
            } else {
                i19 = i14;
                i20 = i2;
            }
            if (i19 != 0) {
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new bf(i16);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                nl3Var4 = (nl3) objRememberedValue4;
            } else {
                nl3Var4 = nl3Var;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-246609449, i5, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            mutableState = (MutableState) objRememberedValue;
            Modifier.Companion companion17 = Modifier.Companion;
            if ((29360128 & i5) == 8388608) {
                z5 = true;
            } else {
                z5 = false;
            }
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z5) {
                objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, nl3Var2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            Modifier modifierThen16 = modifier2.then(SuspendingPointerInputFilterKt.pointerInput(companion17, nl3Var2, (PointerInputEventHandler) objRememberedValue2));
            if ((i5 & 3670016) == 1048576) {
                z6 = true;
            } else {
                z6 = false;
            }
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z6) {
                objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new ol1(0, mutableState, nl3Var4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            composer2 = composerStartRestartGroup;
            BasicTextKt.m2457BasicTextCL7eQgs(annotatedString, modifierThen16, textStyle4, (nl3) objRememberedValue3, iM8977getClipgIe3tQ8, z4, i20, 0, null, null, null, composer2, (58254 & i5) | (458752 & (i5 << 6)) | ((i5 << 3) & 3670016), 0, 1920);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            nl3Var3 = nl3Var4;
            textStyle3 = textStyle4;
            z3 = z4;
            i17 = i20;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            z3 = z;
            i17 = i2;
            textStyle3 = textStyle2;
            nl3Var3 = nl3Var;
        }
        modifier3 = modifier2;
        i18 = iM8977getClipgIe3tQ8;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pl1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(annotatedString, modifier3, textStyle3, z3, i18, i17, nl3Var3, nl3Var2, i3, i4, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClickableText_4YKlhWE$lambda$0$0(TextLayoutResult textLayoutResult) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClickableText_4YKlhWE$lambda$3$0(MutableState mutableState, nl3 nl3Var, TextLayoutResult textLayoutResult) {
        mutableState.setValue(textLayoutResult);
        nl3Var.invoke(textLayoutResult);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ClickableText_4YKlhWE$lambda$4(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, boolean z, int i, int i2, nl3 nl3Var, nl3 nl3Var2, int i3, int i4, Composer composer, int i5) {
        m2464ClickableText4YKlhWE(annotatedString, modifier, textStyle, z, i, i2, nl3Var, nl3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return j59.a;
    }
}

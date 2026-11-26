package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.text.input.OutputTransformation;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldDecorator;
import androidx.compose.foundation.text.input.TextFieldLineLimits;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.internal.TextFieldType;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.OutlinedTextFieldTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ul2;
import defpackage.zr6;

/* JADX INFO: loaded from: classes2.dex */
public final class OutlinedTextFieldDefaults {
    public static final int $stable = 0;
    public static final OutlinedTextFieldDefaults INSTANCE = new OutlinedTextFieldDefaults();
    private static final float MinHeight = Dp.m9042constructorimpl(56.0f);
    private static final float MinWidth = Dp.m9042constructorimpl(280.0f);
    private static final float UnfocusedBorderThickness = Dp.m9042constructorimpl(1.0f);
    private static final float FocusedBorderThickness = Dp.m9042constructorimpl(2.0f);

    /* JADX INFO: renamed from: androidx.compose.material3.OutlinedTextFieldDefaults$decorator$2, reason: invalid class name */
    public static final class AnonymousClass2 implements TextFieldDecorator {
        final /* synthetic */ TextFieldColors $colors;
        final /* synthetic */ bm3<Composer, Integer, j59> $container;
        final /* synthetic */ PaddingValues $contentPadding;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ InteractionSource $interactionSource;
        final /* synthetic */ boolean $isError;
        final /* synthetic */ dm3<TextFieldLabelScope, Composer, Integer, j59> $label;
        final /* synthetic */ TextFieldLabelPosition $labelPosition;
        final /* synthetic */ bm3<Composer, Integer, j59> $leadingIcon;
        final /* synthetic */ TextFieldLineLimits $lineLimits;
        final /* synthetic */ OutputTransformation $outputTransformation;
        final /* synthetic */ bm3<Composer, Integer, j59> $placeholder;
        final /* synthetic */ bm3<Composer, Integer, j59> $prefix;
        final /* synthetic */ TextFieldState $state;
        final /* synthetic */ bm3<Composer, Integer, j59> $suffix;
        final /* synthetic */ bm3<Composer, Integer, j59> $supportingText;
        final /* synthetic */ bm3<Composer, Integer, j59> $trailingIcon;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(OutputTransformation outputTransformation, TextFieldState textFieldState, TextFieldLineLimits textFieldLineLimits, TextFieldLabelPosition textFieldLabelPosition, dm3<? super TextFieldLabelScope, ? super Composer, ? super Integer, j59> dm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, bm3<? super Composer, ? super Integer, j59> bm3Var3, bm3<? super Composer, ? super Integer, j59> bm3Var4, bm3<? super Composer, ? super Integer, j59> bm3Var5, bm3<? super Composer, ? super Integer, j59> bm3Var6, boolean z, boolean z2, InteractionSource interactionSource, PaddingValues paddingValues, TextFieldColors textFieldColors, bm3<? super Composer, ? super Integer, j59> bm3Var7) {
            this.$outputTransformation = outputTransformation;
            this.$state = textFieldState;
            this.$lineLimits = textFieldLineLimits;
            this.$labelPosition = textFieldLabelPosition;
            this.$label = dm3Var;
            this.$placeholder = bm3Var;
            this.$leadingIcon = bm3Var2;
            this.$trailingIcon = bm3Var3;
            this.$prefix = bm3Var4;
            this.$suffix = bm3Var5;
            this.$supportingText = bm3Var6;
            this.$enabled = z;
            this.$isError = z2;
            this.$interactionSource = interactionSource;
            this.$contentPadding = paddingValues;
            this.$colors = textFieldColors;
            this.$container = bm3Var7;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 Decoration$lambda$2(AnonymousClass2 anonymousClass2, bm3 bm3Var, int i, Composer composer, int i2) {
            anonymousClass2.Decoration(bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            return j59.a;
        }

        @Override // androidx.compose.foundation.text.input.TextFieldDecorator
        public final void Decoration(final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
            int i2;
            Composer composer2;
            CharSequence charSequenceAsCharSequence;
            Composer composerStartRestartGroup = composer.startRestartGroup(794272399);
            if ((i & 6) == 0) {
                i2 = i | (composerStartRestartGroup.changedInstance(bm3Var) ? 4 : 2);
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= composerStartRestartGroup.changed(this) ? 32 : 16;
            }
            if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(794272399, i2, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.decorator.<no name provided>.Decoration (TextFieldDefaults.kt:994)");
                }
                OutputTransformation outputTransformation = this.$outputTransformation;
                TextFieldState textFieldState = this.$state;
                if (outputTransformation == null) {
                    charSequenceAsCharSequence = textFieldState.getText();
                } else {
                    TextFieldBuffer textFieldBufferStartEdit = textFieldState.startEdit();
                    try {
                        textFieldState.commitEdit(textFieldBufferStartEdit);
                        textFieldState.finishEditing();
                        OutputTransformation outputTransformation2 = this.$outputTransformation;
                        if (textFieldBufferStartEdit == null) {
                            aa4.j("buffer");
                            throw null;
                        }
                        outputTransformation2.transformOutput(textFieldBufferStartEdit);
                        charSequenceAsCharSequence = textFieldBufferStartEdit.asCharSequence();
                    } catch (Throwable th) {
                        textFieldState.finishEditing();
                        throw th;
                    }
                }
                composer2 = composerStartRestartGroup;
                TextFieldImplKt.CommonDecorationBox(TextFieldType.Outlined, charSequenceAsCharSequence, bm3Var, this.$labelPosition, this.$label, this.$placeholder, this.$leadingIcon, this.$trailingIcon, this.$prefix, this.$suffix, this.$supportingText, aa4.e(this.$lineLimits, TextFieldLineLimits.SingleLine.INSTANCE), this.$enabled, this.$isError, this.$interactionSource, this.$contentPadding, this.$colors, this.$container, composer2, ((i2 << 6) & 896) | 6, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
            }
            ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: androidx.compose.material3.e3
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.AnonymousClass2.Decoration$lambda$2(this.b, bm3Var, i, (Composer) obj, iIntValue);
                    }
                });
            }
        }
    }

    private OutlinedTextFieldDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 ContainerBox_nbWgWpA$lambda$7(OutlinedTextFieldDefaults outlinedTextFieldDefaults, boolean z, boolean z2, InteractionSource interactionSource, TextFieldColors textFieldColors, Shape shape, float f, float f2, int i, int i2, Composer composer, int i3) {
        outlinedTextFieldDefaults.m3720ContainerBoxnbWgWpA(z, z2, interactionSource, textFieldColors, shape, f, f2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Container_4EFweAY$lambda$0(OutlinedTextFieldDefaults outlinedTextFieldDefaults, boolean z, boolean z2, InteractionSource interactionSource, Modifier modifier, TextFieldColors textFieldColors, Shape shape, float f, float f2, int i, int i2, Composer composer, int i3) {
        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z2, interactionSource, modifier, textFieldColors, shape, f, f2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DecorationBox$lambda$3(OutlinedTextFieldDefaults outlinedTextFieldDefaults, String str, bm3 bm3Var, boolean z, boolean z2, VisualTransformation visualTransformation, InteractionSource interactionSource, boolean z3, bm3 bm3Var2, bm3 bm3Var3, bm3 bm3Var4, bm3 bm3Var5, bm3 bm3Var6, bm3 bm3Var7, bm3 bm3Var8, TextFieldColors textFieldColors, PaddingValues paddingValues, bm3 bm3Var9, int i, int i2, int i3, Composer composer, int i4) {
        outlinedTextFieldDefaults.DecorationBox(str, bm3Var, z, z2, visualTransformation, interactionSource, z3, bm3Var2, bm3Var3, bm3Var4, bm3Var5, bm3Var6, bm3Var7, bm3Var8, textFieldColors, paddingValues, bm3Var9, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }

    /* JADX INFO: renamed from: contentPadding-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ PaddingValues m3718contentPaddinga9UjIt4$default(OutlinedTextFieldDefaults outlinedTextFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 8) != 0) {
            f4 = TextFieldImplKt.getTextFieldPadding();
        }
        return outlinedTextFieldDefaults.m3722contentPaddinga9UjIt4(f, f2, f3, f4);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0106  */
    /* JADX WARN: Code duplicated, block: B:101:0x0108  */
    /* JADX WARN: Code duplicated, block: B:104:0x0111  */
    /* JADX WARN: Code duplicated, block: B:123:0x014e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x0150  */
    /* JADX WARN: Code duplicated, block: B:125:0x0153  */
    /* JADX WARN: Code duplicated, block: B:128:0x0158  */
    /* JADX WARN: Code duplicated, block: B:129:0x0163  */
    /* JADX WARN: Code duplicated, block: B:132:0x0168  */
    /* JADX WARN: Code duplicated, block: B:133:0x0171  */
    /* JADX WARN: Code duplicated, block: B:136:0x0176  */
    /* JADX WARN: Code duplicated, block: B:137:0x017b  */
    /* JADX WARN: Code duplicated, block: B:140:0x0180  */
    /* JADX WARN: Code duplicated, block: B:141:0x018b  */
    /* JADX WARN: Code duplicated, block: B:144:0x019a  */
    /* JADX WARN: Code duplicated, block: B:147:0x0209  */
    /* JADX WARN: Code duplicated, block: B:149:0x0212  */
    /* JADX WARN: Code duplicated, block: B:152:0x0221  */
    /* JADX WARN: Code duplicated, block: B:154:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0079  */
    /* JADX WARN: Code duplicated, block: B:48:0x007d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:54:0x008e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x0099  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:90:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:91:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:93:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:95:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:96:0x00fa  */
    /* JADX INFO: renamed from: Container-4EFweAY, reason: not valid java name */
    public final void m3719Container4EFweAY(final boolean z, final boolean z2, final InteractionSource interactionSource, Modifier modifier, TextFieldColors textFieldColors, Shape shape, float f, float f2, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        TextFieldColors textFieldColors2;
        Shape shape2;
        float f3;
        float f4;
        int i4;
        boolean z3;
        Composer composer2;
        final Modifier modifier3;
        final TextFieldColors textFieldColors3;
        final Shape shape3;
        final float f5;
        final float f6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        TextFieldColors textFieldColorsColors;
        Shape shape4;
        float f7;
        Modifier modifier5;
        int i5;
        TextFieldColors textFieldColors4;
        Shape shape5;
        float f8;
        float f9;
        Composer composerStartRestartGroup = composer.startRestartGroup(1035477640);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z2) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(interactionSource) ? 256 : 128;
        }
        int i6 = i2 & 8;
        if (i6 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    textFieldColors2 = textFieldColors;
                    int i7 = composerStartRestartGroup.changed(textFieldColors2) ? 16384 : 8192;
                    i3 |= i7;
                } else {
                    textFieldColors2 = textFieldColors;
                }
                i3 |= i7;
            } else {
                textFieldColors2 = textFieldColors;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    shape2 = shape;
                    int i8 = composerStartRestartGroup.changed(shape2) ? 131072 : 65536;
                    i3 |= i8;
                } else {
                    shape2 = shape;
                }
                i3 |= i8;
            } else {
                shape2 = shape;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    f3 = f;
                    int i9 = composerStartRestartGroup.changed(f3) ? 1048576 : 524288;
                    i3 |= i9;
                } else {
                    f3 = f;
                }
                i3 |= i9;
            } else {
                f3 = f;
            }
            if ((12582912 & i) == 0) {
                if ((i2 & 128) == 0) {
                    f4 = f2;
                    int i10 = composerStartRestartGroup.changed(f4) ? 8388608 : 4194304;
                    i3 |= i10;
                } else {
                    f4 = f2;
                }
                i3 |= i10;
            } else {
                f4 = f2;
            }
            if ((i2 & 256) != 0) {
                i3 |= 100663296;
            } else if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i4 = 67108864;
                } else {
                    i4 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i3 |= i4;
            }
            if ((38347923 & i3) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i6 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 16) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                        i3 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors2;
                    }
                    if ((i2 & 32) != 0) {
                        shape4 = INSTANCE.getShape(composerStartRestartGroup, 6);
                        i3 &= -458753;
                    } else {
                        shape4 = shape2;
                    }
                    if ((i2 & 64) != 0) {
                        f7 = FocusedBorderThickness;
                        i3 &= -3670017;
                    } else {
                        f7 = f3;
                    }
                    if ((i2 & 128) != 0) {
                        shape5 = shape4;
                        f9 = UnfocusedBorderThickness;
                        modifier5 = modifier4;
                        i5 = i3 & (-29360129);
                        textFieldColors4 = textFieldColorsColors;
                        f8 = f7;
                    } else {
                        modifier5 = modifier4;
                        i5 = i3;
                        textFieldColors4 = textFieldColorsColors;
                        shape5 = shape4;
                        f8 = f7;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1035477640, i5, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.Container (TextFieldDefaults.kt:1054)");
                    }
                    int i11 = i5 >> 6;
                    boolean zBooleanValue = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composerStartRestartGroup, i11 & 14).getValue().booleanValue();
                    State<BorderStroke> stateM4468animateBorderStrokeAsStateNuRrP5Q = TextFieldImplKt.m4468animateBorderStrokeAsStateNuRrP5Q(z, z2, zBooleanValue, textFieldColors4, f8, f9, composerStartRestartGroup, (i11 & 458752) | ((i5 >> 3) & 7168) | (i5 & 126) | (57344 & i11));
                    Modifier modifier6 = modifier5;
                    Shape shape6 = shape5;
                    final State<Color> stateM1161animateColorAsStateeuL9pac = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(textFieldColors4.m4000containerColorXeAY9LY$material3(z, z2, zBooleanValue), MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                    composer2 = composerStartRestartGroup;
                    BoxKt.Box(TextFieldImplKt.textFieldBackground(BorderKt.border(modifier6, stateM4468animateBorderStrokeAsStateNuRrP5Q.getValue(), shape6), new TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(new zr6(stateM1161animateColorAsStateeuL9pac) { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$Container$1
                        @Override // defpackage.zr6, defpackage.af4
                        public Object get() {
                            return ((State) this.receiver).getValue();
                        }
                    }), shape6), composer2, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f5 = f8;
                    f6 = f9;
                    shape3 = shape6;
                    textFieldColors3 = textFieldColors4;
                    modifier3 = modifier6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                    }
                    if ((i2 & 32) != 0) {
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        i3 &= -3670017;
                    }
                    if ((i2 & 128) != 0) {
                        i3 &= -29360129;
                    }
                    i5 = i3;
                    textFieldColors4 = textFieldColors2;
                    f8 = f3;
                    shape5 = shape2;
                    modifier5 = modifier2;
                }
                f9 = f4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1035477640, i5, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.Container (TextFieldDefaults.kt:1054)");
                }
                int i12 = i5 >> 6;
                boolean zBooleanValue2 = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composerStartRestartGroup, i12 & 14).getValue().booleanValue();
                State<BorderStroke> stateM4468animateBorderStrokeAsStateNuRrP5Q2 = TextFieldImplKt.m4468animateBorderStrokeAsStateNuRrP5Q(z, z2, zBooleanValue2, textFieldColors4, f8, f9, composerStartRestartGroup, (i12 & 458752) | ((i5 >> 3) & 7168) | (i5 & 126) | (57344 & i12));
                Modifier modifier7 = modifier5;
                Shape shape7 = shape5;
                final Object stateM1161animateColorAsStateeuL9pac2 = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(textFieldColors4.m4000containerColorXeAY9LY$material3(z, z2, zBooleanValue2), MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
                composer2 = composerStartRestartGroup;
                BoxKt.Box(TextFieldImplKt.textFieldBackground(BorderKt.border(modifier7, stateM4468animateBorderStrokeAsStateNuRrP5Q2.getValue(), shape7), new TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(new zr6(stateM1161animateColorAsStateeuL9pac2) { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$Container$1
                    @Override // defpackage.zr6, defpackage.af4
                    public Object get() {
                        return ((State) this.receiver).getValue();
                    }
                }), shape7), composer2, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f5 = f8;
                f6 = f9;
                shape3 = shape7;
                textFieldColors3 = textFieldColors4;
                modifier3 = modifier7;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                modifier3 = modifier2;
                textFieldColors3 = textFieldColors2;
                shape3 = shape2;
                f5 = f3;
                f6 = f4;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: l06
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.Container_4EFweAY$lambda$0(this.b, z, z2, interactionSource, modifier3, textFieldColors3, shape3, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                textFieldColors2 = textFieldColors;
                if (composerStartRestartGroup.changed(textFieldColors2)) {
                }
                i3 |= i7;
            } else {
                textFieldColors2 = textFieldColors;
            }
            i3 |= i7;
        } else {
            textFieldColors2 = textFieldColors;
        }
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                shape2 = shape;
                if (composerStartRestartGroup.changed(shape2)) {
                }
                i3 |= i8;
            } else {
                shape2 = shape;
            }
            i3 |= i8;
        } else {
            shape2 = shape;
        }
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                f3 = f;
                if (composerStartRestartGroup.changed(f3)) {
                }
                i3 |= i9;
            } else {
                f3 = f;
            }
            i3 |= i9;
        } else {
            f3 = f;
        }
        if ((12582912 & i) == 0) {
            if ((i2 & 128) == 0) {
                f4 = f2;
                if (composerStartRestartGroup.changed(f4)) {
                }
                i3 |= i10;
            } else {
                f4 = f2;
            }
            i3 |= i10;
        } else {
            f4 = f2;
        }
        if ((i2 & 256) != 0) {
            i3 |= 100663296;
        } else if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i4 = 67108864;
            } else {
                i4 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i3 |= i4;
        }
        if ((38347923 & i3) != 38347922) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 16) != 0) {
                    textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                    i3 &= -57345;
                } else {
                    textFieldColorsColors = textFieldColors2;
                }
                if ((i2 & 32) != 0) {
                    shape4 = INSTANCE.getShape(composerStartRestartGroup, 6);
                    i3 &= -458753;
                } else {
                    shape4 = shape2;
                }
                if ((i2 & 64) != 0) {
                    f7 = FocusedBorderThickness;
                    i3 &= -3670017;
                } else {
                    f7 = f3;
                }
                if ((i2 & 128) != 0) {
                    shape5 = shape4;
                    f9 = UnfocusedBorderThickness;
                    modifier5 = modifier4;
                    i5 = i3 & (-29360129);
                    textFieldColors4 = textFieldColorsColors;
                    f8 = f7;
                } else {
                    modifier5 = modifier4;
                    i5 = i3;
                    textFieldColors4 = textFieldColorsColors;
                    shape5 = shape4;
                    f8 = f7;
                    f9 = f4;
                }
            } else {
                if (i6 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i2 & 16) != 0) {
                    textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 24) & 14);
                    i3 &= -57345;
                } else {
                    textFieldColorsColors = textFieldColors2;
                }
                if ((i2 & 32) != 0) {
                    shape4 = INSTANCE.getShape(composerStartRestartGroup, 6);
                    i3 &= -458753;
                } else {
                    shape4 = shape2;
                }
                if ((i2 & 64) != 0) {
                    f7 = FocusedBorderThickness;
                    i3 &= -3670017;
                } else {
                    f7 = f3;
                }
                if ((i2 & 128) != 0) {
                    shape5 = shape4;
                    f9 = UnfocusedBorderThickness;
                    modifier5 = modifier4;
                    i5 = i3 & (-29360129);
                    textFieldColors4 = textFieldColorsColors;
                    f8 = f7;
                } else {
                    modifier5 = modifier4;
                    i5 = i3;
                    textFieldColors4 = textFieldColorsColors;
                    shape5 = shape4;
                    f8 = f7;
                    f9 = f4;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1035477640, i5, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.Container (TextFieldDefaults.kt:1054)");
            }
            int i13 = i5 >> 6;
            boolean zBooleanValue3 = FocusInteractionKt.collectIsFocusedAsState(interactionSource, composerStartRestartGroup, i13 & 14).getValue().booleanValue();
            State<BorderStroke> stateM4468animateBorderStrokeAsStateNuRrP5Q3 = TextFieldImplKt.m4468animateBorderStrokeAsStateNuRrP5Q(z, z2, zBooleanValue3, textFieldColors4, f8, f9, composerStartRestartGroup, (i13 & 458752) | ((i5 >> 3) & 7168) | (i5 & 126) | (57344 & i13));
            Modifier modifier8 = modifier5;
            Shape shape8 = shape5;
            final Object stateM1161animateColorAsStateeuL9pac3 = SingleValueAnimationKt.m1161animateColorAsStateeuL9pac(textFieldColors4.m4000containerColorXeAY9LY$material3(z, z2, zBooleanValue3), MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6), null, null, composerStartRestartGroup, 0, 12);
            composer2 = composerStartRestartGroup;
            BoxKt.Box(TextFieldImplKt.textFieldBackground(BorderKt.border(modifier8, stateM4468animateBorderStrokeAsStateNuRrP5Q3.getValue(), shape8), new TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(new zr6(stateM1161animateColorAsStateeuL9pac3) { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$Container$1
                @Override // defpackage.zr6, defpackage.af4
                public Object get() {
                    return ((State) this.receiver).getValue();
                }
            }), shape8), composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f5 = f8;
            f6 = f9;
            shape3 = shape8;
            textFieldColors3 = textFieldColors4;
            modifier3 = modifier8;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            modifier3 = modifier2;
            textFieldColors3 = textFieldColors2;
            shape3 = shape2;
            f5 = f3;
            f6 = f4;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: l06
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return OutlinedTextFieldDefaults.Container_4EFweAY$lambda$0(this.b, z, z2, interactionSource, modifier3, textFieldColors3, shape3, f5, f6, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:112:0x012e  */
    /* JADX WARN: Code duplicated, block: B:114:0x0132  */
    /* JADX WARN: Code duplicated, block: B:117:0x0140  */
    /* JADX WARN: Code duplicated, block: B:120:0x014d  */
    /* JADX WARN: Code duplicated, block: B:123:0x0154  */
    /* JADX WARN: Code duplicated, block: B:126:0x0160  */
    /* JADX WARN: Code duplicated, block: B:129:0x019c  */
    /* JADX WARN: Code duplicated, block: B:130:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:133:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:135:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:32:0x005d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x006b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x007c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:72:0x00be  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:86:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:91:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:95:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:97:0x010d  */
    @ul2
    /* JADX INFO: renamed from: ContainerBox-nbWgWpA, reason: not valid java name */
    public final void m3720ContainerBoxnbWgWpA(final boolean z, final boolean z2, final InteractionSource interactionSource, TextFieldColors textFieldColors, Shape shape, float f, float f2, Composer composer, final int i, final int i2) {
        boolean z3;
        int i3;
        InteractionSource interactionSource2;
        int i4;
        TextFieldColors textFieldColorsColors;
        Shape shape2;
        float f3;
        float f4;
        int i5;
        boolean z4;
        final TextFieldColors textFieldColors2;
        final Shape shape3;
        final float f5;
        final float f6;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Composer composerStartRestartGroup = composer.startRestartGroup(1461761386);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            z3 = z;
        } else if ((i & 6) == 0) {
            z3 = z;
            i3 = (composerStartRestartGroup.changed(z3) ? 4 : 2) | i;
        } else {
            z3 = z;
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changed(z2) ? 32 : 16;
            }
            if ((i2 & 4) != 0) {
                if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    interactionSource2 = interactionSource;
                    if (composerStartRestartGroup.changed(interactionSource2)) {
                        i4 = 256;
                    } else {
                        i4 = 128;
                    }
                    i3 |= i4;
                }
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        textFieldColorsColors = textFieldColors;
                        int i6 = composerStartRestartGroup.changed(textFieldColorsColors) ? 2048 : 1024;
                        i3 |= i6;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    i3 |= i6;
                } else {
                    textFieldColorsColors = textFieldColors;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        shape2 = shape;
                        int i7 = composerStartRestartGroup.changed(shape2) ? 16384 : 8192;
                        i3 |= i7;
                    } else {
                        shape2 = shape;
                    }
                    i3 |= i7;
                } else {
                    shape2 = shape;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        f3 = f;
                        int i8 = composerStartRestartGroup.changed(f3) ? 131072 : 65536;
                        i3 |= i8;
                    } else {
                        f3 = f;
                    }
                    i3 |= i8;
                } else {
                    f3 = f;
                }
                if ((1572864 & i) == 0) {
                    if ((i2 & 64) == 0) {
                        f4 = f2;
                        int i9 = composerStartRestartGroup.changed(f4) ? 1048576 : 524288;
                        i3 |= i9;
                    } else {
                        f4 = f2;
                    }
                    i3 |= i9;
                } else {
                    f4 = f2;
                }
                if ((i2 & 128) != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i5 = 8388608;
                    } else {
                        i5 = 4194304;
                    }
                    i3 |= i5;
                }
                if ((4793491 & i3) != 4793490) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                        if ((i2 & 8) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 21) & 14);
                            i3 &= -7169;
                        }
                        if ((i2 & 16) != 0) {
                            shape2 = INSTANCE.getShape(composerStartRestartGroup, 6);
                            i3 &= -57345;
                        }
                        if ((i2 & 32) != 0) {
                            f3 = FocusedBorderThickness;
                            i3 &= -458753;
                        }
                        if ((i2 & 64) != 0) {
                            f4 = UnfocusedBorderThickness;
                            i3 &= -3670017;
                        }
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                        }
                        if ((i2 & 16) != 0) {
                            i3 &= -57345;
                        }
                        if ((i2 & 32) != 0) {
                            i3 &= -458753;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1461761386, i3, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.ContainerBox (TextFieldDefaults.kt:1482)");
                    }
                    int i10 = (i3 & 14) | 3072 | (i3 & 112) | (i3 & 896);
                    int i11 = i3 << 3;
                    int i12 = i10 | (57344 & i11) | (458752 & i11) | (3670016 & i11) | (29360128 & i11) | (i11 & 234881024);
                    InteractionSource interactionSource3 = interactionSource2;
                    textFieldColors2 = textFieldColorsColors;
                    shape3 = shape2;
                    f5 = f3;
                    f6 = f4;
                    m3719Container4EFweAY(z3, z2, interactionSource3, Modifier.Companion, textFieldColors2, shape3, f5, f6, composerStartRestartGroup, i12, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    textFieldColors2 = textFieldColorsColors;
                    shape3 = shape2;
                    f5 = f3;
                    f6 = f4;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n06
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return OutlinedTextFieldDefaults.ContainerBox_nbWgWpA$lambda$7(this.b, z, z2, interactionSource, textFieldColors2, shape3, f5, f6, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            interactionSource2 = interactionSource;
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    textFieldColorsColors = textFieldColors;
                    if (composerStartRestartGroup.changed(textFieldColorsColors)) {
                    }
                    i3 |= i6;
                } else {
                    textFieldColorsColors = textFieldColors;
                }
                i3 |= i6;
            } else {
                textFieldColorsColors = textFieldColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i7;
                } else {
                    shape2 = shape;
                }
                i3 |= i7;
            } else {
                shape2 = shape;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    f3 = f;
                    if (composerStartRestartGroup.changed(f3)) {
                    }
                    i3 |= i8;
                } else {
                    f3 = f;
                }
                i3 |= i8;
            } else {
                f3 = f;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    f4 = f2;
                    if (composerStartRestartGroup.changed(f4)) {
                    }
                    i3 |= i9;
                } else {
                    f4 = f2;
                }
                i3 |= i9;
            } else {
                f4 = f2;
            }
            if ((i2 & 128) != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i5 = 8388608;
                } else {
                    i5 = 4194304;
                }
                i3 |= i5;
            }
            if ((4793491 & i3) != 4793490) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if ((i2 & 8) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 21) & 14);
                        i3 &= -7169;
                    }
                    if ((i2 & 16) != 0) {
                        shape2 = INSTANCE.getShape(composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                    if ((i2 & 32) != 0) {
                        f3 = FocusedBorderThickness;
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        f4 = UnfocusedBorderThickness;
                        i3 &= -3670017;
                    }
                } else {
                    if ((i2 & 8) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 21) & 14);
                        i3 &= -7169;
                    }
                    if ((i2 & 16) != 0) {
                        shape2 = INSTANCE.getShape(composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                    if ((i2 & 32) != 0) {
                        f3 = FocusedBorderThickness;
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        f4 = UnfocusedBorderThickness;
                        i3 &= -3670017;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1461761386, i3, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.ContainerBox (TextFieldDefaults.kt:1482)");
                }
                int i13 = (i3 & 14) | 3072 | (i3 & 112) | (i3 & 896);
                int i14 = i3 << 3;
                int i15 = i13 | (57344 & i14) | (458752 & i14) | (3670016 & i14) | (29360128 & i14) | (i14 & 234881024);
                InteractionSource interactionSource4 = interactionSource2;
                textFieldColors2 = textFieldColorsColors;
                shape3 = shape2;
                f5 = f3;
                f6 = f4;
                m3719Container4EFweAY(z3, z2, interactionSource4, Modifier.Companion, textFieldColors2, shape3, f5, f6, composerStartRestartGroup, i15, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                textFieldColors2 = textFieldColorsColors;
                shape3 = shape2;
                f5 = f3;
                f6 = f4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n06
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.ContainerBox_nbWgWpA$lambda$7(this.b, z, z2, interactionSource, textFieldColors2, shape3, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        if ((i2 & 4) != 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                interactionSource2 = interactionSource;
                if (composerStartRestartGroup.changed(interactionSource2)) {
                    i4 = 256;
                } else {
                    i4 = 128;
                }
                i3 |= i4;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    textFieldColorsColors = textFieldColors;
                    if (composerStartRestartGroup.changed(textFieldColorsColors)) {
                    }
                    i3 |= i6;
                } else {
                    textFieldColorsColors = textFieldColors;
                }
                i3 |= i6;
            } else {
                textFieldColorsColors = textFieldColors;
            }
            if ((i & 24576) == 0) {
                if ((i2 & 16) == 0) {
                    shape2 = shape;
                    if (composerStartRestartGroup.changed(shape2)) {
                    }
                    i3 |= i7;
                } else {
                    shape2 = shape;
                }
                i3 |= i7;
            } else {
                shape2 = shape;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    f3 = f;
                    if (composerStartRestartGroup.changed(f3)) {
                    }
                    i3 |= i8;
                } else {
                    f3 = f;
                }
                i3 |= i8;
            } else {
                f3 = f;
            }
            if ((1572864 & i) == 0) {
                if ((i2 & 64) == 0) {
                    f4 = f2;
                    if (composerStartRestartGroup.changed(f4)) {
                    }
                    i3 |= i9;
                } else {
                    f4 = f2;
                }
                i3 |= i9;
            } else {
                f4 = f2;
            }
            if ((i2 & 128) != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i5 = 8388608;
                } else {
                    i5 = 4194304;
                }
                i3 |= i5;
            }
            if ((4793491 & i3) != 4793490) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if ((i2 & 8) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 21) & 14);
                        i3 &= -7169;
                    }
                    if ((i2 & 16) != 0) {
                        shape2 = INSTANCE.getShape(composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                    if ((i2 & 32) != 0) {
                        f3 = FocusedBorderThickness;
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        f4 = UnfocusedBorderThickness;
                        i3 &= -3670017;
                    }
                } else {
                    if ((i2 & 8) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 21) & 14);
                        i3 &= -7169;
                    }
                    if ((i2 & 16) != 0) {
                        shape2 = INSTANCE.getShape(composerStartRestartGroup, 6);
                        i3 &= -57345;
                    }
                    if ((i2 & 32) != 0) {
                        f3 = FocusedBorderThickness;
                        i3 &= -458753;
                    }
                    if ((i2 & 64) != 0) {
                        f4 = UnfocusedBorderThickness;
                        i3 &= -3670017;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1461761386, i3, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.ContainerBox (TextFieldDefaults.kt:1482)");
                }
                int i16 = (i3 & 14) | 3072 | (i3 & 112) | (i3 & 896);
                int i17 = i3 << 3;
                int i18 = i16 | (57344 & i17) | (458752 & i17) | (3670016 & i17) | (29360128 & i17) | (i17 & 234881024);
                InteractionSource interactionSource5 = interactionSource2;
                textFieldColors2 = textFieldColorsColors;
                shape3 = shape2;
                f5 = f3;
                f6 = f4;
                m3719Container4EFweAY(z3, z2, interactionSource5, Modifier.Companion, textFieldColors2, shape3, f5, f6, composerStartRestartGroup, i18, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                textFieldColors2 = textFieldColorsColors;
                shape3 = shape2;
                f5 = f3;
                f6 = f4;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n06
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.ContainerBox_nbWgWpA$lambda$7(this.b, z, z2, interactionSource, textFieldColors2, shape3, f5, f6, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        interactionSource2 = interactionSource;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                textFieldColorsColors = textFieldColors;
                if (composerStartRestartGroup.changed(textFieldColorsColors)) {
                }
                i3 |= i6;
            } else {
                textFieldColorsColors = textFieldColors;
            }
            i3 |= i6;
        } else {
            textFieldColorsColors = textFieldColors;
        }
        if ((i & 24576) == 0) {
            if ((i2 & 16) == 0) {
                shape2 = shape;
                if (composerStartRestartGroup.changed(shape2)) {
                }
                i3 |= i7;
            } else {
                shape2 = shape;
            }
            i3 |= i7;
        } else {
            shape2 = shape;
        }
        if ((196608 & i) == 0) {
            if ((i2 & 32) == 0) {
                f3 = f;
                if (composerStartRestartGroup.changed(f3)) {
                }
                i3 |= i8;
            } else {
                f3 = f;
            }
            i3 |= i8;
        } else {
            f3 = f;
        }
        if ((1572864 & i) == 0) {
            if ((i2 & 64) == 0) {
                f4 = f2;
                if (composerStartRestartGroup.changed(f4)) {
                }
                i3 |= i9;
            } else {
                f4 = f2;
            }
            i3 |= i9;
        } else {
            f4 = f2;
        }
        if ((i2 & 128) != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(this)) {
                i5 = 8388608;
            } else {
                i5 = 4194304;
            }
            i3 |= i5;
        }
        if ((4793491 & i3) != 4793490) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if ((i2 & 8) != 0) {
                    textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 21) & 14);
                    i3 &= -7169;
                }
                if ((i2 & 16) != 0) {
                    shape2 = INSTANCE.getShape(composerStartRestartGroup, 6);
                    i3 &= -57345;
                }
                if ((i2 & 32) != 0) {
                    f3 = FocusedBorderThickness;
                    i3 &= -458753;
                }
                if ((i2 & 64) != 0) {
                    f4 = UnfocusedBorderThickness;
                    i3 &= -3670017;
                }
            } else {
                if ((i2 & 8) != 0) {
                    textFieldColorsColors = colors(composerStartRestartGroup, (i3 >> 21) & 14);
                    i3 &= -7169;
                }
                if ((i2 & 16) != 0) {
                    shape2 = INSTANCE.getShape(composerStartRestartGroup, 6);
                    i3 &= -57345;
                }
                if ((i2 & 32) != 0) {
                    f3 = FocusedBorderThickness;
                    i3 &= -458753;
                }
                if ((i2 & 64) != 0) {
                    f4 = UnfocusedBorderThickness;
                    i3 &= -3670017;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1461761386, i3, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.ContainerBox (TextFieldDefaults.kt:1482)");
            }
            int i19 = (i3 & 14) | 3072 | (i3 & 112) | (i3 & 896);
            int i110 = i3 << 3;
            int i111 = i19 | (57344 & i110) | (458752 & i110) | (3670016 & i110) | (29360128 & i110) | (i110 & 234881024);
            InteractionSource interactionSource6 = interactionSource2;
            textFieldColors2 = textFieldColorsColors;
            shape3 = shape2;
            f5 = f3;
            f6 = f4;
            m3719Container4EFweAY(z3, z2, interactionSource6, Modifier.Companion, textFieldColors2, shape3, f5, f6, composerStartRestartGroup, i111, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            textFieldColors2 = textFieldColorsColors;
            shape3 = shape2;
            f5 = f3;
            f6 = f4;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n06
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return OutlinedTextFieldDefaults.ContainerBox_nbWgWpA$lambda$7(this.b, z, z2, interactionSource, textFieldColors2, shape3, f5, f6, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0130  */
    /* JADX WARN: Code duplicated, block: B:102:0x0134  */
    /* JADX WARN: Code duplicated, block: B:104:0x013e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0141  */
    /* JADX WARN: Code duplicated, block: B:109:0x0149  */
    /* JADX WARN: Code duplicated, block: B:110:0x0152  */
    /* JADX WARN: Code duplicated, block: B:112:0x0156  */
    /* JADX WARN: Code duplicated, block: B:114:0x0160  */
    /* JADX WARN: Code duplicated, block: B:115:0x0163  */
    /* JADX WARN: Code duplicated, block: B:117:0x0168  */
    /* JADX WARN: Code duplicated, block: B:120:0x0172  */
    /* JADX WARN: Code duplicated, block: B:122:0x0179  */
    /* JADX WARN: Code duplicated, block: B:124:0x017d  */
    /* JADX WARN: Code duplicated, block: B:126:0x0187  */
    /* JADX WARN: Code duplicated, block: B:127:0x018a  */
    /* JADX WARN: Code duplicated, block: B:129:0x018f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0198  */
    /* JADX WARN: Code duplicated, block: B:133:0x019b  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:142:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:143:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:145:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:147:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:149:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:152:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:154:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:157:0x01eb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:159:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:162:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:164:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:167:0x0208  */
    /* JADX WARN: Code duplicated, block: B:169:0x020d  */
    /* JADX WARN: Code duplicated, block: B:172:0x0213  */
    /* JADX WARN: Code duplicated, block: B:173:0x0218  */
    /* JADX WARN: Code duplicated, block: B:175:0x021e  */
    /* JADX WARN: Code duplicated, block: B:177:0x0224  */
    /* JADX WARN: Code duplicated, block: B:181:0x022c  */
    /* JADX WARN: Code duplicated, block: B:182:0x022f  */
    /* JADX WARN: Code duplicated, block: B:184:0x0233  */
    /* JADX WARN: Code duplicated, block: B:186:0x0239  */
    /* JADX WARN: Code duplicated, block: B:190:0x024b  */
    /* JADX WARN: Code duplicated, block: B:194:0x0259  */
    /* JADX WARN: Code duplicated, block: B:197:0x0262  */
    /* JADX WARN: Code duplicated, block: B:199:0x026f  */
    /* JADX WARN: Code duplicated, block: B:211:0x02a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:212:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:214:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:215:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:217:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:218:0x02af  */
    /* JADX WARN: Code duplicated, block: B:220:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:221:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:223:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:224:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:226:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:227:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:229:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:230:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:232:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:233:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:236:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:237:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:240:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:241:0x0309  */
    /* JADX WARN: Code duplicated, block: B:243:0x030d  */
    /* JADX WARN: Code duplicated, block: B:244:0x0332  */
    /* JADX WARN: Code duplicated, block: B:247:0x034f  */
    /* JADX WARN: Code duplicated, block: B:250:0x035c  */
    /* JADX WARN: Code duplicated, block: B:251:0x035e  */
    /* JADX WARN: Code duplicated, block: B:254:0x036b  */
    /* JADX WARN: Code duplicated, block: B:257:0x0375  */
    /* JADX WARN: Code duplicated, block: B:261:0x0380  */
    /* JADX WARN: Code duplicated, block: B:264:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:265:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:268:0x044b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0054  */
    /* JADX WARN: Code duplicated, block: B:270:0x045f  */
    /* JADX WARN: Code duplicated, block: B:273:0x047f  */
    /* JADX WARN: Code duplicated, block: B:275:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    /* JADX WARN: Code duplicated, block: B:29:0x005b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0061  */
    /* JADX WARN: Code duplicated, block: B:32:0x0064  */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0074  */
    /* JADX WARN: Code duplicated, block: B:40:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0080  */
    /* JADX WARN: Code duplicated, block: B:43:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x008d  */
    /* JADX WARN: Code duplicated, block: B:48:0x0090  */
    /* JADX WARN: Code duplicated, block: B:50:0x0094  */
    /* JADX WARN: Code duplicated, block: B:52:0x009a  */
    /* JADX WARN: Code duplicated, block: B:53:0x009d  */
    /* JADX WARN: Code duplicated, block: B:57:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00db  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:83:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:87:0x0107  */
    /* JADX WARN: Code duplicated, block: B:89:0x010e  */
    /* JADX WARN: Code duplicated, block: B:91:0x0112  */
    /* JADX WARN: Code duplicated, block: B:93:0x011c  */
    /* JADX WARN: Code duplicated, block: B:94:0x011f  */
    /* JADX WARN: Code duplicated, block: B:98:0x0129  */
    public final void DecorationBox(final String str, final bm3<? super Composer, ? super Integer, j59> bm3Var, final boolean z, final boolean z2, final VisualTransformation visualTransformation, final InteractionSource interactionSource, boolean z3, bm3<? super Composer, ? super Integer, j59> bm3Var2, bm3<? super Composer, ? super Integer, j59> bm3Var3, bm3<? super Composer, ? super Integer, j59> bm3Var4, bm3<? super Composer, ? super Integer, j59> bm3Var5, bm3<? super Composer, ? super Integer, j59> bm3Var6, bm3<? super Composer, ? super Integer, j59> bm3Var7, bm3<? super Composer, ? super Integer, j59> bm3Var8, TextFieldColors textFieldColors, PaddingValues paddingValues, bm3<? super Composer, ? super Integer, j59> bm3Var9, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        final boolean z4;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        boolean z5;
        Composer composer2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var10;
        final bm3<? super Composer, ? super Integer, j59> bm3Var11;
        final bm3<? super Composer, ? super Integer, j59> bm3Var12;
        final bm3<? super Composer, ? super Integer, j59> bm3Var13;
        final bm3<? super Composer, ? super Integer, j59> bm3Var14;
        final bm3<? super Composer, ? super Integer, j59> bm3Var15;
        final TextFieldColors textFieldColors2;
        final PaddingValues paddingValues2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var16;
        final boolean z6;
        final bm3<? super Composer, ? super Integer, j59> bm3Var17;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        bm3<? super Composer, ? super Integer, j59> bm3Var18;
        bm3<? super Composer, ? super Integer, j59> bm3Var19;
        bm3<? super Composer, ? super Integer, j59> bm3Var20;
        bm3<? super Composer, ? super Integer, j59> bm3Var21;
        bm3<? super Composer, ? super Integer, j59> bm3Var22;
        bm3<? super Composer, ? super Integer, j59> bm3Var23;
        bm3<? super Composer, ? super Integer, j59> bm3Var24;
        final TextFieldColors textFieldColorsColors;
        PaddingValues paddingValuesM3718contentPaddinga9UjIt4$default;
        TextFieldColors textFieldColors3;
        PaddingValues paddingValues3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var25;
        int i30;
        bm3<? super Composer, ? super Integer, j59> bm3Var26;
        bm3<? super Composer, ? super Integer, j59> bm3Var27;
        boolean z7;
        boolean z8;
        boolean z9;
        Object objRememberedValue;
        ComposableLambda composableLambda;
        int i31;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1732281618);
        if ((i3 & 1) != 0) {
            i4 = i | 6;
        } else if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        if ((i3 & 2) == 0) {
            if ((i & 48) == 0) {
                i4 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
            }
            if ((i3 & 4) != 0) {
                i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i5 = 256;
                } else {
                    i5 = 128;
                }
                i4 |= i5;
            }
            if ((i3 & 8) != 0) {
                if ((i & 3072) == 0) {
                    if (composerStartRestartGroup.changed(z2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                i7 = 8192;
                if ((i3 & 16) != 0) {
                    i4 |= 24576;
                } else if ((i & 24576) == 0) {
                    if (composerStartRestartGroup.changed(visualTransformation)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((i3 & 32) != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(interactionSource)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i4 |= i9;
                }
                i10 = i3 & 64;
                if (i10 != 0) {
                    i4 |= 1572864;
                    z4 = z3;
                } else {
                    z4 = z3;
                    if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changed(z4)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i4 |= i11;
                    }
                }
                i12 = i3 & 128;
                if (i12 != 0) {
                    i4 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i4 |= i13;
                }
                i14 = i3 & 256;
                if (i14 != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                            i15 = 67108864;
                        } else {
                            i15 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i4 |= i15;
                    }
                    i16 = i3 & 512;
                    if (i16 != 0) {
                        if ((i & 805306368) == 0) {
                            if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                                i17 = 536870912;
                            } else {
                                i17 = 268435456;
                            }
                            i4 |= i17;
                        }
                        i18 = i3 & 1024;
                        if (i18 != 0) {
                            i19 = i2 | 6;
                        } else if ((i2 & 6) == 0) {
                            if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                                i20 = 4;
                            } else {
                                i20 = 2;
                            }
                            i19 = i2 | i20;
                        } else {
                            i19 = i2;
                        }
                        i21 = i3 & 2048;
                        if (i21 != 0) {
                            i19 |= 48;
                        } else if ((i2 & 48) != 0) {
                            if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                                i22 = 32;
                            } else {
                                i22 = 16;
                            }
                            i19 |= i22;
                        }
                        i23 = i19;
                        i24 = i3 & 4096;
                        if (i24 != 0) {
                            i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                        } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                            i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                        } else {
                            i25 = i23;
                        }
                        i26 = i3 & 8192;
                        if (i26 != 0) {
                            i28 = i25 | 3072;
                        } else {
                            i27 = i25;
                            if ((i2 & 3072) == 0) {
                                i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                            } else {
                                i28 = i27;
                            }
                        }
                        if ((i2 & 24576) != 0) {
                            if ((i3 & 16384) == 0 && composerStartRestartGroup.changed(textFieldColors)) {
                                i7 = 16384;
                            }
                            i28 |= i7;
                        }
                        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                            if ((i3 & 32768) == 0 || !composerStartRestartGroup.changed(paddingValues)) {
                                i31 = 65536;
                            } else {
                                i31 = 131072;
                            }
                            i28 |= i31;
                        }
                        i29 = i3 & 65536;
                        if (i29 != 0) {
                            i28 |= 1572864;
                        } else if ((i2 & 1572864) == 0) {
                            i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                        }
                        if ((i3 & 131072) != 0) {
                            i28 |= 12582912;
                        } else if ((i2 & 12582912) == 0) {
                            i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                        }
                        if ((i4 & 306783379) == 306783378 || (i28 & 4793491) != 4793490) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i10 != 0) {
                                    z4 = false;
                                }
                                if (i12 != 0) {
                                    bm3Var18 = null;
                                } else {
                                    bm3Var18 = bm3Var2;
                                }
                                if (i14 != 0) {
                                    bm3Var19 = null;
                                } else {
                                    bm3Var19 = bm3Var3;
                                }
                                if (i16 != 0) {
                                    bm3Var20 = null;
                                } else {
                                    bm3Var20 = bm3Var4;
                                }
                                if (i18 != 0) {
                                    bm3Var21 = null;
                                } else {
                                    bm3Var21 = bm3Var5;
                                }
                                if (i21 != 0) {
                                    bm3Var22 = null;
                                } else {
                                    bm3Var22 = bm3Var6;
                                }
                                if (i24 != 0) {
                                    bm3Var23 = null;
                                } else {
                                    bm3Var23 = bm3Var7;
                                }
                                if (i26 != 0) {
                                    bm3Var24 = null;
                                } else {
                                    bm3Var24 = bm3Var8;
                                }
                                if ((i3 & 16384) != 0) {
                                    textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                    i28 &= -57345;
                                } else {
                                    textFieldColorsColors = textFieldColors;
                                }
                                if ((i3 & 32768) != 0) {
                                    paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i28 &= -458753;
                                } else {
                                    paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                                }
                                if (i29 != 0) {
                                    bm3<? super Composer, ? super Integer, j59> bm3Var28 = bm3Var18;
                                    textFieldColors3 = textFieldColorsColors;
                                    paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                    bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                        public final void invoke(Composer composer3, int i32) {
                                            if (!composer3.shouldExecute((i32 & 3) != 2, i32 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-896270173, i32, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                            }
                                            OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                            outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composerStartRestartGroup, 54);
                                    z7 = true;
                                    i30 = i28;
                                    bm3Var26 = bm3Var23;
                                    bm3Var27 = bm3Var24;
                                    bm3Var25 = bm3Var28;
                                } else {
                                    textFieldColors3 = textFieldColorsColors;
                                    paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                    bm3Var25 = bm3Var18;
                                    i30 = i28;
                                    bm3Var26 = bm3Var23;
                                    bm3Var27 = bm3Var24;
                                }
                                boolean z10 = z4;
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                                }
                                if ((i4 & 14) == 4) {
                                    z8 = z7;
                                } else {
                                    z8 = false;
                                }
                                z9 = z8 | ((i4 & 57344) == 16384);
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (z9 || objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                String text = ((TransformedText) objRememberedValue).getText().getText();
                                int i32 = i30;
                                TextFieldType textFieldType = TextFieldType.Outlined;
                                TextFieldLabelPosition.Attached attached = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                                if (bm3Var25 == null) {
                                    composerStartRestartGroup.startReplaceGroup(1927058812);
                                    composerStartRestartGroup.endReplaceGroup();
                                    composableLambda = null;
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(1927058813);
                                    ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                                        public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i33) {
                                            if (!composer3.shouldExecute((i33 & 17) != 16, i33 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1459717586, i33, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                            }
                                            bm3Var25.invoke(composer3, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.dm3
                                        public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                            invoke(textFieldLabelScope, composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composerStartRestartGroup, 54);
                                    composerStartRestartGroup.endReplaceGroup();
                                    composableLambda = composableLambdaRememberComposableLambda;
                                }
                                int i33 = i4 >> 9;
                                int i34 = i32 << 21;
                                int i35 = ((i4 << 3) & 896) | 6 | (i33 & 458752) | (i33 & 3670016) | (i34 & 29360128) | (i34 & 234881024) | (i34 & 1879048192);
                                int i36 = (i33 & 7168) | ((i32 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i32 & 458752) | ((i32 << 6) & 3670016) | ((i32 << 3) & 29360128);
                                composer2 = composerStartRestartGroup;
                                bm3<? super Composer, ? super Integer, j59> bm3Var29 = bm3Var19;
                                bm3<? super Composer, ? super Integer, j59> bm3Var30 = bm3Var20;
                                bm3<? super Composer, ? super Integer, j59> bm3Var31 = bm3Var21;
                                bm3<? super Composer, ? super Integer, j59> bm3Var32 = bm3Var22;
                                TextFieldImplKt.CommonDecorationBox(textFieldType, text, bm3Var, attached, composableLambda, bm3Var29, bm3Var30, bm3Var31, bm3Var32, bm3Var26, bm3Var27, z2, z, z10, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i35, i36);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                bm3Var17 = bm3Var26;
                                bm3Var15 = bm3Var27;
                                paddingValues2 = paddingValues3;
                                bm3Var16 = bm3Var9;
                                bm3Var13 = bm3Var31;
                                bm3Var14 = bm3Var32;
                                bm3Var11 = bm3Var29;
                                bm3Var12 = bm3Var30;
                                z6 = z10;
                                textFieldColors2 = textFieldColors3;
                                bm3Var10 = bm3Var25;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 16384) != 0) {
                                    i28 &= -57345;
                                }
                                if ((i3 & 32768) != 0) {
                                    i28 &= -458753;
                                }
                                bm3Var25 = bm3Var2;
                                bm3Var19 = bm3Var3;
                                bm3Var20 = bm3Var4;
                                bm3Var21 = bm3Var5;
                                bm3Var22 = bm3Var6;
                                bm3Var26 = bm3Var7;
                                bm3Var27 = bm3Var8;
                                textFieldColors3 = textFieldColors;
                                paddingValues3 = paddingValues;
                                i30 = i28;
                            }
                            z7 = true;
                            boolean z11 = z4;
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                            }
                            if ((i4 & 14) == 4) {
                                z8 = z7;
                            } else {
                                z8 = false;
                            }
                            z9 = z8 | ((i4 & 57344) == 16384);
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (z9) {
                                objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            String text2 = ((TransformedText) objRememberedValue).getText().getText();
                            int i37 = i30;
                            TextFieldType textFieldType2 = TextFieldType.Outlined;
                            TextFieldLabelPosition.Attached attached2 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                            if (bm3Var25 == null) {
                                composerStartRestartGroup.startReplaceGroup(1927058812);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambda = null;
                            } else {
                                composerStartRestartGroup.startReplaceGroup(1927058813);
                                ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                                    public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i38) {
                                        if (!composer3.shouldExecute((i38 & 17) != 16, i38 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1459717586, i38, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                        }
                                        bm3Var25.invoke(composer3, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                        invoke(textFieldLabelScope, composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambda = composableLambdaRememberComposableLambda2;
                            }
                            int i38 = i4 >> 9;
                            int i39 = i37 << 21;
                            int i310 = ((i4 << 3) & 896) | 6 | (i38 & 458752) | (i38 & 3670016) | (i39 & 29360128) | (i39 & 234881024) | (i39 & 1879048192);
                            int i311 = (i38 & 7168) | ((i37 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i37 & 458752) | ((i37 << 6) & 3670016) | ((i37 << 3) & 29360128);
                            composer2 = composerStartRestartGroup;
                            bm3<? super Composer, ? super Integer, j59> bm3Var210 = bm3Var19;
                            bm3<? super Composer, ? super Integer, j59> bm3Var33 = bm3Var20;
                            bm3<? super Composer, ? super Integer, j59> bm3Var34 = bm3Var21;
                            bm3<? super Composer, ? super Integer, j59> bm3Var35 = bm3Var22;
                            TextFieldImplKt.CommonDecorationBox(textFieldType2, text2, bm3Var, attached2, composableLambda, bm3Var210, bm3Var33, bm3Var34, bm3Var35, bm3Var26, bm3Var27, z2, z, z11, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i310, i311);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            bm3Var17 = bm3Var26;
                            bm3Var15 = bm3Var27;
                            paddingValues2 = paddingValues3;
                            bm3Var16 = bm3Var9;
                            bm3Var13 = bm3Var34;
                            bm3Var14 = bm3Var35;
                            bm3Var11 = bm3Var210;
                            bm3Var12 = bm3Var33;
                            z6 = z11;
                            textFieldColors2 = textFieldColors3;
                            bm3Var10 = bm3Var25;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            bm3Var10 = bm3Var2;
                            bm3Var11 = bm3Var3;
                            bm3Var12 = bm3Var4;
                            bm3Var13 = bm3Var5;
                            bm3Var14 = bm3Var6;
                            bm3Var15 = bm3Var8;
                            textFieldColors2 = textFieldColors;
                            paddingValues2 = paddingValues;
                            bm3Var16 = bm3Var9;
                            z6 = z4;
                            bm3Var17 = bm3Var7;
                        }
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 805306368;
                    i18 = i3 & 1024;
                    if (i18 != 0) {
                        i19 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                            i20 = 4;
                        } else {
                            i20 = 2;
                        }
                        i19 = i2 | i20;
                    } else {
                        i19 = i2;
                    }
                    i21 = i3 & 2048;
                    if (i21 != 0) {
                        i19 |= 48;
                    } else if ((i2 & 48) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                            i22 = 32;
                        } else {
                            i22 = 16;
                        }
                        i19 |= i22;
                    }
                    i23 = i19;
                    i24 = i3 & 4096;
                    if (i24 != 0) {
                        i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                    } else {
                        i25 = i23;
                    }
                    i26 = i3 & 8192;
                    if (i26 != 0) {
                        i28 = i25 | 3072;
                    } else {
                        i27 = i25;
                        if ((i2 & 3072) == 0) {
                            i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                        } else {
                            i28 = i27;
                        }
                    }
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i7 = 16384;
                        }
                        i28 |= i7;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        if ((i3 & 32768) == 0) {
                            i31 = 65536;
                        } else {
                            i31 = 65536;
                        }
                        i28 |= i31;
                    }
                    i29 = i3 & 65536;
                    if (i29 != 0) {
                        i28 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                    }
                    if ((i3 & 131072) != 0) {
                        i28 |= 12582912;
                    } else if ((i2 & 12582912) == 0) {
                        i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z5 = true;
                    } else {
                        z5 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var211 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i312) {
                                        if (!composer3.shouldExecute((i312 & 3) != 2, i312 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i312, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var211;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        } else {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var212 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i312) {
                                        if (!composer3.shouldExecute((i312 & 3) != 2, i312 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i312, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var212;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        }
                        boolean z12 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                        }
                        if ((i4 & 14) == 4) {
                            z8 = z7;
                        } else {
                            z8 = false;
                        }
                        z9 = z8 | ((i4 & 57344) == 16384);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        String text3 = ((TransformedText) objRememberedValue).getText().getText();
                        int i312 = i30;
                        TextFieldType textFieldType3 = TextFieldType.Outlined;
                        TextFieldLabelPosition.Attached attached3 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                        if (bm3Var25 == null) {
                            composerStartRestartGroup.startReplaceGroup(1927058812);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1927058813);
                            ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                                public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i313) {
                                    if (!composer3.shouldExecute((i313 & 17) != 16, i313 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1459717586, i313, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                    }
                                    bm3Var25.invoke(composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                    invoke(textFieldLabelScope, composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda3;
                        }
                        int i313 = i4 >> 9;
                        int i314 = i312 << 21;
                        int i315 = ((i4 << 3) & 896) | 6 | (i313 & 458752) | (i313 & 3670016) | (i314 & 29360128) | (i314 & 234881024) | (i314 & 1879048192);
                        int i316 = (i313 & 7168) | ((i312 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i312 & 458752) | ((i312 << 6) & 3670016) | ((i312 << 3) & 29360128);
                        composer2 = composerStartRestartGroup;
                        bm3<? super Composer, ? super Integer, j59> bm3Var213 = bm3Var19;
                        bm3<? super Composer, ? super Integer, j59> bm3Var36 = bm3Var20;
                        bm3<? super Composer, ? super Integer, j59> bm3Var37 = bm3Var21;
                        bm3<? super Composer, ? super Integer, j59> bm3Var38 = bm3Var22;
                        TextFieldImplKt.CommonDecorationBox(textFieldType3, text3, bm3Var, attached3, composableLambda, bm3Var213, bm3Var36, bm3Var37, bm3Var38, bm3Var26, bm3Var27, z2, z, z12, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i315, i316);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var17 = bm3Var26;
                        bm3Var15 = bm3Var27;
                        paddingValues2 = paddingValues3;
                        bm3Var16 = bm3Var9;
                        bm3Var13 = bm3Var37;
                        bm3Var14 = bm3Var38;
                        bm3Var11 = bm3Var213;
                        bm3Var12 = bm3Var36;
                        z6 = z12;
                        textFieldColors2 = textFieldColors3;
                        bm3Var10 = bm3Var25;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var10 = bm3Var2;
                        bm3Var11 = bm3Var3;
                        bm3Var12 = bm3Var4;
                        bm3Var13 = bm3Var5;
                        bm3Var14 = bm3Var6;
                        bm3Var15 = bm3Var8;
                        textFieldColors2 = textFieldColors;
                        paddingValues2 = paddingValues;
                        bm3Var16 = bm3Var9;
                        z6 = z4;
                        bm3Var17 = bm3Var7;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 100663296;
                i16 = i3 & 512;
                if (i16 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i17 = 536870912;
                        } else {
                            i17 = 268435456;
                        }
                        i4 |= i17;
                    }
                    i18 = i3 & 1024;
                    if (i18 != 0) {
                        i19 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                            i20 = 4;
                        } else {
                            i20 = 2;
                        }
                        i19 = i2 | i20;
                    } else {
                        i19 = i2;
                    }
                    i21 = i3 & 2048;
                    if (i21 != 0) {
                        i19 |= 48;
                    } else if ((i2 & 48) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                            i22 = 32;
                        } else {
                            i22 = 16;
                        }
                        i19 |= i22;
                    }
                    i23 = i19;
                    i24 = i3 & 4096;
                    if (i24 != 0) {
                        i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                    } else {
                        i25 = i23;
                    }
                    i26 = i3 & 8192;
                    if (i26 != 0) {
                        i28 = i25 | 3072;
                    } else {
                        i27 = i25;
                        if ((i2 & 3072) == 0) {
                            i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                        } else {
                            i28 = i27;
                        }
                    }
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i7 = 16384;
                        }
                        i28 |= i7;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        if ((i3 & 32768) == 0) {
                            i31 = 65536;
                        } else {
                            i31 = 65536;
                        }
                        i28 |= i31;
                    }
                    i29 = i3 & 65536;
                    if (i29 != 0) {
                        i28 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                    }
                    if ((i3 & 131072) != 0) {
                        i28 |= 12582912;
                    } else if ((i2 & 12582912) == 0) {
                        i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z5 = true;
                    } else {
                        z5 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var214 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i317) {
                                        if (!composer3.shouldExecute((i317 & 3) != 2, i317 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i317, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var214;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        } else {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var215 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i317) {
                                        if (!composer3.shouldExecute((i317 & 3) != 2, i317 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i317, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var215;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        }
                        boolean z13 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                        }
                        if ((i4 & 14) == 4) {
                            z8 = z7;
                        } else {
                            z8 = false;
                        }
                        z9 = z8 | ((i4 & 57344) == 16384);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        String text4 = ((TransformedText) objRememberedValue).getText().getText();
                        int i317 = i30;
                        TextFieldType textFieldType4 = TextFieldType.Outlined;
                        TextFieldLabelPosition.Attached attached4 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                        if (bm3Var25 == null) {
                            composerStartRestartGroup.startReplaceGroup(1927058812);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1927058813);
                            ComposableLambda composableLambdaRememberComposableLambda4 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                                public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i318) {
                                    if (!composer3.shouldExecute((i318 & 17) != 16, i318 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1459717586, i318, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                    }
                                    bm3Var25.invoke(composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                    invoke(textFieldLabelScope, composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda4;
                        }
                        int i318 = i4 >> 9;
                        int i319 = i317 << 21;
                        int i3110 = ((i4 << 3) & 896) | 6 | (i318 & 458752) | (i318 & 3670016) | (i319 & 29360128) | (i319 & 234881024) | (i319 & 1879048192);
                        int i3111 = (i318 & 7168) | ((i317 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i317 & 458752) | ((i317 << 6) & 3670016) | ((i317 << 3) & 29360128);
                        composer2 = composerStartRestartGroup;
                        bm3<? super Composer, ? super Integer, j59> bm3Var216 = bm3Var19;
                        bm3<? super Composer, ? super Integer, j59> bm3Var39 = bm3Var20;
                        bm3<? super Composer, ? super Integer, j59> bm3Var310 = bm3Var21;
                        bm3<? super Composer, ? super Integer, j59> bm3Var311 = bm3Var22;
                        TextFieldImplKt.CommonDecorationBox(textFieldType4, text4, bm3Var, attached4, composableLambda, bm3Var216, bm3Var39, bm3Var310, bm3Var311, bm3Var26, bm3Var27, z2, z, z13, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i3110, i3111);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var17 = bm3Var26;
                        bm3Var15 = bm3Var27;
                        paddingValues2 = paddingValues3;
                        bm3Var16 = bm3Var9;
                        bm3Var13 = bm3Var310;
                        bm3Var14 = bm3Var311;
                        bm3Var11 = bm3Var216;
                        bm3Var12 = bm3Var39;
                        z6 = z13;
                        textFieldColors2 = textFieldColors3;
                        bm3Var10 = bm3Var25;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var10 = bm3Var2;
                        bm3Var11 = bm3Var3;
                        bm3Var12 = bm3Var4;
                        bm3Var13 = bm3Var5;
                        bm3Var14 = bm3Var6;
                        bm3Var15 = bm3Var8;
                        textFieldColors2 = textFieldColors;
                        paddingValues2 = paddingValues;
                        bm3Var16 = bm3Var9;
                        z6 = z4;
                        bm3Var17 = bm3Var7;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i18 = i3 & 1024;
                if (i18 != 0) {
                    i19 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                        i20 = 4;
                    } else {
                        i20 = 2;
                    }
                    i19 = i2 | i20;
                } else {
                    i19 = i2;
                }
                i21 = i3 & 2048;
                if (i21 != 0) {
                    i19 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i22 = 32;
                    } else {
                        i22 = 16;
                    }
                    i19 |= i22;
                }
                i23 = i19;
                i24 = i3 & 4096;
                if (i24 != 0) {
                    i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                } else {
                    i25 = i23;
                }
                i26 = i3 & 8192;
                if (i26 != 0) {
                    i28 = i25 | 3072;
                } else {
                    i27 = i25;
                    if ((i2 & 3072) == 0) {
                        i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                    } else {
                        i28 = i27;
                    }
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i7 = 16384;
                    }
                    i28 |= i7;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32768) == 0) {
                        i31 = 65536;
                    } else {
                        i31 = 65536;
                    }
                    i28 |= i31;
                }
                i29 = i3 & 65536;
                if (i29 != 0) {
                    i28 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                }
                if ((i3 & 131072) != 0) {
                    i28 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                }
                if ((i4 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var217 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i3112) {
                                    if (!composer3.shouldExecute((i3112 & 3) != 2, i3112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i3112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var217;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    } else {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var218 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i3112) {
                                    if (!composer3.shouldExecute((i3112 & 3) != 2, i3112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i3112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var218;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    }
                    boolean z14 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                    }
                    if ((i4 & 14) == 4) {
                        z8 = z7;
                    } else {
                        z8 = false;
                    }
                    z9 = z8 | ((i4 & 57344) == 16384);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    String text5 = ((TransformedText) objRememberedValue).getText().getText();
                    int i3112 = i30;
                    TextFieldType textFieldType5 = TextFieldType.Outlined;
                    TextFieldLabelPosition.Attached attached5 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                    if (bm3Var25 == null) {
                        composerStartRestartGroup.startReplaceGroup(1927058812);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1927058813);
                        ComposableLambda composableLambdaRememberComposableLambda5 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                            public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i3113) {
                                if (!composer3.shouldExecute((i3113 & 17) != 16, i3113 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1459717586, i3113, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                }
                                bm3Var25.invoke(composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                invoke(textFieldLabelScope, composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda5;
                    }
                    int i3113 = i4 >> 9;
                    int i3114 = i3112 << 21;
                    int i3115 = ((i4 << 3) & 896) | 6 | (i3113 & 458752) | (i3113 & 3670016) | (i3114 & 29360128) | (i3114 & 234881024) | (i3114 & 1879048192);
                    int i3116 = (i3113 & 7168) | ((i3112 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i3112 & 458752) | ((i3112 << 6) & 3670016) | ((i3112 << 3) & 29360128);
                    composer2 = composerStartRestartGroup;
                    bm3<? super Composer, ? super Integer, j59> bm3Var219 = bm3Var19;
                    bm3<? super Composer, ? super Integer, j59> bm3Var312 = bm3Var20;
                    bm3<? super Composer, ? super Integer, j59> bm3Var313 = bm3Var21;
                    bm3<? super Composer, ? super Integer, j59> bm3Var314 = bm3Var22;
                    TextFieldImplKt.CommonDecorationBox(textFieldType5, text5, bm3Var, attached5, composableLambda, bm3Var219, bm3Var312, bm3Var313, bm3Var314, bm3Var26, bm3Var27, z2, z, z14, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i3115, i3116);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var17 = bm3Var26;
                    bm3Var15 = bm3Var27;
                    paddingValues2 = paddingValues3;
                    bm3Var16 = bm3Var9;
                    bm3Var13 = bm3Var313;
                    bm3Var14 = bm3Var314;
                    bm3Var11 = bm3Var219;
                    bm3Var12 = bm3Var312;
                    z6 = z14;
                    textFieldColors2 = textFieldColors3;
                    bm3Var10 = bm3Var25;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var10 = bm3Var2;
                    bm3Var11 = bm3Var3;
                    bm3Var12 = bm3Var4;
                    bm3Var13 = bm3Var5;
                    bm3Var14 = bm3Var6;
                    bm3Var15 = bm3Var8;
                    textFieldColors2 = textFieldColors;
                    paddingValues2 = paddingValues;
                    bm3Var16 = bm3Var9;
                    z6 = z4;
                    bm3Var17 = bm3Var7;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 3072;
            i7 = 8192;
            if ((i3 & 16) != 0) {
                i4 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(visualTransformation)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((i3 & 32) != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(interactionSource)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i4 |= i9;
            }
            i10 = i3 & 64;
            if (i10 != 0) {
                i4 |= 1572864;
                z4 = z3;
            } else {
                z4 = z3;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z4)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i4 |= i11;
                }
            }
            i12 = i3 & 128;
            if (i12 != 0) {
                i4 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i13 = 8388608;
                } else {
                    i13 = 4194304;
                }
                i4 |= i13;
            }
            i14 = i3 & 256;
            if (i14 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i15 = 67108864;
                    } else {
                        i15 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i15;
                }
                i16 = i3 & 512;
                if (i16 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i17 = 536870912;
                        } else {
                            i17 = 268435456;
                        }
                        i4 |= i17;
                    }
                    i18 = i3 & 1024;
                    if (i18 != 0) {
                        i19 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                            i20 = 4;
                        } else {
                            i20 = 2;
                        }
                        i19 = i2 | i20;
                    } else {
                        i19 = i2;
                    }
                    i21 = i3 & 2048;
                    if (i21 != 0) {
                        i19 |= 48;
                    } else if ((i2 & 48) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                            i22 = 32;
                        } else {
                            i22 = 16;
                        }
                        i19 |= i22;
                    }
                    i23 = i19;
                    i24 = i3 & 4096;
                    if (i24 != 0) {
                        i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                    } else {
                        i25 = i23;
                    }
                    i26 = i3 & 8192;
                    if (i26 != 0) {
                        i28 = i25 | 3072;
                    } else {
                        i27 = i25;
                        if ((i2 & 3072) == 0) {
                            i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                        } else {
                            i28 = i27;
                        }
                    }
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i7 = 16384;
                        }
                        i28 |= i7;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        if ((i3 & 32768) == 0) {
                            i31 = 65536;
                        } else {
                            i31 = 65536;
                        }
                        i28 |= i31;
                    }
                    i29 = i3 & 65536;
                    if (i29 != 0) {
                        i28 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                    }
                    if ((i3 & 131072) != 0) {
                        i28 |= 12582912;
                    } else if ((i2 & 12582912) == 0) {
                        i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z5 = true;
                    } else {
                        z5 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var2110 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i3117) {
                                        if (!composer3.shouldExecute((i3117 & 3) != 2, i3117 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i3117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var2110;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        } else {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var2111 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i3117) {
                                        if (!composer3.shouldExecute((i3117 & 3) != 2, i3117 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i3117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var2111;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        }
                        boolean z15 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                        }
                        if ((i4 & 14) == 4) {
                            z8 = z7;
                        } else {
                            z8 = false;
                        }
                        z9 = z8 | ((i4 & 57344) == 16384);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        String text6 = ((TransformedText) objRememberedValue).getText().getText();
                        int i3117 = i30;
                        TextFieldType textFieldType6 = TextFieldType.Outlined;
                        TextFieldLabelPosition.Attached attached6 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                        if (bm3Var25 == null) {
                            composerStartRestartGroup.startReplaceGroup(1927058812);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1927058813);
                            ComposableLambda composableLambdaRememberComposableLambda6 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                                public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i3118) {
                                    if (!composer3.shouldExecute((i3118 & 17) != 16, i3118 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1459717586, i3118, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                    }
                                    bm3Var25.invoke(composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                    invoke(textFieldLabelScope, composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda6;
                        }
                        int i3118 = i4 >> 9;
                        int i3119 = i3117 << 21;
                        int i31110 = ((i4 << 3) & 896) | 6 | (i3118 & 458752) | (i3118 & 3670016) | (i3119 & 29360128) | (i3119 & 234881024) | (i3119 & 1879048192);
                        int i31111 = (i3118 & 7168) | ((i3117 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i3117 & 458752) | ((i3117 << 6) & 3670016) | ((i3117 << 3) & 29360128);
                        composer2 = composerStartRestartGroup;
                        bm3<? super Composer, ? super Integer, j59> bm3Var2112 = bm3Var19;
                        bm3<? super Composer, ? super Integer, j59> bm3Var315 = bm3Var20;
                        bm3<? super Composer, ? super Integer, j59> bm3Var316 = bm3Var21;
                        bm3<? super Composer, ? super Integer, j59> bm3Var317 = bm3Var22;
                        TextFieldImplKt.CommonDecorationBox(textFieldType6, text6, bm3Var, attached6, composableLambda, bm3Var2112, bm3Var315, bm3Var316, bm3Var317, bm3Var26, bm3Var27, z2, z, z15, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i31110, i31111);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var17 = bm3Var26;
                        bm3Var15 = bm3Var27;
                        paddingValues2 = paddingValues3;
                        bm3Var16 = bm3Var9;
                        bm3Var13 = bm3Var316;
                        bm3Var14 = bm3Var317;
                        bm3Var11 = bm3Var2112;
                        bm3Var12 = bm3Var315;
                        z6 = z15;
                        textFieldColors2 = textFieldColors3;
                        bm3Var10 = bm3Var25;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var10 = bm3Var2;
                        bm3Var11 = bm3Var3;
                        bm3Var12 = bm3Var4;
                        bm3Var13 = bm3Var5;
                        bm3Var14 = bm3Var6;
                        bm3Var15 = bm3Var8;
                        textFieldColors2 = textFieldColors;
                        paddingValues2 = paddingValues;
                        bm3Var16 = bm3Var9;
                        z6 = z4;
                        bm3Var17 = bm3Var7;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i18 = i3 & 1024;
                if (i18 != 0) {
                    i19 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                        i20 = 4;
                    } else {
                        i20 = 2;
                    }
                    i19 = i2 | i20;
                } else {
                    i19 = i2;
                }
                i21 = i3 & 2048;
                if (i21 != 0) {
                    i19 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i22 = 32;
                    } else {
                        i22 = 16;
                    }
                    i19 |= i22;
                }
                i23 = i19;
                i24 = i3 & 4096;
                if (i24 != 0) {
                    i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                } else {
                    i25 = i23;
                }
                i26 = i3 & 8192;
                if (i26 != 0) {
                    i28 = i25 | 3072;
                } else {
                    i27 = i25;
                    if ((i2 & 3072) == 0) {
                        i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                    } else {
                        i28 = i27;
                    }
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i7 = 16384;
                    }
                    i28 |= i7;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32768) == 0) {
                        i31 = 65536;
                    } else {
                        i31 = 65536;
                    }
                    i28 |= i31;
                }
                i29 = i3 & 65536;
                if (i29 != 0) {
                    i28 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                }
                if ((i3 & 131072) != 0) {
                    i28 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                }
                if ((i4 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var2113 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i31112) {
                                    if (!composer3.shouldExecute((i31112 & 3) != 2, i31112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i31112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var2113;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    } else {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var2114 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i31112) {
                                    if (!composer3.shouldExecute((i31112 & 3) != 2, i31112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i31112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var2114;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    }
                    boolean z16 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                    }
                    if ((i4 & 14) == 4) {
                        z8 = z7;
                    } else {
                        z8 = false;
                    }
                    z9 = z8 | ((i4 & 57344) == 16384);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    String text7 = ((TransformedText) objRememberedValue).getText().getText();
                    int i31112 = i30;
                    TextFieldType textFieldType7 = TextFieldType.Outlined;
                    TextFieldLabelPosition.Attached attached7 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                    if (bm3Var25 == null) {
                        composerStartRestartGroup.startReplaceGroup(1927058812);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1927058813);
                        ComposableLambda composableLambdaRememberComposableLambda7 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                            public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i31113) {
                                if (!composer3.shouldExecute((i31113 & 17) != 16, i31113 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1459717586, i31113, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                }
                                bm3Var25.invoke(composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                invoke(textFieldLabelScope, composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda7;
                    }
                    int i31113 = i4 >> 9;
                    int i31114 = i31112 << 21;
                    int i31115 = ((i4 << 3) & 896) | 6 | (i31113 & 458752) | (i31113 & 3670016) | (i31114 & 29360128) | (i31114 & 234881024) | (i31114 & 1879048192);
                    int i31116 = (i31113 & 7168) | ((i31112 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i31112 & 458752) | ((i31112 << 6) & 3670016) | ((i31112 << 3) & 29360128);
                    composer2 = composerStartRestartGroup;
                    bm3<? super Composer, ? super Integer, j59> bm3Var2115 = bm3Var19;
                    bm3<? super Composer, ? super Integer, j59> bm3Var318 = bm3Var20;
                    bm3<? super Composer, ? super Integer, j59> bm3Var319 = bm3Var21;
                    bm3<? super Composer, ? super Integer, j59> bm3Var3110 = bm3Var22;
                    TextFieldImplKt.CommonDecorationBox(textFieldType7, text7, bm3Var, attached7, composableLambda, bm3Var2115, bm3Var318, bm3Var319, bm3Var3110, bm3Var26, bm3Var27, z2, z, z16, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i31115, i31116);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var17 = bm3Var26;
                    bm3Var15 = bm3Var27;
                    paddingValues2 = paddingValues3;
                    bm3Var16 = bm3Var9;
                    bm3Var13 = bm3Var319;
                    bm3Var14 = bm3Var3110;
                    bm3Var11 = bm3Var2115;
                    bm3Var12 = bm3Var318;
                    z6 = z16;
                    textFieldColors2 = textFieldColors3;
                    bm3Var10 = bm3Var25;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var10 = bm3Var2;
                    bm3Var11 = bm3Var3;
                    bm3Var12 = bm3Var4;
                    bm3Var13 = bm3Var5;
                    bm3Var14 = bm3Var6;
                    bm3Var15 = bm3Var8;
                    textFieldColors2 = textFieldColors;
                    paddingValues2 = paddingValues;
                    bm3Var16 = bm3Var9;
                    z6 = z4;
                    bm3Var17 = bm3Var7;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 100663296;
            i16 = i3 & 512;
            if (i16 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i17 = 536870912;
                    } else {
                        i17 = 268435456;
                    }
                    i4 |= i17;
                }
                i18 = i3 & 1024;
                if (i18 != 0) {
                    i19 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                        i20 = 4;
                    } else {
                        i20 = 2;
                    }
                    i19 = i2 | i20;
                } else {
                    i19 = i2;
                }
                i21 = i3 & 2048;
                if (i21 != 0) {
                    i19 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i22 = 32;
                    } else {
                        i22 = 16;
                    }
                    i19 |= i22;
                }
                i23 = i19;
                i24 = i3 & 4096;
                if (i24 != 0) {
                    i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                } else {
                    i25 = i23;
                }
                i26 = i3 & 8192;
                if (i26 != 0) {
                    i28 = i25 | 3072;
                } else {
                    i27 = i25;
                    if ((i2 & 3072) == 0) {
                        i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                    } else {
                        i28 = i27;
                    }
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i7 = 16384;
                    }
                    i28 |= i7;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32768) == 0) {
                        i31 = 65536;
                    } else {
                        i31 = 65536;
                    }
                    i28 |= i31;
                }
                i29 = i3 & 65536;
                if (i29 != 0) {
                    i28 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                }
                if ((i3 & 131072) != 0) {
                    i28 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                }
                if ((i4 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var2116 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i31117) {
                                    if (!composer3.shouldExecute((i31117 & 3) != 2, i31117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i31117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var2116;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    } else {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var2117 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i31117) {
                                    if (!composer3.shouldExecute((i31117 & 3) != 2, i31117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i31117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var2117;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    }
                    boolean z17 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                    }
                    if ((i4 & 14) == 4) {
                        z8 = z7;
                    } else {
                        z8 = false;
                    }
                    z9 = z8 | ((i4 & 57344) == 16384);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    String text8 = ((TransformedText) objRememberedValue).getText().getText();
                    int i31117 = i30;
                    TextFieldType textFieldType8 = TextFieldType.Outlined;
                    TextFieldLabelPosition.Attached attached8 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                    if (bm3Var25 == null) {
                        composerStartRestartGroup.startReplaceGroup(1927058812);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1927058813);
                        ComposableLambda composableLambdaRememberComposableLambda8 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                            public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i31118) {
                                if (!composer3.shouldExecute((i31118 & 17) != 16, i31118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1459717586, i31118, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                }
                                bm3Var25.invoke(composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                invoke(textFieldLabelScope, composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda8;
                    }
                    int i31118 = i4 >> 9;
                    int i31119 = i31117 << 21;
                    int i311110 = ((i4 << 3) & 896) | 6 | (i31118 & 458752) | (i31118 & 3670016) | (i31119 & 29360128) | (i31119 & 234881024) | (i31119 & 1879048192);
                    int i311111 = (i31118 & 7168) | ((i31117 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i31117 & 458752) | ((i31117 << 6) & 3670016) | ((i31117 << 3) & 29360128);
                    composer2 = composerStartRestartGroup;
                    bm3<? super Composer, ? super Integer, j59> bm3Var2118 = bm3Var19;
                    bm3<? super Composer, ? super Integer, j59> bm3Var3111 = bm3Var20;
                    bm3<? super Composer, ? super Integer, j59> bm3Var3112 = bm3Var21;
                    bm3<? super Composer, ? super Integer, j59> bm3Var3113 = bm3Var22;
                    TextFieldImplKt.CommonDecorationBox(textFieldType8, text8, bm3Var, attached8, composableLambda, bm3Var2118, bm3Var3111, bm3Var3112, bm3Var3113, bm3Var26, bm3Var27, z2, z, z17, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i311110, i311111);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var17 = bm3Var26;
                    bm3Var15 = bm3Var27;
                    paddingValues2 = paddingValues3;
                    bm3Var16 = bm3Var9;
                    bm3Var13 = bm3Var3112;
                    bm3Var14 = bm3Var3113;
                    bm3Var11 = bm3Var2118;
                    bm3Var12 = bm3Var3111;
                    z6 = z17;
                    textFieldColors2 = textFieldColors3;
                    bm3Var10 = bm3Var25;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var10 = bm3Var2;
                    bm3Var11 = bm3Var3;
                    bm3Var12 = bm3Var4;
                    bm3Var13 = bm3Var5;
                    bm3Var14 = bm3Var6;
                    bm3Var15 = bm3Var8;
                    textFieldColors2 = textFieldColors;
                    paddingValues2 = paddingValues;
                    bm3Var16 = bm3Var9;
                    z6 = z4;
                    bm3Var17 = bm3Var7;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i18 = i3 & 1024;
            if (i18 != 0) {
                i19 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                    i20 = 4;
                } else {
                    i20 = 2;
                }
                i19 = i2 | i20;
            } else {
                i19 = i2;
            }
            i21 = i3 & 2048;
            if (i21 != 0) {
                i19 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                    i22 = 32;
                } else {
                    i22 = 16;
                }
                i19 |= i22;
            }
            i23 = i19;
            i24 = i3 & 4096;
            if (i24 != 0) {
                i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
            } else {
                i25 = i23;
            }
            i26 = i3 & 8192;
            if (i26 != 0) {
                i28 = i25 | 3072;
            } else {
                i27 = i25;
                if ((i2 & 3072) == 0) {
                    i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                } else {
                    i28 = i27;
                }
            }
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i7 = 16384;
                }
                i28 |= i7;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32768) == 0) {
                    i31 = 65536;
                } else {
                    i31 = 65536;
                }
                i28 |= i31;
            }
            i29 = i3 & 65536;
            if (i29 != 0) {
                i28 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
            }
            if ((i3 & 131072) != 0) {
                i28 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
            }
            if ((i4 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var2119 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i311112) {
                                if (!composer3.shouldExecute((i311112 & 3) != 2, i311112 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i311112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var2119;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                } else {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var21110 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i311112) {
                                if (!composer3.shouldExecute((i311112 & 3) != 2, i311112 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i311112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var21110;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                }
                boolean z18 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                }
                if ((i4 & 14) == 4) {
                    z8 = z7;
                } else {
                    z8 = false;
                }
                z9 = z8 | ((i4 & 57344) == 16384);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                String text9 = ((TransformedText) objRememberedValue).getText().getText();
                int i311112 = i30;
                TextFieldType textFieldType9 = TextFieldType.Outlined;
                TextFieldLabelPosition.Attached attached9 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                if (bm3Var25 == null) {
                    composerStartRestartGroup.startReplaceGroup(1927058812);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1927058813);
                    ComposableLambda composableLambdaRememberComposableLambda9 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                        public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i311113) {
                            if (!composer3.shouldExecute((i311113 & 17) != 16, i311113 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1459717586, i311113, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                            }
                            bm3Var25.invoke(composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                            invoke(textFieldLabelScope, composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda9;
                }
                int i311113 = i4 >> 9;
                int i311114 = i311112 << 21;
                int i311115 = ((i4 << 3) & 896) | 6 | (i311113 & 458752) | (i311113 & 3670016) | (i311114 & 29360128) | (i311114 & 234881024) | (i311114 & 1879048192);
                int i311116 = (i311113 & 7168) | ((i311112 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i311112 & 458752) | ((i311112 << 6) & 3670016) | ((i311112 << 3) & 29360128);
                composer2 = composerStartRestartGroup;
                bm3<? super Composer, ? super Integer, j59> bm3Var21111 = bm3Var19;
                bm3<? super Composer, ? super Integer, j59> bm3Var3114 = bm3Var20;
                bm3<? super Composer, ? super Integer, j59> bm3Var3115 = bm3Var21;
                bm3<? super Composer, ? super Integer, j59> bm3Var3116 = bm3Var22;
                TextFieldImplKt.CommonDecorationBox(textFieldType9, text9, bm3Var, attached9, composableLambda, bm3Var21111, bm3Var3114, bm3Var3115, bm3Var3116, bm3Var26, bm3Var27, z2, z, z18, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i311115, i311116);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var17 = bm3Var26;
                bm3Var15 = bm3Var27;
                paddingValues2 = paddingValues3;
                bm3Var16 = bm3Var9;
                bm3Var13 = bm3Var3115;
                bm3Var14 = bm3Var3116;
                bm3Var11 = bm3Var21111;
                bm3Var12 = bm3Var3114;
                z6 = z18;
                textFieldColors2 = textFieldColors3;
                bm3Var10 = bm3Var25;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var10 = bm3Var2;
                bm3Var11 = bm3Var3;
                bm3Var12 = bm3Var4;
                bm3Var13 = bm3Var5;
                bm3Var14 = bm3Var6;
                bm3Var15 = bm3Var8;
                textFieldColors2 = textFieldColors;
                paddingValues2 = paddingValues;
                bm3Var16 = bm3Var9;
                z6 = z4;
                bm3Var17 = bm3Var7;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        if ((i3 & 4) != 0) {
            i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if (composerStartRestartGroup.changed(z)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i4 |= i5;
        }
        if ((i3 & 8) != 0) {
            if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changed(z2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            i7 = 8192;
            if ((i3 & 16) != 0) {
                i4 |= 24576;
            } else if ((i & 24576) == 0) {
                if (composerStartRestartGroup.changed(visualTransformation)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((i3 & 32) != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(interactionSource)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i4 |= i9;
            }
            i10 = i3 & 64;
            if (i10 != 0) {
                i4 |= 1572864;
                z4 = z3;
            } else {
                z4 = z3;
                if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(z4)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i4 |= i11;
                }
            }
            i12 = i3 & 128;
            if (i12 != 0) {
                i4 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                    i13 = 8388608;
                } else {
                    i13 = 4194304;
                }
                i4 |= i13;
            }
            i14 = i3 & 256;
            if (i14 != 0) {
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i15 = 67108864;
                    } else {
                        i15 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i15;
                }
                i16 = i3 & 512;
                if (i16 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                            i17 = 536870912;
                        } else {
                            i17 = 268435456;
                        }
                        i4 |= i17;
                    }
                    i18 = i3 & 1024;
                    if (i18 != 0) {
                        i19 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                            i20 = 4;
                        } else {
                            i20 = 2;
                        }
                        i19 = i2 | i20;
                    } else {
                        i19 = i2;
                    }
                    i21 = i3 & 2048;
                    if (i21 != 0) {
                        i19 |= 48;
                    } else if ((i2 & 48) != 0) {
                        if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                            i22 = 32;
                        } else {
                            i22 = 16;
                        }
                        i19 |= i22;
                    }
                    i23 = i19;
                    i24 = i3 & 4096;
                    if (i24 != 0) {
                        i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                    } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                    } else {
                        i25 = i23;
                    }
                    i26 = i3 & 8192;
                    if (i26 != 0) {
                        i28 = i25 | 3072;
                    } else {
                        i27 = i25;
                        if ((i2 & 3072) == 0) {
                            i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                        } else {
                            i28 = i27;
                        }
                    }
                    if ((i2 & 24576) != 0) {
                        if ((i3 & 16384) == 0) {
                            i7 = 16384;
                        }
                        i28 |= i7;
                    }
                    if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                        if ((i3 & 32768) == 0) {
                            i31 = 65536;
                        } else {
                            i31 = 65536;
                        }
                        i28 |= i31;
                    }
                    i29 = i3 & 65536;
                    if (i29 != 0) {
                        i28 |= 1572864;
                    } else if ((i2 & 1572864) == 0) {
                        i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                    }
                    if ((i3 & 131072) != 0) {
                        i28 |= 12582912;
                    } else if ((i2 & 12582912) == 0) {
                        i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                    }
                    if ((i4 & 306783379) == 306783378) {
                        z5 = true;
                    } else {
                        z5 = true;
                    }
                    if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var21112 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i311117) {
                                        if (!composer3.shouldExecute((i311117 & 3) != 2, i311117 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i311117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var21112;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        } else {
                            if (i10 != 0) {
                                z4 = false;
                            }
                            if (i12 != 0) {
                                bm3Var18 = null;
                            } else {
                                bm3Var18 = bm3Var2;
                            }
                            if (i14 != 0) {
                                bm3Var19 = null;
                            } else {
                                bm3Var19 = bm3Var3;
                            }
                            if (i16 != 0) {
                                bm3Var20 = null;
                            } else {
                                bm3Var20 = bm3Var4;
                            }
                            if (i18 != 0) {
                                bm3Var21 = null;
                            } else {
                                bm3Var21 = bm3Var5;
                            }
                            if (i21 != 0) {
                                bm3Var22 = null;
                            } else {
                                bm3Var22 = bm3Var6;
                            }
                            if (i24 != 0) {
                                bm3Var23 = null;
                            } else {
                                bm3Var23 = bm3Var7;
                            }
                            if (i26 != 0) {
                                bm3Var24 = null;
                            } else {
                                bm3Var24 = bm3Var8;
                            }
                            if ((i3 & 16384) != 0) {
                                textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                                i28 &= -57345;
                            } else {
                                textFieldColorsColors = textFieldColors;
                            }
                            if ((i3 & 32768) != 0) {
                                paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i28 &= -458753;
                            } else {
                                paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                            }
                            if (i29 != 0) {
                                bm3<? super Composer, ? super Integer, j59> bm3Var21113 = bm3Var18;
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                    public final void invoke(Composer composer3, int i311117) {
                                        if (!composer3.shouldExecute((i311117 & 3) != 2, i311117 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-896270173, i311117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                        }
                                        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                        outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                                z7 = true;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                bm3Var25 = bm3Var21113;
                            } else {
                                textFieldColors3 = textFieldColorsColors;
                                paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                                bm3Var25 = bm3Var18;
                                i30 = i28;
                                bm3Var26 = bm3Var23;
                                bm3Var27 = bm3Var24;
                                z7 = true;
                            }
                        }
                        boolean z19 = z4;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                        }
                        if ((i4 & 14) == 4) {
                            z8 = z7;
                        } else {
                            z8 = false;
                        }
                        z9 = z8 | ((i4 & 57344) == 16384);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (z9) {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        } else {
                            objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        String text10 = ((TransformedText) objRememberedValue).getText().getText();
                        int i311117 = i30;
                        TextFieldType textFieldType10 = TextFieldType.Outlined;
                        TextFieldLabelPosition.Attached attached10 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                        if (bm3Var25 == null) {
                            composerStartRestartGroup.startReplaceGroup(1927058812);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = null;
                        } else {
                            composerStartRestartGroup.startReplaceGroup(1927058813);
                            ComposableLambda composableLambdaRememberComposableLambda10 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                                public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i311118) {
                                    if (!composer3.shouldExecute((i311118 & 17) != 16, i311118 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1459717586, i311118, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                    }
                                    bm3Var25.invoke(composer3, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                    invoke(textFieldLabelScope, composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambda = composableLambdaRememberComposableLambda10;
                        }
                        int i311118 = i4 >> 9;
                        int i311119 = i311117 << 21;
                        int i3111110 = ((i4 << 3) & 896) | 6 | (i311118 & 458752) | (i311118 & 3670016) | (i311119 & 29360128) | (i311119 & 234881024) | (i311119 & 1879048192);
                        int i3111111 = (i311118 & 7168) | ((i311117 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i311117 & 458752) | ((i311117 << 6) & 3670016) | ((i311117 << 3) & 29360128);
                        composer2 = composerStartRestartGroup;
                        bm3<? super Composer, ? super Integer, j59> bm3Var21114 = bm3Var19;
                        bm3<? super Composer, ? super Integer, j59> bm3Var3117 = bm3Var20;
                        bm3<? super Composer, ? super Integer, j59> bm3Var3118 = bm3Var21;
                        bm3<? super Composer, ? super Integer, j59> bm3Var3119 = bm3Var22;
                        TextFieldImplKt.CommonDecorationBox(textFieldType10, text10, bm3Var, attached10, composableLambda, bm3Var21114, bm3Var3117, bm3Var3118, bm3Var3119, bm3Var26, bm3Var27, z2, z, z19, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i3111110, i3111111);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        bm3Var17 = bm3Var26;
                        bm3Var15 = bm3Var27;
                        paddingValues2 = paddingValues3;
                        bm3Var16 = bm3Var9;
                        bm3Var13 = bm3Var3118;
                        bm3Var14 = bm3Var3119;
                        bm3Var11 = bm3Var21114;
                        bm3Var12 = bm3Var3117;
                        z6 = z19;
                        textFieldColors2 = textFieldColors3;
                        bm3Var10 = bm3Var25;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        bm3Var10 = bm3Var2;
                        bm3Var11 = bm3Var3;
                        bm3Var12 = bm3Var4;
                        bm3Var13 = bm3Var5;
                        bm3Var14 = bm3Var6;
                        bm3Var15 = bm3Var8;
                        textFieldColors2 = textFieldColors;
                        paddingValues2 = paddingValues;
                        bm3Var16 = bm3Var9;
                        z6 = z4;
                        bm3Var17 = bm3Var7;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i18 = i3 & 1024;
                if (i18 != 0) {
                    i19 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                        i20 = 4;
                    } else {
                        i20 = 2;
                    }
                    i19 = i2 | i20;
                } else {
                    i19 = i2;
                }
                i21 = i3 & 2048;
                if (i21 != 0) {
                    i19 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i22 = 32;
                    } else {
                        i22 = 16;
                    }
                    i19 |= i22;
                }
                i23 = i19;
                i24 = i3 & 4096;
                if (i24 != 0) {
                    i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                } else {
                    i25 = i23;
                }
                i26 = i3 & 8192;
                if (i26 != 0) {
                    i28 = i25 | 3072;
                } else {
                    i27 = i25;
                    if ((i2 & 3072) == 0) {
                        i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                    } else {
                        i28 = i27;
                    }
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i7 = 16384;
                    }
                    i28 |= i7;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32768) == 0) {
                        i31 = 65536;
                    } else {
                        i31 = 65536;
                    }
                    i28 |= i31;
                }
                i29 = i3 & 65536;
                if (i29 != 0) {
                    i28 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                }
                if ((i3 & 131072) != 0) {
                    i28 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                }
                if ((i4 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var21115 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i3111112) {
                                    if (!composer3.shouldExecute((i3111112 & 3) != 2, i3111112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i3111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var21115;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    } else {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var21116 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i3111112) {
                                    if (!composer3.shouldExecute((i3111112 & 3) != 2, i3111112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i3111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var21116;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    }
                    boolean z110 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                    }
                    if ((i4 & 14) == 4) {
                        z8 = z7;
                    } else {
                        z8 = false;
                    }
                    z9 = z8 | ((i4 & 57344) == 16384);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    String text11 = ((TransformedText) objRememberedValue).getText().getText();
                    int i3111112 = i30;
                    TextFieldType textFieldType11 = TextFieldType.Outlined;
                    TextFieldLabelPosition.Attached attached11 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                    if (bm3Var25 == null) {
                        composerStartRestartGroup.startReplaceGroup(1927058812);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1927058813);
                        ComposableLambda composableLambdaRememberComposableLambda11 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                            public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i3111113) {
                                if (!composer3.shouldExecute((i3111113 & 17) != 16, i3111113 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1459717586, i3111113, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                }
                                bm3Var25.invoke(composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                invoke(textFieldLabelScope, composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda11;
                    }
                    int i3111113 = i4 >> 9;
                    int i3111114 = i3111112 << 21;
                    int i3111115 = ((i4 << 3) & 896) | 6 | (i3111113 & 458752) | (i3111113 & 3670016) | (i3111114 & 29360128) | (i3111114 & 234881024) | (i3111114 & 1879048192);
                    int i3111116 = (i3111113 & 7168) | ((i3111112 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i3111112 & 458752) | ((i3111112 << 6) & 3670016) | ((i3111112 << 3) & 29360128);
                    composer2 = composerStartRestartGroup;
                    bm3<? super Composer, ? super Integer, j59> bm3Var21117 = bm3Var19;
                    bm3<? super Composer, ? super Integer, j59> bm3Var31110 = bm3Var20;
                    bm3<? super Composer, ? super Integer, j59> bm3Var31111 = bm3Var21;
                    bm3<? super Composer, ? super Integer, j59> bm3Var31112 = bm3Var22;
                    TextFieldImplKt.CommonDecorationBox(textFieldType11, text11, bm3Var, attached11, composableLambda, bm3Var21117, bm3Var31110, bm3Var31111, bm3Var31112, bm3Var26, bm3Var27, z2, z, z110, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i3111115, i3111116);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var17 = bm3Var26;
                    bm3Var15 = bm3Var27;
                    paddingValues2 = paddingValues3;
                    bm3Var16 = bm3Var9;
                    bm3Var13 = bm3Var31111;
                    bm3Var14 = bm3Var31112;
                    bm3Var11 = bm3Var21117;
                    bm3Var12 = bm3Var31110;
                    z6 = z110;
                    textFieldColors2 = textFieldColors3;
                    bm3Var10 = bm3Var25;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var10 = bm3Var2;
                    bm3Var11 = bm3Var3;
                    bm3Var12 = bm3Var4;
                    bm3Var13 = bm3Var5;
                    bm3Var14 = bm3Var6;
                    bm3Var15 = bm3Var8;
                    textFieldColors2 = textFieldColors;
                    paddingValues2 = paddingValues;
                    bm3Var16 = bm3Var9;
                    z6 = z4;
                    bm3Var17 = bm3Var7;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 100663296;
            i16 = i3 & 512;
            if (i16 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i17 = 536870912;
                    } else {
                        i17 = 268435456;
                    }
                    i4 |= i17;
                }
                i18 = i3 & 1024;
                if (i18 != 0) {
                    i19 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                        i20 = 4;
                    } else {
                        i20 = 2;
                    }
                    i19 = i2 | i20;
                } else {
                    i19 = i2;
                }
                i21 = i3 & 2048;
                if (i21 != 0) {
                    i19 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i22 = 32;
                    } else {
                        i22 = 16;
                    }
                    i19 |= i22;
                }
                i23 = i19;
                i24 = i3 & 4096;
                if (i24 != 0) {
                    i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                } else {
                    i25 = i23;
                }
                i26 = i3 & 8192;
                if (i26 != 0) {
                    i28 = i25 | 3072;
                } else {
                    i27 = i25;
                    if ((i2 & 3072) == 0) {
                        i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                    } else {
                        i28 = i27;
                    }
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i7 = 16384;
                    }
                    i28 |= i7;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32768) == 0) {
                        i31 = 65536;
                    } else {
                        i31 = 65536;
                    }
                    i28 |= i31;
                }
                i29 = i3 & 65536;
                if (i29 != 0) {
                    i28 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                }
                if ((i3 & 131072) != 0) {
                    i28 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                }
                if ((i4 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var21118 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i3111117) {
                                    if (!composer3.shouldExecute((i3111117 & 3) != 2, i3111117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i3111117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var21118;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    } else {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var21119 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i3111117) {
                                    if (!composer3.shouldExecute((i3111117 & 3) != 2, i3111117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i3111117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var21119;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    }
                    boolean z111 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                    }
                    if ((i4 & 14) == 4) {
                        z8 = z7;
                    } else {
                        z8 = false;
                    }
                    z9 = z8 | ((i4 & 57344) == 16384);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    String text12 = ((TransformedText) objRememberedValue).getText().getText();
                    int i3111117 = i30;
                    TextFieldType textFieldType12 = TextFieldType.Outlined;
                    TextFieldLabelPosition.Attached attached12 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                    if (bm3Var25 == null) {
                        composerStartRestartGroup.startReplaceGroup(1927058812);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1927058813);
                        ComposableLambda composableLambdaRememberComposableLambda12 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                            public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i3111118) {
                                if (!composer3.shouldExecute((i3111118 & 17) != 16, i3111118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1459717586, i3111118, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                }
                                bm3Var25.invoke(composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                invoke(textFieldLabelScope, composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda12;
                    }
                    int i3111118 = i4 >> 9;
                    int i3111119 = i3111117 << 21;
                    int i31111110 = ((i4 << 3) & 896) | 6 | (i3111118 & 458752) | (i3111118 & 3670016) | (i3111119 & 29360128) | (i3111119 & 234881024) | (i3111119 & 1879048192);
                    int i31111111 = (i3111118 & 7168) | ((i3111117 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i3111117 & 458752) | ((i3111117 << 6) & 3670016) | ((i3111117 << 3) & 29360128);
                    composer2 = composerStartRestartGroup;
                    bm3<? super Composer, ? super Integer, j59> bm3Var211110 = bm3Var19;
                    bm3<? super Composer, ? super Integer, j59> bm3Var31113 = bm3Var20;
                    bm3<? super Composer, ? super Integer, j59> bm3Var31114 = bm3Var21;
                    bm3<? super Composer, ? super Integer, j59> bm3Var31115 = bm3Var22;
                    TextFieldImplKt.CommonDecorationBox(textFieldType12, text12, bm3Var, attached12, composableLambda, bm3Var211110, bm3Var31113, bm3Var31114, bm3Var31115, bm3Var26, bm3Var27, z2, z, z111, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i31111110, i31111111);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var17 = bm3Var26;
                    bm3Var15 = bm3Var27;
                    paddingValues2 = paddingValues3;
                    bm3Var16 = bm3Var9;
                    bm3Var13 = bm3Var31114;
                    bm3Var14 = bm3Var31115;
                    bm3Var11 = bm3Var211110;
                    bm3Var12 = bm3Var31113;
                    z6 = z111;
                    textFieldColors2 = textFieldColors3;
                    bm3Var10 = bm3Var25;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var10 = bm3Var2;
                    bm3Var11 = bm3Var3;
                    bm3Var12 = bm3Var4;
                    bm3Var13 = bm3Var5;
                    bm3Var14 = bm3Var6;
                    bm3Var15 = bm3Var8;
                    textFieldColors2 = textFieldColors;
                    paddingValues2 = paddingValues;
                    bm3Var16 = bm3Var9;
                    z6 = z4;
                    bm3Var17 = bm3Var7;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i18 = i3 & 1024;
            if (i18 != 0) {
                i19 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                    i20 = 4;
                } else {
                    i20 = 2;
                }
                i19 = i2 | i20;
            } else {
                i19 = i2;
            }
            i21 = i3 & 2048;
            if (i21 != 0) {
                i19 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                    i22 = 32;
                } else {
                    i22 = 16;
                }
                i19 |= i22;
            }
            i23 = i19;
            i24 = i3 & 4096;
            if (i24 != 0) {
                i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
            } else {
                i25 = i23;
            }
            i26 = i3 & 8192;
            if (i26 != 0) {
                i28 = i25 | 3072;
            } else {
                i27 = i25;
                if ((i2 & 3072) == 0) {
                    i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                } else {
                    i28 = i27;
                }
            }
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i7 = 16384;
                }
                i28 |= i7;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32768) == 0) {
                    i31 = 65536;
                } else {
                    i31 = 65536;
                }
                i28 |= i31;
            }
            i29 = i3 & 65536;
            if (i29 != 0) {
                i28 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
            }
            if ((i3 & 131072) != 0) {
                i28 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
            }
            if ((i4 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var211111 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i31111112) {
                                if (!composer3.shouldExecute((i31111112 & 3) != 2, i31111112 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i31111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var211111;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                } else {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var211112 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i31111112) {
                                if (!composer3.shouldExecute((i31111112 & 3) != 2, i31111112 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i31111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var211112;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                }
                boolean z112 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                }
                if ((i4 & 14) == 4) {
                    z8 = z7;
                } else {
                    z8 = false;
                }
                z9 = z8 | ((i4 & 57344) == 16384);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                String text13 = ((TransformedText) objRememberedValue).getText().getText();
                int i31111112 = i30;
                TextFieldType textFieldType13 = TextFieldType.Outlined;
                TextFieldLabelPosition.Attached attached13 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                if (bm3Var25 == null) {
                    composerStartRestartGroup.startReplaceGroup(1927058812);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1927058813);
                    ComposableLambda composableLambdaRememberComposableLambda13 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                        public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i31111113) {
                            if (!composer3.shouldExecute((i31111113 & 17) != 16, i31111113 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1459717586, i31111113, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                            }
                            bm3Var25.invoke(composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                            invoke(textFieldLabelScope, composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda13;
                }
                int i31111113 = i4 >> 9;
                int i31111114 = i31111112 << 21;
                int i31111115 = ((i4 << 3) & 896) | 6 | (i31111113 & 458752) | (i31111113 & 3670016) | (i31111114 & 29360128) | (i31111114 & 234881024) | (i31111114 & 1879048192);
                int i31111116 = (i31111113 & 7168) | ((i31111112 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i31111112 & 458752) | ((i31111112 << 6) & 3670016) | ((i31111112 << 3) & 29360128);
                composer2 = composerStartRestartGroup;
                bm3<? super Composer, ? super Integer, j59> bm3Var211113 = bm3Var19;
                bm3<? super Composer, ? super Integer, j59> bm3Var31116 = bm3Var20;
                bm3<? super Composer, ? super Integer, j59> bm3Var31117 = bm3Var21;
                bm3<? super Composer, ? super Integer, j59> bm3Var31118 = bm3Var22;
                TextFieldImplKt.CommonDecorationBox(textFieldType13, text13, bm3Var, attached13, composableLambda, bm3Var211113, bm3Var31116, bm3Var31117, bm3Var31118, bm3Var26, bm3Var27, z2, z, z112, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i31111115, i31111116);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var17 = bm3Var26;
                bm3Var15 = bm3Var27;
                paddingValues2 = paddingValues3;
                bm3Var16 = bm3Var9;
                bm3Var13 = bm3Var31117;
                bm3Var14 = bm3Var31118;
                bm3Var11 = bm3Var211113;
                bm3Var12 = bm3Var31116;
                z6 = z112;
                textFieldColors2 = textFieldColors3;
                bm3Var10 = bm3Var25;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var10 = bm3Var2;
                bm3Var11 = bm3Var3;
                bm3Var12 = bm3Var4;
                bm3Var13 = bm3Var5;
                bm3Var14 = bm3Var6;
                bm3Var15 = bm3Var8;
                textFieldColors2 = textFieldColors;
                paddingValues2 = paddingValues;
                bm3Var16 = bm3Var9;
                z6 = z4;
                bm3Var17 = bm3Var7;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        i7 = 8192;
        if ((i3 & 16) != 0) {
            i4 |= 24576;
        } else if ((i & 24576) == 0) {
            if (composerStartRestartGroup.changed(visualTransformation)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i4 |= i8;
        }
        if ((i3 & 32) != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(interactionSource)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i4 |= i9;
        }
        i10 = i3 & 64;
        if (i10 != 0) {
            i4 |= 1572864;
            z4 = z3;
        } else {
            z4 = z3;
            if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(z4)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i4 |= i11;
            }
        }
        i12 = i3 & 128;
        if (i12 != 0) {
            i4 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                i13 = 8388608;
            } else {
                i13 = 4194304;
            }
            i4 |= i13;
        }
        i14 = i3 & 256;
        if (i14 != 0) {
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                    i15 = 67108864;
                } else {
                    i15 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i15;
            }
            i16 = i3 & 512;
            if (i16 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                        i17 = 536870912;
                    } else {
                        i17 = 268435456;
                    }
                    i4 |= i17;
                }
                i18 = i3 & 1024;
                if (i18 != 0) {
                    i19 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                        i20 = 4;
                    } else {
                        i20 = 2;
                    }
                    i19 = i2 | i20;
                } else {
                    i19 = i2;
                }
                i21 = i3 & 2048;
                if (i21 != 0) {
                    i19 |= 48;
                } else if ((i2 & 48) != 0) {
                    if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                        i22 = 32;
                    } else {
                        i22 = 16;
                    }
                    i19 |= i22;
                }
                i23 = i19;
                i24 = i3 & 4096;
                if (i24 != 0) {
                    i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
                } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
                } else {
                    i25 = i23;
                }
                i26 = i3 & 8192;
                if (i26 != 0) {
                    i28 = i25 | 3072;
                } else {
                    i27 = i25;
                    if ((i2 & 3072) == 0) {
                        i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                    } else {
                        i28 = i27;
                    }
                }
                if ((i2 & 24576) != 0) {
                    if ((i3 & 16384) == 0) {
                        i7 = 16384;
                    }
                    i28 |= i7;
                }
                if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                    if ((i3 & 32768) == 0) {
                        i31 = 65536;
                    } else {
                        i31 = 65536;
                    }
                    i28 |= i31;
                }
                i29 = i3 & 65536;
                if (i29 != 0) {
                    i28 |= 1572864;
                } else if ((i2 & 1572864) == 0) {
                    i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
                }
                if ((i3 & 131072) != 0) {
                    i28 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
                }
                if ((i4 & 306783379) == 306783378) {
                    z5 = true;
                } else {
                    z5 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var211114 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i31111117) {
                                    if (!composer3.shouldExecute((i31111117 & 3) != 2, i31111117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i31111117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var211114;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    } else {
                        if (i10 != 0) {
                            z4 = false;
                        }
                        if (i12 != 0) {
                            bm3Var18 = null;
                        } else {
                            bm3Var18 = bm3Var2;
                        }
                        if (i14 != 0) {
                            bm3Var19 = null;
                        } else {
                            bm3Var19 = bm3Var3;
                        }
                        if (i16 != 0) {
                            bm3Var20 = null;
                        } else {
                            bm3Var20 = bm3Var4;
                        }
                        if (i18 != 0) {
                            bm3Var21 = null;
                        } else {
                            bm3Var21 = bm3Var5;
                        }
                        if (i21 != 0) {
                            bm3Var22 = null;
                        } else {
                            bm3Var22 = bm3Var6;
                        }
                        if (i24 != 0) {
                            bm3Var23 = null;
                        } else {
                            bm3Var23 = bm3Var7;
                        }
                        if (i26 != 0) {
                            bm3Var24 = null;
                        } else {
                            bm3Var24 = bm3Var8;
                        }
                        if ((i3 & 16384) != 0) {
                            textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                            i28 &= -57345;
                        } else {
                            textFieldColorsColors = textFieldColors;
                        }
                        if ((i3 & 32768) != 0) {
                            paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i28 &= -458753;
                        } else {
                            paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                        }
                        if (i29 != 0) {
                            bm3<? super Composer, ? super Integer, j59> bm3Var211115 = bm3Var18;
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                                public final void invoke(Composer composer3, int i31111117) {
                                    if (!composer3.shouldExecute((i31111117 & 3) != 2, i31111117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-896270173, i31111117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                    }
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                    outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                            z7 = true;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            bm3Var25 = bm3Var211115;
                        } else {
                            textFieldColors3 = textFieldColorsColors;
                            paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                            bm3Var25 = bm3Var18;
                            i30 = i28;
                            bm3Var26 = bm3Var23;
                            bm3Var27 = bm3Var24;
                            z7 = true;
                        }
                    }
                    boolean z113 = z4;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                    }
                    if ((i4 & 14) == 4) {
                        z8 = z7;
                    } else {
                        z8 = false;
                    }
                    z9 = z8 | ((i4 & 57344) == 16384);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (z9) {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    } else {
                        objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    String text14 = ((TransformedText) objRememberedValue).getText().getText();
                    int i31111117 = i30;
                    TextFieldType textFieldType14 = TextFieldType.Outlined;
                    TextFieldLabelPosition.Attached attached14 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                    if (bm3Var25 == null) {
                        composerStartRestartGroup.startReplaceGroup(1927058812);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = null;
                    } else {
                        composerStartRestartGroup.startReplaceGroup(1927058813);
                        ComposableLambda composableLambdaRememberComposableLambda14 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                            public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i31111118) {
                                if (!composer3.shouldExecute((i31111118 & 17) != 16, i31111118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1459717586, i31111118, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                                }
                                bm3Var25.invoke(composer3, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                                invoke(textFieldLabelScope, composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambda = composableLambdaRememberComposableLambda14;
                    }
                    int i31111118 = i4 >> 9;
                    int i31111119 = i31111117 << 21;
                    int i311111110 = ((i4 << 3) & 896) | 6 | (i31111118 & 458752) | (i31111118 & 3670016) | (i31111119 & 29360128) | (i31111119 & 234881024) | (i31111119 & 1879048192);
                    int i311111111 = (i31111118 & 7168) | ((i31111117 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i31111117 & 458752) | ((i31111117 << 6) & 3670016) | ((i31111117 << 3) & 29360128);
                    composer2 = composerStartRestartGroup;
                    bm3<? super Composer, ? super Integer, j59> bm3Var211116 = bm3Var19;
                    bm3<? super Composer, ? super Integer, j59> bm3Var31119 = bm3Var20;
                    bm3<? super Composer, ? super Integer, j59> bm3Var311110 = bm3Var21;
                    bm3<? super Composer, ? super Integer, j59> bm3Var311111 = bm3Var22;
                    TextFieldImplKt.CommonDecorationBox(textFieldType14, text14, bm3Var, attached14, composableLambda, bm3Var211116, bm3Var31119, bm3Var311110, bm3Var311111, bm3Var26, bm3Var27, z2, z, z113, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i311111110, i311111111);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    bm3Var17 = bm3Var26;
                    bm3Var15 = bm3Var27;
                    paddingValues2 = paddingValues3;
                    bm3Var16 = bm3Var9;
                    bm3Var13 = bm3Var311110;
                    bm3Var14 = bm3Var311111;
                    bm3Var11 = bm3Var211116;
                    bm3Var12 = bm3Var31119;
                    z6 = z113;
                    textFieldColors2 = textFieldColors3;
                    bm3Var10 = bm3Var25;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    bm3Var10 = bm3Var2;
                    bm3Var11 = bm3Var3;
                    bm3Var12 = bm3Var4;
                    bm3Var13 = bm3Var5;
                    bm3Var14 = bm3Var6;
                    bm3Var15 = bm3Var8;
                    textFieldColors2 = textFieldColors;
                    paddingValues2 = paddingValues;
                    bm3Var16 = bm3Var9;
                    z6 = z4;
                    bm3Var17 = bm3Var7;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i18 = i3 & 1024;
            if (i18 != 0) {
                i19 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                    i20 = 4;
                } else {
                    i20 = 2;
                }
                i19 = i2 | i20;
            } else {
                i19 = i2;
            }
            i21 = i3 & 2048;
            if (i21 != 0) {
                i19 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                    i22 = 32;
                } else {
                    i22 = 16;
                }
                i19 |= i22;
            }
            i23 = i19;
            i24 = i3 & 4096;
            if (i24 != 0) {
                i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
            } else {
                i25 = i23;
            }
            i26 = i3 & 8192;
            if (i26 != 0) {
                i28 = i25 | 3072;
            } else {
                i27 = i25;
                if ((i2 & 3072) == 0) {
                    i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                } else {
                    i28 = i27;
                }
            }
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i7 = 16384;
                }
                i28 |= i7;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32768) == 0) {
                    i31 = 65536;
                } else {
                    i31 = 65536;
                }
                i28 |= i31;
            }
            i29 = i3 & 65536;
            if (i29 != 0) {
                i28 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
            }
            if ((i3 & 131072) != 0) {
                i28 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
            }
            if ((i4 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var211117 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i311111112) {
                                if (!composer3.shouldExecute((i311111112 & 3) != 2, i311111112 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i311111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var211117;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                } else {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var211118 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i311111112) {
                                if (!composer3.shouldExecute((i311111112 & 3) != 2, i311111112 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i311111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var211118;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                }
                boolean z114 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                }
                if ((i4 & 14) == 4) {
                    z8 = z7;
                } else {
                    z8 = false;
                }
                z9 = z8 | ((i4 & 57344) == 16384);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                String text15 = ((TransformedText) objRememberedValue).getText().getText();
                int i311111112 = i30;
                TextFieldType textFieldType15 = TextFieldType.Outlined;
                TextFieldLabelPosition.Attached attached15 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                if (bm3Var25 == null) {
                    composerStartRestartGroup.startReplaceGroup(1927058812);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1927058813);
                    ComposableLambda composableLambdaRememberComposableLambda15 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                        public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i311111113) {
                            if (!composer3.shouldExecute((i311111113 & 17) != 16, i311111113 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1459717586, i311111113, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                            }
                            bm3Var25.invoke(composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                            invoke(textFieldLabelScope, composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda15;
                }
                int i311111113 = i4 >> 9;
                int i311111114 = i311111112 << 21;
                int i311111115 = ((i4 << 3) & 896) | 6 | (i311111113 & 458752) | (i311111113 & 3670016) | (i311111114 & 29360128) | (i311111114 & 234881024) | (i311111114 & 1879048192);
                int i311111116 = (i311111113 & 7168) | ((i311111112 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i311111112 & 458752) | ((i311111112 << 6) & 3670016) | ((i311111112 << 3) & 29360128);
                composer2 = composerStartRestartGroup;
                bm3<? super Composer, ? super Integer, j59> bm3Var211119 = bm3Var19;
                bm3<? super Composer, ? super Integer, j59> bm3Var311112 = bm3Var20;
                bm3<? super Composer, ? super Integer, j59> bm3Var311113 = bm3Var21;
                bm3<? super Composer, ? super Integer, j59> bm3Var311114 = bm3Var22;
                TextFieldImplKt.CommonDecorationBox(textFieldType15, text15, bm3Var, attached15, composableLambda, bm3Var211119, bm3Var311112, bm3Var311113, bm3Var311114, bm3Var26, bm3Var27, z2, z, z114, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i311111115, i311111116);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var17 = bm3Var26;
                bm3Var15 = bm3Var27;
                paddingValues2 = paddingValues3;
                bm3Var16 = bm3Var9;
                bm3Var13 = bm3Var311113;
                bm3Var14 = bm3Var311114;
                bm3Var11 = bm3Var211119;
                bm3Var12 = bm3Var311112;
                z6 = z114;
                textFieldColors2 = textFieldColors3;
                bm3Var10 = bm3Var25;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var10 = bm3Var2;
                bm3Var11 = bm3Var3;
                bm3Var12 = bm3Var4;
                bm3Var13 = bm3Var5;
                bm3Var14 = bm3Var6;
                bm3Var15 = bm3Var8;
                textFieldColors2 = textFieldColors;
                paddingValues2 = paddingValues;
                bm3Var16 = bm3Var9;
                z6 = z4;
                bm3Var17 = bm3Var7;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 100663296;
        i16 = i3 & 512;
        if (i16 != 0) {
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var4)) {
                    i17 = 536870912;
                } else {
                    i17 = 268435456;
                }
                i4 |= i17;
            }
            i18 = i3 & 1024;
            if (i18 != 0) {
                i19 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                    i20 = 4;
                } else {
                    i20 = 2;
                }
                i19 = i2 | i20;
            } else {
                i19 = i2;
            }
            i21 = i3 & 2048;
            if (i21 != 0) {
                i19 |= 48;
            } else if ((i2 & 48) != 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                    i22 = 32;
                } else {
                    i22 = 16;
                }
                i19 |= i22;
            }
            i23 = i19;
            i24 = i3 & 4096;
            if (i24 != 0) {
                i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
            } else {
                i25 = i23;
            }
            i26 = i3 & 8192;
            if (i26 != 0) {
                i28 = i25 | 3072;
            } else {
                i27 = i25;
                if ((i2 & 3072) == 0) {
                    i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
                } else {
                    i28 = i27;
                }
            }
            if ((i2 & 24576) != 0) {
                if ((i3 & 16384) == 0) {
                    i7 = 16384;
                }
                i28 |= i7;
            }
            if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
                if ((i3 & 32768) == 0) {
                    i31 = 65536;
                } else {
                    i31 = 65536;
                }
                i28 |= i31;
            }
            i29 = i3 & 65536;
            if (i29 != 0) {
                i28 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
            }
            if ((i3 & 131072) != 0) {
                i28 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
            }
            if ((i4 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var2111110 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i311111117) {
                                if (!composer3.shouldExecute((i311111117 & 3) != 2, i311111117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i311111117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var2111110;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                } else {
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        bm3Var18 = null;
                    } else {
                        bm3Var18 = bm3Var2;
                    }
                    if (i14 != 0) {
                        bm3Var19 = null;
                    } else {
                        bm3Var19 = bm3Var3;
                    }
                    if (i16 != 0) {
                        bm3Var20 = null;
                    } else {
                        bm3Var20 = bm3Var4;
                    }
                    if (i18 != 0) {
                        bm3Var21 = null;
                    } else {
                        bm3Var21 = bm3Var5;
                    }
                    if (i21 != 0) {
                        bm3Var22 = null;
                    } else {
                        bm3Var22 = bm3Var6;
                    }
                    if (i24 != 0) {
                        bm3Var23 = null;
                    } else {
                        bm3Var23 = bm3Var7;
                    }
                    if (i26 != 0) {
                        bm3Var24 = null;
                    } else {
                        bm3Var24 = bm3Var8;
                    }
                    if ((i3 & 16384) != 0) {
                        textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                        i28 &= -57345;
                    } else {
                        textFieldColorsColors = textFieldColors;
                    }
                    if ((i3 & 32768) != 0) {
                        paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i28 &= -458753;
                    } else {
                        paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                    }
                    if (i29 != 0) {
                        bm3<? super Composer, ? super Integer, j59> bm3Var2111111 = bm3Var18;
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                            public final void invoke(Composer composer3, int i311111117) {
                                if (!composer3.shouldExecute((i311111117 & 3) != 2, i311111117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-896270173, i311111117, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                                }
                                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                                outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                        z7 = true;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        bm3Var25 = bm3Var2111111;
                    } else {
                        textFieldColors3 = textFieldColorsColors;
                        paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                        bm3Var25 = bm3Var18;
                        i30 = i28;
                        bm3Var26 = bm3Var23;
                        bm3Var27 = bm3Var24;
                        z7 = true;
                    }
                }
                boolean z115 = z4;
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
                }
                if ((i4 & 14) == 4) {
                    z8 = z7;
                } else {
                    z8 = false;
                }
                z9 = z8 | ((i4 & 57344) == 16384);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z9) {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                String text16 = ((TransformedText) objRememberedValue).getText().getText();
                int i311111117 = i30;
                TextFieldType textFieldType16 = TextFieldType.Outlined;
                TextFieldLabelPosition.Attached attached16 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
                if (bm3Var25 == null) {
                    composerStartRestartGroup.startReplaceGroup(1927058812);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = null;
                } else {
                    composerStartRestartGroup.startReplaceGroup(1927058813);
                    ComposableLambda composableLambdaRememberComposableLambda16 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                        public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i311111118) {
                            if (!composer3.shouldExecute((i311111118 & 17) != 16, i311111118 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1459717586, i311111118, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                            }
                            bm3Var25.invoke(composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                            invoke(textFieldLabelScope, composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda16;
                }
                int i311111118 = i4 >> 9;
                int i311111119 = i311111117 << 21;
                int i3111111110 = ((i4 << 3) & 896) | 6 | (i311111118 & 458752) | (i311111118 & 3670016) | (i311111119 & 29360128) | (i311111119 & 234881024) | (i311111119 & 1879048192);
                int i3111111111 = (i311111118 & 7168) | ((i311111117 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i311111117 & 458752) | ((i311111117 << 6) & 3670016) | ((i311111117 << 3) & 29360128);
                composer2 = composerStartRestartGroup;
                bm3<? super Composer, ? super Integer, j59> bm3Var2111112 = bm3Var19;
                bm3<? super Composer, ? super Integer, j59> bm3Var311115 = bm3Var20;
                bm3<? super Composer, ? super Integer, j59> bm3Var311116 = bm3Var21;
                bm3<? super Composer, ? super Integer, j59> bm3Var311117 = bm3Var22;
                TextFieldImplKt.CommonDecorationBox(textFieldType16, text16, bm3Var, attached16, composableLambda, bm3Var2111112, bm3Var311115, bm3Var311116, bm3Var311117, bm3Var26, bm3Var27, z2, z, z115, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i3111111110, i3111111111);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                bm3Var17 = bm3Var26;
                bm3Var15 = bm3Var27;
                paddingValues2 = paddingValues3;
                bm3Var16 = bm3Var9;
                bm3Var13 = bm3Var311116;
                bm3Var14 = bm3Var311117;
                bm3Var11 = bm3Var2111112;
                bm3Var12 = bm3Var311115;
                z6 = z115;
                textFieldColors2 = textFieldColors3;
                bm3Var10 = bm3Var25;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                bm3Var10 = bm3Var2;
                bm3Var11 = bm3Var3;
                bm3Var12 = bm3Var4;
                bm3Var13 = bm3Var5;
                bm3Var14 = bm3Var6;
                bm3Var15 = bm3Var8;
                textFieldColors2 = textFieldColors;
                paddingValues2 = paddingValues;
                bm3Var16 = bm3Var9;
                z6 = z4;
                bm3Var17 = bm3Var7;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 805306368;
        i18 = i3 & 1024;
        if (i18 != 0) {
            i19 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var5)) {
                i20 = 4;
            } else {
                i20 = 2;
            }
            i19 = i2 | i20;
        } else {
            i19 = i2;
        }
        i21 = i3 & 2048;
        if (i21 != 0) {
            i19 |= 48;
        } else if ((i2 & 48) != 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var6)) {
                i22 = 32;
            } else {
                i22 = 16;
            }
            i19 |= i22;
        }
        i23 = i19;
        i24 = i3 & 4096;
        if (i24 != 0) {
            i25 = i23 | RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i25 = i23 | (composerStartRestartGroup.changedInstance(bm3Var7) ? 256 : 128);
        } else {
            i25 = i23;
        }
        i26 = i3 & 8192;
        if (i26 != 0) {
            i28 = i25 | 3072;
        } else {
            i27 = i25;
            if ((i2 & 3072) == 0) {
                i28 = i27 | (composerStartRestartGroup.changedInstance(bm3Var8) ? 2048 : 1024);
            } else {
                i28 = i27;
            }
        }
        if ((i2 & 24576) != 0) {
            if ((i3 & 16384) == 0) {
                i7 = 16384;
            }
            i28 |= i7;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 0) {
            if ((i3 & 32768) == 0) {
                i31 = 65536;
            } else {
                i31 = 65536;
            }
            i28 |= i31;
        }
        i29 = i3 & 65536;
        if (i29 != 0) {
            i28 |= 1572864;
        } else if ((i2 & 1572864) == 0) {
            i28 |= composerStartRestartGroup.changedInstance(bm3Var9) ? 1048576 : 524288;
        }
        if ((i3 & 131072) != 0) {
            i28 |= 12582912;
        } else if ((i2 & 12582912) == 0) {
            i28 |= composerStartRestartGroup.changed(this) ? 8388608 : 4194304;
        }
        if ((i4 & 306783379) == 306783378) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z5, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i10 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    bm3Var18 = null;
                } else {
                    bm3Var18 = bm3Var2;
                }
                if (i14 != 0) {
                    bm3Var19 = null;
                } else {
                    bm3Var19 = bm3Var3;
                }
                if (i16 != 0) {
                    bm3Var20 = null;
                } else {
                    bm3Var20 = bm3Var4;
                }
                if (i18 != 0) {
                    bm3Var21 = null;
                } else {
                    bm3Var21 = bm3Var5;
                }
                if (i21 != 0) {
                    bm3Var22 = null;
                } else {
                    bm3Var22 = bm3Var6;
                }
                if (i24 != 0) {
                    bm3Var23 = null;
                } else {
                    bm3Var23 = bm3Var7;
                }
                if (i26 != 0) {
                    bm3Var24 = null;
                } else {
                    bm3Var24 = bm3Var8;
                }
                if ((i3 & 16384) != 0) {
                    textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                    i28 &= -57345;
                } else {
                    textFieldColorsColors = textFieldColors;
                }
                if ((i3 & 32768) != 0) {
                    paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    i28 &= -458753;
                } else {
                    paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                }
                if (i29 != 0) {
                    bm3<? super Composer, ? super Integer, j59> bm3Var2111113 = bm3Var18;
                    textFieldColors3 = textFieldColorsColors;
                    paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                    bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                        public final void invoke(Composer composer3, int i3111111112) {
                            if (!composer3.shouldExecute((i3111111112 & 3) != 2, i3111111112 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-896270173, i3111111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                            }
                            OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                            outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    z7 = true;
                    i30 = i28;
                    bm3Var26 = bm3Var23;
                    bm3Var27 = bm3Var24;
                    bm3Var25 = bm3Var2111113;
                } else {
                    textFieldColors3 = textFieldColorsColors;
                    paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                    bm3Var25 = bm3Var18;
                    i30 = i28;
                    bm3Var26 = bm3Var23;
                    bm3Var27 = bm3Var24;
                    z7 = true;
                }
            } else {
                if (i10 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    bm3Var18 = null;
                } else {
                    bm3Var18 = bm3Var2;
                }
                if (i14 != 0) {
                    bm3Var19 = null;
                } else {
                    bm3Var19 = bm3Var3;
                }
                if (i16 != 0) {
                    bm3Var20 = null;
                } else {
                    bm3Var20 = bm3Var4;
                }
                if (i18 != 0) {
                    bm3Var21 = null;
                } else {
                    bm3Var21 = bm3Var5;
                }
                if (i21 != 0) {
                    bm3Var22 = null;
                } else {
                    bm3Var22 = bm3Var6;
                }
                if (i24 != 0) {
                    bm3Var23 = null;
                } else {
                    bm3Var23 = bm3Var7;
                }
                if (i26 != 0) {
                    bm3Var24 = null;
                } else {
                    bm3Var24 = bm3Var8;
                }
                if ((i3 & 16384) != 0) {
                    textFieldColorsColors = colors(composerStartRestartGroup, (i28 >> 21) & 14);
                    i28 &= -57345;
                } else {
                    textFieldColorsColors = textFieldColors;
                }
                if ((i3 & 32768) != 0) {
                    paddingValuesM3718contentPaddinga9UjIt4$default = m3718contentPaddinga9UjIt4$default(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    i28 &= -458753;
                } else {
                    paddingValuesM3718contentPaddinga9UjIt4$default = paddingValues;
                }
                if (i29 != 0) {
                    bm3<? super Composer, ? super Integer, j59> bm3Var2111114 = bm3Var18;
                    textFieldColors3 = textFieldColorsColors;
                    paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                    bm3Var9 = ComposableLambdaKt.rememberComposableLambda(-896270173, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.1
                        public final void invoke(Composer composer3, int i3111111112) {
                            if (!composer3.shouldExecute((i3111111112 & 3) != 2, i3111111112 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-896270173, i3111111112, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous> (TextFieldDefaults.kt:1157)");
                            }
                            OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
                            outlinedTextFieldDefaults.m3719Container4EFweAY(z, z4, interactionSource, Modifier.Companion, textFieldColorsColors, outlinedTextFieldDefaults.getShape(composer3, 6), outlinedTextFieldDefaults.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer3, 114822144, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                    z7 = true;
                    i30 = i28;
                    bm3Var26 = bm3Var23;
                    bm3Var27 = bm3Var24;
                    bm3Var25 = bm3Var2111114;
                } else {
                    textFieldColors3 = textFieldColorsColors;
                    paddingValues3 = paddingValuesM3718contentPaddinga9UjIt4$default;
                    bm3Var25 = bm3Var18;
                    i30 = i28;
                    bm3Var26 = bm3Var23;
                    bm3Var27 = bm3Var24;
                    z7 = true;
                }
            }
            boolean z116 = z4;
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1732281618, i4, i30, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox (TextFieldDefaults.kt:1168)");
            }
            if ((i4 & 14) == 4) {
                z8 = z7;
            } else {
                z8 = false;
            }
            z9 = z8 | ((i4 & 57344) == 16384);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z9) {
                objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = visualTransformation.filter(new AnnotatedString(str, null, 2, null));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            String text17 = ((TransformedText) objRememberedValue).getText().getText();
            int i3111111112 = i30;
            TextFieldType textFieldType17 = TextFieldType.Outlined;
            TextFieldLabelPosition.Attached attached17 = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
            if (bm3Var25 == null) {
                composerStartRestartGroup.startReplaceGroup(1927058812);
                composerStartRestartGroup.endReplaceGroup();
                composableLambda = null;
            } else {
                composerStartRestartGroup.startReplaceGroup(1927058813);
                ComposableLambda composableLambdaRememberComposableLambda17 = ComposableLambdaKt.rememberComposableLambda(-1459717586, true, new dm3<TextFieldLabelScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                    public final void invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, int i3111111113) {
                        if (!composer3.shouldExecute((i3111111113 & 17) != 16, i3111111113 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1459717586, i3111111113, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox.<anonymous>.<anonymous> (TextFieldDefaults.kt:1182)");
                        }
                        bm3Var25.invoke(composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(TextFieldLabelScope textFieldLabelScope, Composer composer3, Integer num) {
                        invoke(textFieldLabelScope, composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                composerStartRestartGroup.endReplaceGroup();
                composableLambda = composableLambdaRememberComposableLambda17;
            }
            int i3111111113 = i4 >> 9;
            int i3111111114 = i3111111112 << 21;
            int i3111111115 = ((i4 << 3) & 896) | 6 | (i3111111113 & 458752) | (i3111111113 & 3670016) | (i3111111114 & 29360128) | (i3111111114 & 234881024) | (i3111111114 & 1879048192);
            int i3111111116 = (i3111111113 & 7168) | ((i3111111112 >> 9) & 14) | ((i4 >> 6) & 112) | (i4 & 896) | ((i4 >> 3) & 57344) | (i3111111112 & 458752) | ((i3111111112 << 6) & 3670016) | ((i3111111112 << 3) & 29360128);
            composer2 = composerStartRestartGroup;
            bm3<? super Composer, ? super Integer, j59> bm3Var2111115 = bm3Var19;
            bm3<? super Composer, ? super Integer, j59> bm3Var311118 = bm3Var20;
            bm3<? super Composer, ? super Integer, j59> bm3Var311119 = bm3Var21;
            bm3<? super Composer, ? super Integer, j59> bm3Var3111110 = bm3Var22;
            TextFieldImplKt.CommonDecorationBox(textFieldType17, text17, bm3Var, attached17, composableLambda, bm3Var2111115, bm3Var311118, bm3Var311119, bm3Var3111110, bm3Var26, bm3Var27, z2, z, z116, interactionSource, paddingValues3, textFieldColors3, bm3Var9, composer2, i3111111115, i3111111116);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            bm3Var17 = bm3Var26;
            bm3Var15 = bm3Var27;
            paddingValues2 = paddingValues3;
            bm3Var16 = bm3Var9;
            bm3Var13 = bm3Var311119;
            bm3Var14 = bm3Var3111110;
            bm3Var11 = bm3Var2111115;
            bm3Var12 = bm3Var311118;
            z6 = z116;
            textFieldColors2 = textFieldColors3;
            bm3Var10 = bm3Var25;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            bm3Var10 = bm3Var2;
            bm3Var11 = bm3Var3;
            bm3Var12 = bm3Var4;
            bm3Var13 = bm3Var5;
            bm3Var14 = bm3Var6;
            bm3Var15 = bm3Var8;
            textFieldColors2 = textFieldColors;
            paddingValues2 = paddingValues;
            bm3Var16 = bm3Var9;
            z6 = z4;
            bm3Var17 = bm3Var7;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: m06
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return OutlinedTextFieldDefaults.DecorationBox$lambda$3(this.b, str, bm3Var, z, z2, visualTransformation, interactionSource, z6, bm3Var10, bm3Var11, bm3Var12, bm3Var13, bm3Var14, bm3Var17, bm3Var15, textFieldColors2, paddingValues2, bm3Var16, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public final TextFieldColors colors(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-471651810, i, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.colors (TextFieldDefaults.kt:1215)");
        }
        TextFieldColors defaultOutlinedTextFieldColors = getDefaultOutlinedTextFieldColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6), composer, (i << 3) & 112);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return defaultOutlinedTextFieldColors;
    }

    /* JADX INFO: renamed from: colors-0hiis_0, reason: not valid java name */
    public final TextFieldColors m3721colors0hiis_0(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, Composer composer, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        long jM6268getUnspecified0d7_KjU = (i6 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM6268getUnspecified0d7_KjU2 = (i6 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j2;
        long jM6268getUnspecified0d7_KjU3 = (i6 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3;
        long jM6268getUnspecified0d7_KjU4 = (i6 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        long jM6268getUnspecified0d7_KjU5 = (i6 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j5;
        long jM6268getUnspecified0d7_KjU6 = (i6 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j6;
        long jM6268getUnspecified0d7_KjU7 = (i6 & 64) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j7;
        long j43 = jM6268getUnspecified0d7_KjU;
        long jM6268getUnspecified0d7_KjU8 = (i6 & 128) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j8;
        long jM6268getUnspecified0d7_KjU9 = (i6 & 256) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j9;
        long jM6268getUnspecified0d7_KjU10 = (i6 & 512) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j10;
        TextSelectionColors textSelectionColors2 = (i6 & 1024) != 0 ? null : textSelectionColors;
        long jM6268getUnspecified0d7_KjU11 = (i6 & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j11;
        long jM6268getUnspecified0d7_KjU12 = (i6 & 4096) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j12;
        long jM6268getUnspecified0d7_KjU13 = (i6 & 8192) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j13;
        long jM6268getUnspecified0d7_KjU14 = (i6 & 16384) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j14;
        long jM6268getUnspecified0d7_KjU15 = (32768 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j15;
        long jM6268getUnspecified0d7_KjU16 = (65536 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j16;
        long jM6268getUnspecified0d7_KjU17 = (131072 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j17;
        long jM6268getUnspecified0d7_KjU18 = (262144 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j18;
        long jM6268getUnspecified0d7_KjU19 = (524288 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j19;
        long jM6268getUnspecified0d7_KjU20 = (1048576 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j20;
        long jM6268getUnspecified0d7_KjU21 = (2097152 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j21;
        long jM6268getUnspecified0d7_KjU22 = (4194304 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j22;
        long jM6268getUnspecified0d7_KjU23 = (8388608 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j23;
        long jM6268getUnspecified0d7_KjU24 = (16777216 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j24;
        long jM6268getUnspecified0d7_KjU25 = (33554432 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j25;
        long jM6268getUnspecified0d7_KjU26 = (67108864 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j26;
        long jM6268getUnspecified0d7_KjU27 = (134217728 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j27;
        long jM6268getUnspecified0d7_KjU28 = (268435456 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j28;
        long jM6268getUnspecified0d7_KjU29 = (536870912 & i6) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j29;
        long jM6268getUnspecified0d7_KjU30 = (i6 & 1073741824) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j30;
        long jM6268getUnspecified0d7_KjU31 = (i7 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j31;
        long jM6268getUnspecified0d7_KjU32 = (i7 & 2) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j32;
        long jM6268getUnspecified0d7_KjU33 = (i7 & 4) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j33;
        long jM6268getUnspecified0d7_KjU34 = (i7 & 8) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j34;
        long jM6268getUnspecified0d7_KjU35 = (i7 & 16) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j35;
        long jM6268getUnspecified0d7_KjU36 = (i7 & 32) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j36;
        long jM6268getUnspecified0d7_KjU37 = (i7 & 64) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j37;
        long jM6268getUnspecified0d7_KjU38 = (i7 & 128) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j38;
        long jM6268getUnspecified0d7_KjU39 = (i7 & 256) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j39;
        long jM6268getUnspecified0d7_KjU40 = (i7 & 512) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j40;
        long jM6268getUnspecified0d7_KjU41 = (i7 & 1024) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j41;
        long jM6268getUnspecified0d7_KjU42 = (i7 & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j42;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1767617725, i, i2, "androidx.compose.material3.OutlinedTextFieldDefaults.colors (TextFieldDefaults.kt:1317)");
        }
        TextFieldColors textFieldColorsM4001copyejIjP34 = getDefaultOutlinedTextFieldColors(MaterialTheme.INSTANCE.getColorScheme(composer, 6), composer, (i5 >> 6) & 112).m4001copyejIjP34(j43, jM6268getUnspecified0d7_KjU2, jM6268getUnspecified0d7_KjU3, jM6268getUnspecified0d7_KjU4, jM6268getUnspecified0d7_KjU5, jM6268getUnspecified0d7_KjU6, jM6268getUnspecified0d7_KjU7, jM6268getUnspecified0d7_KjU8, jM6268getUnspecified0d7_KjU9, jM6268getUnspecified0d7_KjU10, textSelectionColors2, jM6268getUnspecified0d7_KjU11, jM6268getUnspecified0d7_KjU12, jM6268getUnspecified0d7_KjU13, jM6268getUnspecified0d7_KjU14, jM6268getUnspecified0d7_KjU15, jM6268getUnspecified0d7_KjU16, jM6268getUnspecified0d7_KjU17, jM6268getUnspecified0d7_KjU18, jM6268getUnspecified0d7_KjU19, jM6268getUnspecified0d7_KjU20, jM6268getUnspecified0d7_KjU21, jM6268getUnspecified0d7_KjU22, jM6268getUnspecified0d7_KjU23, jM6268getUnspecified0d7_KjU24, jM6268getUnspecified0d7_KjU25, jM6268getUnspecified0d7_KjU26, jM6268getUnspecified0d7_KjU27, jM6268getUnspecified0d7_KjU28, jM6268getUnspecified0d7_KjU29, jM6268getUnspecified0d7_KjU30, jM6268getUnspecified0d7_KjU31, jM6268getUnspecified0d7_KjU32, jM6268getUnspecified0d7_KjU33, jM6268getUnspecified0d7_KjU34, jM6268getUnspecified0d7_KjU35, jM6268getUnspecified0d7_KjU36, jM6268getUnspecified0d7_KjU37, jM6268getUnspecified0d7_KjU38, jM6268getUnspecified0d7_KjU39, jM6268getUnspecified0d7_KjU40, jM6268getUnspecified0d7_KjU41, jM6268getUnspecified0d7_KjU42);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return textFieldColorsM4001copyejIjP34;
    }

    /* JADX INFO: renamed from: contentPadding-a9UjIt4, reason: not valid java name */
    public final PaddingValues m3722contentPaddinga9UjIt4(float f, float f2, float f3, float f4) {
        return PaddingKt.m2029PaddingValuesa9UjIt4(f, f2, f3, f4);
    }

    public final TextFieldDecorator decorator(TextFieldState textFieldState, final boolean z, TextFieldLineLimits textFieldLineLimits, OutputTransformation outputTransformation, InteractionSource interactionSource, TextFieldLabelPosition textFieldLabelPosition, dm3<? super TextFieldLabelScope, ? super Composer, ? super Integer, j59> dm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, bm3<? super Composer, ? super Integer, j59> bm3Var3, bm3<? super Composer, ? super Integer, j59> bm3Var4, bm3<? super Composer, ? super Integer, j59> bm3Var5, bm3<? super Composer, ? super Integer, j59> bm3Var6, boolean z2, TextFieldColors textFieldColors, PaddingValues paddingValues, bm3<? super Composer, ? super Integer, j59> bm3Var7, Composer composer, int i, int i2, int i3) {
        OutlinedTextFieldDefaults outlinedTextFieldDefaults;
        final TextFieldColors textFieldColorsColors;
        final InteractionSource interactionSource2;
        bm3<? super Composer, ? super Integer, j59> bm3VarRememberComposableLambda;
        TextFieldLabelPosition attached = (i3 & 32) != 0 ? new TextFieldLabelPosition.Attached(false, null, null, 7, null) : textFieldLabelPosition;
        dm3<? super TextFieldLabelScope, ? super Composer, ? super Integer, j59> dm3Var2 = (i3 & 64) != 0 ? null : dm3Var;
        bm3<? super Composer, ? super Integer, j59> bm3Var8 = (i3 & 128) != 0 ? null : bm3Var;
        bm3<? super Composer, ? super Integer, j59> bm3Var9 = (i3 & 256) != 0 ? null : bm3Var2;
        bm3<? super Composer, ? super Integer, j59> bm3Var10 = (i3 & 512) != 0 ? null : bm3Var3;
        bm3<? super Composer, ? super Integer, j59> bm3Var11 = (i3 & 1024) != 0 ? null : bm3Var4;
        bm3<? super Composer, ? super Integer, j59> bm3Var12 = (i3 & 2048) != 0 ? null : bm3Var5;
        bm3<? super Composer, ? super Integer, j59> bm3Var13 = (i3 & 4096) != 0 ? null : bm3Var6;
        final boolean z3 = (i3 & 8192) != 0 ? false : z2;
        if ((i3 & 16384) != 0) {
            outlinedTextFieldDefaults = this;
            textFieldColorsColors = outlinedTextFieldDefaults.colors(composer, (i2 >> 21) & 14);
        } else {
            outlinedTextFieldDefaults = this;
            textFieldColorsColors = textFieldColors;
        }
        PaddingValues paddingValuesM3718contentPaddinga9UjIt4$default = (32768 & i3) != 0 ? m3718contentPaddinga9UjIt4$default(outlinedTextFieldDefaults, 0.0f, 0.0f, 0.0f, 0.0f, 15, null) : paddingValues;
        if ((i3 & 65536) != 0) {
            interactionSource2 = interactionSource;
            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-163468598, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults.decorator.1
                public final void invoke(Composer composer2, int i4) {
                    if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-163468598, i4, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.decorator.<anonymous> (TextFieldDefaults.kt:983)");
                    }
                    OutlinedTextFieldDefaults outlinedTextFieldDefaults2 = OutlinedTextFieldDefaults.INSTANCE;
                    outlinedTextFieldDefaults2.m3719Container4EFweAY(z, z3, interactionSource2, null, textFieldColorsColors, outlinedTextFieldDefaults2.getShape(composer2, 6), outlinedTextFieldDefaults2.m3723getFocusedBorderThicknessD9Ej5fM(), outlinedTextFieldDefaults2.m3726getUnfocusedBorderThicknessD9Ej5fM(), composer2, 114819072, 8);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composer, 54);
        } else {
            interactionSource2 = interactionSource;
            bm3VarRememberComposableLambda = bm3Var7;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-449059361, i, i2, "androidx.compose.material3.OutlinedTextFieldDefaults.decorator (TextFieldDefaults.kt:993)");
        }
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(outputTransformation, textFieldState, textFieldLineLimits, attached, dm3Var2, bm3Var8, bm3Var9, bm3Var10, bm3Var11, bm3Var12, bm3Var13, z, z3, interactionSource2, paddingValuesM3718contentPaddinga9UjIt4$default, textFieldColorsColors, bm3VarRememberComposableLambda);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return anonymousClass2;
    }

    public final TextFieldColors getDefaultOutlinedTextFieldColors(ColorScheme colorScheme, Composer composer, int i) {
        TextFieldColors textFieldColors;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-292363577, i, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.<get-defaultOutlinedTextFieldColors> (TextFieldDefaults.kt:1365)");
        }
        TextFieldColors defaultOutlinedTextFieldColorsCached$material3 = colorScheme.getDefaultOutlinedTextFieldColorsCached$material3();
        if (defaultOutlinedTextFieldColorsCached$material3 == null) {
            composer.startReplaceGroup(390452338);
            composer.endReplaceGroup();
            textFieldColors = null;
        } else {
            composer.startReplaceGroup(390452339);
            TextSelectionColors textSelectionColors = (TextSelectionColors) composer.consume(TextSelectionColorsKt.getLocalTextSelectionColors());
            if (!aa4.e(defaultOutlinedTextFieldColorsCached$material3.getTextSelectionColors(), textSelectionColors)) {
                defaultOutlinedTextFieldColorsCached$material3 = defaultOutlinedTextFieldColorsCached$material3.m4001copyejIjP34(((-1025) & 1) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedTextColor : 0L, ((-1025) & 2) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedTextColor : 0L, ((-1025) & 4) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledTextColor : 0L, ((-1025) & 8) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorTextColor : 0L, ((-1025) & 16) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedContainerColor : 0L, ((-1025) & 32) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedContainerColor : 0L, ((-1025) & 64) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledContainerColor : 0L, ((-1025) & 128) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorContainerColor : 0L, ((-1025) & 256) != 0 ? defaultOutlinedTextFieldColorsCached$material3.cursorColor : 0L, ((-1025) & 512) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorCursorColor : 0L, ((-1025) & 1024) != 0 ? defaultOutlinedTextFieldColorsCached$material3.textSelectionColors : textSelectionColors, ((-1025) & 2048) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedIndicatorColor : 0L, ((-1025) & 4096) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedIndicatorColor : 0L, ((-1025) & 8192) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledIndicatorColor : 0L, ((-1025) & 16384) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorIndicatorColor : 0L, ((-1025) & 32768) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedLeadingIconColor : 0L, ((-1025) & 65536) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedLeadingIconColor : 0L, ((-1025) & 131072) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledLeadingIconColor : 0L, ((-1025) & 262144) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorLeadingIconColor : 0L, ((-1025) & 524288) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedTrailingIconColor : 0L, ((-1025) & 1048576) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedTrailingIconColor : 0L, ((-1025) & 2097152) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledTrailingIconColor : 0L, ((-1025) & 4194304) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorTrailingIconColor : 0L, ((-1025) & 8388608) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedLabelColor : 0L, ((-1025) & 16777216) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedLabelColor : 0L, ((-1025) & GroupFlagsKt.HasAuxSlotFlag) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledLabelColor : 0L, ((-1025) & 67108864) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorLabelColor : 0L, ((-1025) & 134217728) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedPlaceholderColor : 0L, ((-1025) & 268435456) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedPlaceholderColor : 0L, ((-1025) & 536870912) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledPlaceholderColor : 0L, ((-1025) & 1073741824) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorPlaceholderColor : 0L, ((-1025) & Integer.MIN_VALUE) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedSupportingTextColor : 0L, (2047 & 1) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedSupportingTextColor : 0L, (2047 & 2) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledSupportingTextColor : 0L, (2047 & 4) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorSupportingTextColor : 0L, (2047 & 8) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedPrefixColor : 0L, (2047 & 16) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedPrefixColor : 0L, (2047 & 32) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledPrefixColor : 0L, (2047 & 64) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorPrefixColor : 0L, (2047 & 128) != 0 ? defaultOutlinedTextFieldColorsCached$material3.focusedSuffixColor : 0L, (2047 & 256) != 0 ? defaultOutlinedTextFieldColorsCached$material3.unfocusedSuffixColor : 0L, (2047 & 512) != 0 ? defaultOutlinedTextFieldColorsCached$material3.disabledSuffixColor : 0L, (2047 & 1024) != 0 ? defaultOutlinedTextFieldColorsCached$material3.errorSuffixColor : 0L);
                colorScheme.setDefaultOutlinedTextFieldColorsCached$material3(defaultOutlinedTextFieldColorsCached$material3);
            }
            composer.endReplaceGroup();
            textFieldColors = defaultOutlinedTextFieldColorsCached$material3;
        }
        if (textFieldColors == null) {
            composer.startReplaceGroup(-1788321191);
            OutlinedTextFieldTokens outlinedTextFieldTokens = OutlinedTextFieldTokens.INSTANCE;
            long jFromToken = ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getFocusInputColor());
            long jFromToken2 = ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputColor());
            long jM6231copywmQWz5c$default = Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getDisabledInputColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null);
            long jFromToken3 = ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getErrorInputColor());
            Color.Companion companion = Color.Companion;
            TextFieldColors textFieldColors2 = new TextFieldColors(jFromToken, jFromToken2, jM6231copywmQWz5c$default, jFromToken3, companion.m6267getTransparent0d7_KjU(), companion.m6267getTransparent0d7_KjU(), companion.m6267getTransparent0d7_KjU(), companion.m6267getTransparent0d7_KjU(), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getCaretColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getErrorFocusCaretColor()), (TextSelectionColors) composer.consume(TextSelectionColorsKt.getLocalTextSelectionColors()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getFocusOutlineColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getOutlineColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getDisabledOutlineColor()), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getErrorOutlineColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getFocusLeadingIconColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getLeadingIconColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getDisabledLeadingIconColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getErrorLeadingIconColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getFocusTrailingIconColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getTrailingIconColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getDisabledTrailingIconColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getErrorTrailingIconColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getFocusLabelColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getLabelColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getDisabledLabelColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getErrorLabelColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputPlaceholderColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputPlaceholderColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getDisabledInputColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputPlaceholderColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getFocusSupportingColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getSupportingColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getDisabledSupportingColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getErrorSupportingColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputPrefixColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputPrefixColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputPrefixColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputPrefixColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputSuffixColor()), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputSuffixColor()), Color.m6231copywmQWz5c$default(ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputSuffixColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.fromToken(colorScheme, outlinedTextFieldTokens.getInputSuffixColor()), null);
            colorScheme.setDefaultOutlinedTextFieldColorsCached$material3(textFieldColors2);
            composer.endReplaceGroup();
            textFieldColors = textFieldColors2;
        } else {
            composer.startReplaceGroup(-1788515437);
            composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return textFieldColors;
    }

    /* JADX INFO: renamed from: getFocusedBorderThickness-D9Ej5fM, reason: not valid java name */
    public final float m3723getFocusedBorderThicknessD9Ej5fM() {
        return FocusedBorderThickness;
    }

    /* JADX INFO: renamed from: getMinHeight-D9Ej5fM, reason: not valid java name */
    public final float m3724getMinHeightD9Ej5fM() {
        return MinHeight;
    }

    /* JADX INFO: renamed from: getMinWidth-D9Ej5fM, reason: not valid java name */
    public final float m3725getMinWidthD9Ej5fM() {
        return MinWidth;
    }

    public final Shape getShape(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1066756961, i, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.<get-shape> (TextFieldDefaults.kt:887)");
        }
        Shape value = ShapesKt.getValue(OutlinedTextFieldTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return value;
    }

    /* JADX INFO: renamed from: getUnfocusedBorderThickness-D9Ej5fM, reason: not valid java name */
    public final float m3726getUnfocusedBorderThicknessD9Ej5fM() {
        return UnfocusedBorderThickness;
    }
}

package androidx.compose.material3;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicSecureTextFieldKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.KeyboardActionHandler;
import androidx.compose.foundation.text.input.TextFieldLineLimits;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class SecureTextFieldKt$OutlinedSecureTextField$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ TextFieldColors $colors;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ InputTransformation $inputTransformation;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ boolean $isError;
    final /* synthetic */ KeyboardOptions $keyboardOptions;
    final /* synthetic */ dm3<TextFieldLabelScope, Composer, Integer, j59> $label;
    final /* synthetic */ TextFieldLabelPosition $labelPosition;
    final /* synthetic */ bm3<Composer, Integer, j59> $leadingIcon;
    final /* synthetic */ TextStyle $mergedTextStyle;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ KeyboardActionHandler $onKeyboardAction;
    final /* synthetic */ bm3<Density, ll3<TextLayoutResult>, j59> $onTextLayout;
    final /* synthetic */ bm3<Composer, Integer, j59> $placeholder;
    final /* synthetic */ bm3<Composer, Integer, j59> $prefix;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ TextFieldState $state;
    final /* synthetic */ bm3<Composer, Integer, j59> $suffix;
    final /* synthetic */ bm3<Composer, Integer, j59> $supportingText;
    final /* synthetic */ char $textObfuscationCharacter;
    final /* synthetic */ int $textObfuscationMode;
    final /* synthetic */ bm3<Composer, Integer, j59> $trailingIcon;

    /* JADX WARN: Multi-variable type inference failed */
    public SecureTextFieldKt$OutlinedSecureTextField$1(Modifier modifier, dm3<? super TextFieldLabelScope, ? super Composer, ? super Integer, j59> dm3Var, TextFieldLabelPosition textFieldLabelPosition, boolean z, TextFieldColors textFieldColors, TextFieldState textFieldState, boolean z2, MutableInteractionSource mutableInteractionSource, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, bm3<? super Composer, ? super Integer, j59> bm3Var3, bm3<? super Composer, ? super Integer, j59> bm3Var4, bm3<? super Composer, ? super Integer, j59> bm3Var5, bm3<? super Composer, ? super Integer, j59> bm3Var6, PaddingValues paddingValues, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, bm3<? super Density, ? super ll3<TextLayoutResult>, j59> bm3Var7, int i, char c, Shape shape) {
        this.$modifier = modifier;
        this.$label = dm3Var;
        this.$labelPosition = textFieldLabelPosition;
        this.$isError = z;
        this.$colors = textFieldColors;
        this.$state = textFieldState;
        this.$enabled = z2;
        this.$interactionSource = mutableInteractionSource;
        this.$placeholder = bm3Var;
        this.$leadingIcon = bm3Var2;
        this.$trailingIcon = bm3Var3;
        this.$prefix = bm3Var4;
        this.$suffix = bm3Var5;
        this.$supportingText = bm3Var6;
        this.$contentPadding = paddingValues;
        this.$inputTransformation = inputTransformation;
        this.$mergedTextStyle = textStyle;
        this.$keyboardOptions = keyboardOptions;
        this.$onKeyboardAction = keyboardActionHandler;
        this.$onTextLayout = bm3Var7;
        this.$textObfuscationMode = i;
        this.$textObfuscationCharacter = c;
        this.$shape = shape;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void invoke(Composer composer, int i) {
        Modifier modifierM2037paddingqDBjuR0$default;
        int i2 = 1;
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1147500080, i, -1, "androidx.compose.material3.OutlinedSecureTextField.<anonymous> (SecureTextField.kt:327)");
        }
        Modifier modifier = this.$modifier;
        if (this.$label == null || (this.$labelPosition instanceof TextFieldLabelPosition.Above)) {
            composer.startReplaceGroup(1530795410);
            composer.endReplaceGroup();
            modifierM2037paddingqDBjuR0$default = Modifier.Companion;
        } else {
            composer.startReplaceGroup(1530411723);
            Modifier.Companion companion = Modifier.Companion;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new x(i2);
                composer.updateRememberedValue(objRememberedValue);
            }
            modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(SemanticsModifierKt.semantics(companion, true, (nl3) objRememberedValue), 0.0f, TextFieldImplKt.minimizedLabelHalfHeight(composer, 0), 0.0f, 0.0f, 13, null);
            composer.endReplaceGroup();
        }
        Modifier modifierThen = modifier.then(modifierM2037paddingqDBjuR0$default);
        boolean z = this.$isError;
        Strings.Companion companion2 = Strings.Companion;
        Modifier modifierDefaultErrorSemantics = TextFieldImplKt.defaultErrorSemantics(modifierThen, z, Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(androidx.compose.ui.R.string.default_error_message), composer, 0));
        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.INSTANCE;
        Modifier modifierM2083defaultMinSizeVpY3zN4 = SizeKt.m2083defaultMinSizeVpY3zN4(modifierDefaultErrorSemantics, outlinedTextFieldDefaults.m3725getMinWidthD9Ej5fM(), outlinedTextFieldDefaults.m3724getMinHeightD9Ej5fM());
        SolidColor solidColor = new SolidColor(this.$colors.m4002cursorColorvNxB06k$material3(this.$isError), null);
        TextFieldState textFieldState = this.$state;
        final boolean z2 = this.$enabled;
        TextFieldLineLimits.SingleLine singleLine = TextFieldLineLimits.SingleLine.INSTANCE;
        final MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        TextFieldLabelPosition textFieldLabelPosition = this.$labelPosition;
        dm3<TextFieldLabelScope, Composer, Integer, j59> dm3Var = this.$label;
        bm3<Composer, Integer, j59> bm3Var = this.$placeholder;
        bm3<Composer, Integer, j59> bm3Var2 = this.$leadingIcon;
        bm3<Composer, Integer, j59> bm3Var3 = this.$trailingIcon;
        bm3<Composer, Integer, j59> bm3Var4 = this.$prefix;
        bm3<Composer, Integer, j59> bm3Var5 = this.$suffix;
        bm3<Composer, Integer, j59> bm3Var6 = this.$supportingText;
        final boolean z3 = this.$isError;
        final TextFieldColors textFieldColors = this.$colors;
        PaddingValues paddingValues = this.$contentPadding;
        final Shape shape = this.$shape;
        BasicSecureTextFieldKt.m2450BasicSecureTextFieldegD4TGM(this.$state, modifierM2083defaultMinSizeVpY3zN4, this.$enabled, false, this.$inputTransformation, this.$mergedTextStyle, this.$keyboardOptions, this.$onKeyboardAction, this.$onTextLayout, this.$interactionSource, solidColor, outlinedTextFieldDefaults.decorator(textFieldState, z2, singleLine, null, mutableInteractionSource, textFieldLabelPosition, dm3Var, bm3Var, bm3Var2, bm3Var3, bm3Var4, bm3Var5, bm3Var6, z3, textFieldColors, paddingValues, ComposableLambdaKt.rememberComposableLambda(-1406782897, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.SecureTextFieldKt$OutlinedSecureTextField$1.2
            public final void invoke(Composer composer2, int i3) {
                if (!composer2.shouldExecute((i3 & 3) != 2, i3 & 1)) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1406782897, i3, -1, "androidx.compose.material3.OutlinedSecureTextField.<anonymous>.<anonymous> (SecureTextField.kt:376)");
                }
                OutlinedTextFieldDefaults.INSTANCE.m3719Container4EFweAY(z2, z3, mutableInteractionSource, null, textFieldColors, shape, 0.0f, 0.0f, composer2, 100663296, 200);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return j59.a;
            }
        }, composer, 54), composer, 3456, 14155776, 0), this.$textObfuscationMode, this.$textObfuscationCharacter, composer, 0, 0, 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return j59.a;
    }
}

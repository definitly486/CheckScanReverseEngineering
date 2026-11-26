package androidx.compose.material3;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.tokens.FilledTextFieldTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.ui.draw.CacheDrawModifierNode;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.OutlineKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.unit.Dp;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.p88;
import defpackage.pf3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class IndicatorLineNode extends DelegatingNode implements CompositionLocalConsumerModifierNode {
    public static final int $stable = 8;
    private TextFieldColors _colors;
    private Shape _shape;
    private Animatable<Color, AnimationVector4D> colorAnimatable;
    private final CacheDrawModifierNode drawWithCacheModifierNode;
    private boolean enabled;
    private boolean focused;
    private float focusedIndicatorWidth;
    private InteractionSource interactionSource;
    private boolean isError;
    private mb4 trackFocusStateJob;
    private float unfocusedIndicatorWidth;
    private final Animatable<Dp, AnimationVector1D> widthAnimatable;

    /* JADX INFO: renamed from: androidx.compose.material3.IndicatorLineNode$invalidateIndicator$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.IndicatorLineNode$invalidateIndicator$1", f = "TextField.kt", l = {1599}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return IndicatorLineNode.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Animatable animatable = IndicatorLineNode.this.colorAnimatable;
                if (animatable != null) {
                    Color colorM6222boximpl = Color.m6222boximpl(IndicatorLineNode.this.getColors().m4045indicatorColorXeAY9LY$material3(IndicatorLineNode.this.enabled, IndicatorLineNode.this.isError, IndicatorLineNode.this.focused));
                    AnimationSpec animationSpecFromToken = IndicatorLineNode.this.enabled ? MotionSchemeKt.fromToken((MotionScheme) CompositionLocalConsumerModifierNodeKt.currentValueOf(IndicatorLineNode.this, MaterialTheme.INSTANCE.getLocalMotionScheme$material3()), MotionSchemeKeyTokens.FastEffects) : AnimationSpecKt.snap$default(0, 1, null);
                    this.label = 1;
                    obj = Animatable.animateTo$default(animatable, colorM6222boximpl, animationSpecFromToken, null, null, this, 12, null);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.IndicatorLineNode$invalidateIndicator$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.IndicatorLineNode$invalidateIndicator$2", f = "TextField.kt", l = {1611}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return IndicatorLineNode.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Animatable animatable = IndicatorLineNode.this.widthAnimatable;
                Dp dpM9040boximpl = Dp.m9040boximpl((IndicatorLineNode.this.focused && IndicatorLineNode.this.enabled) ? IndicatorLineNode.this.focusedIndicatorWidth : IndicatorLineNode.this.unfocusedIndicatorWidth);
                AnimationSpec animationSpecFromToken = IndicatorLineNode.this.enabled ? MotionSchemeKt.fromToken((MotionScheme) CompositionLocalConsumerModifierNodeKt.currentValueOf(IndicatorLineNode.this, MaterialTheme.INSTANCE.getLocalMotionScheme$material3()), MotionSchemeKeyTokens.FastSpatial) : AnimationSpecKt.snap$default(0, 1, null);
                this.label = 1;
                if (Animatable.animateTo$default(animatable, dpM9040boximpl, animationSpecFromToken, null, null, this, 12, null) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.IndicatorLineNode$onAttach$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.IndicatorLineNode$onAttach$1", f = "TextField.kt", l = {1569}, m = "invokeSuspend")
    public static final class C05911 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public C05911(e02<? super C05911> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return IndicatorLineNode.this.new C05911(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05911) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                IndicatorLineNode indicatorLineNode = IndicatorLineNode.this;
                this.label = 1;
                if (indicatorLineNode.trackFocusState(this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    private IndicatorLineNode(boolean z, boolean z2, InteractionSource interactionSource, TextFieldColors textFieldColors, Shape shape, float f, float f2) {
        this.enabled = z;
        this.isError = z2;
        this.interactionSource = interactionSource;
        this.focusedIndicatorWidth = f;
        this.unfocusedIndicatorWidth = f2;
        this._colors = textFieldColors;
        this._shape = shape;
        this.widthAnimatable = new Animatable<>(Dp.m9040boximpl((this.focused && z) ? f : f2), VectorConvertersKt.getVectorConverter(Dp.Companion), null, null, 12, null);
        this.drawWithCacheModifierNode = (CacheDrawModifierNode) delegate(DrawModifierKt.CacheDrawModifierNode(new p88(this, 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult drawWithCacheModifierNode$lambda$3(IndicatorLineNode indicatorLineNode, CacheDrawScope cacheDrawScope) {
        float fMo1434toPx0680j_4 = cacheDrawScope.mo1434toPx0680j_4(indicatorLineNode.widthAnimatable.getValue().m9056unboximpl());
        Path Path = AndroidPath_androidKt.Path();
        OutlineKt.addOutline(Path, indicatorLineNode.getShape().mo1345createOutlinePq9zytI(cacheDrawScope.m5767getSizeNHjbRc(), cacheDrawScope.getLayoutDirection(), cacheDrawScope));
        Path Path2 = AndroidPath_androidKt.Path();
        Path.addRect$default(Path2, new Rect(0.0f, Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - fMo1434toPx0680j_4, Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() >> 32)), Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), null, 2, null);
        return cacheDrawScope.onDrawWithContent(new pf3(1, Path2.and(Path), indicatorLineNode));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawWithCacheModifierNode$lambda$3$lambda$2(Path path, IndicatorLineNode indicatorLineNode, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        Animatable<Color, AnimationVector4D> animatable = indicatorLineNode.colorAnimatable;
        animatable.getClass();
        DrawScope.m6795drawPathGBMwjPU$default(contentDrawScope, path, new SolidColor(animatable.getValue().m6242unboximpl(), null), 0.0f, null, null, 0, 60, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextFieldColors getColors() {
        TextFieldColors textFieldColors = this._colors;
        return textFieldColors == null ? TextFieldDefaults.INSTANCE.defaultTextFieldColors$material3((ColorScheme) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, ColorSchemeKt.getLocalColorScheme()), (TextSelectionColors) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, TextSelectionColorsKt.getLocalTextSelectionColors())) : textFieldColors;
    }

    private final Shape getShape() {
        Shape shape = this._shape;
        return shape == null ? ShapesKt.fromToken((Shapes) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, ShapesKt.getLocalShapes()), FilledTextFieldTokens.INSTANCE.getContainerShape()) : shape;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidateIndicator() {
        av0.c(getCoroutineScope(), null, null, new AnonymousClass1(null), 3);
        av0.c(getCoroutineScope(), null, null, new AnonymousClass2(null), 3);
    }

    private final void set_shape(Shape shape) {
        if (aa4.e(this._shape, shape)) {
            return;
        }
        this._shape = shape;
        this.drawWithCacheModifierNode.invalidateDrawCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object trackFocusState(e02<? super j59> e02Var) {
        this.focused = false;
        final ArrayList arrayList = new ArrayList();
        Object objCollect = this.interactionSource.getInteractions().collect(new id3() { // from class: androidx.compose.material3.IndicatorLineNode.trackFocusState.2
            public final Object emit(Interaction interaction, e02<? super j59> e02Var2) {
                if (interaction instanceof FocusInteraction.Focus) {
                    arrayList.add(interaction);
                } else if (interaction instanceof FocusInteraction.Unfocus) {
                    arrayList.remove(((FocusInteraction.Unfocus) interaction).getFocus());
                }
                boolean z = !arrayList.isEmpty();
                if (z != this.focused) {
                    this.focused = z;
                    this.invalidateIndicator();
                }
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((Interaction) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        this.trackFocusStateJob = av0.c(getCoroutineScope(), null, null, new C05911(null), 3);
        if (this.colorAnimatable == null) {
            long jM4045indicatorColorXeAY9LY$material3 = getColors().m4045indicatorColorXeAY9LY$material3(this.enabled, this.isError, this.focused);
            this.colorAnimatable = new Animatable<>(Color.m6222boximpl(jM4045indicatorColorXeAY9LY$material3), ColorVectorConverterKt.getVectorConverter(Color.Companion).invoke(Color.m6236getColorSpaceimpl(jM4045indicatorColorXeAY9LY$material3)), null, null, 12, null);
        }
    }

    /* JADX INFO: renamed from: update-gv0btCI, reason: not valid java name */
    public final void m3549updategv0btCI(boolean z, boolean z2, InteractionSource interactionSource, TextFieldColors textFieldColors, Shape shape, float f, float f2) {
        boolean z3;
        boolean z4 = true;
        if (this.enabled != z) {
            this.enabled = z;
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.isError != z2) {
            this.isError = z2;
            z3 = true;
        }
        if (this.interactionSource != interactionSource) {
            this.interactionSource = interactionSource;
            mb4 mb4Var = this.trackFocusStateJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.trackFocusStateJob = av0.c(getCoroutineScope(), null, null, new IndicatorLineNode$update$1(this, null), 3);
        }
        if (!aa4.e(this._colors, textFieldColors)) {
            this._colors = textFieldColors;
            z3 = true;
        }
        if (!aa4.e(this._shape, shape)) {
            set_shape(shape);
            z3 = true;
        }
        if (!Dp.m9047equalsimpl0(this.focusedIndicatorWidth, f)) {
            this.focusedIndicatorWidth = f;
            z3 = true;
        }
        if (Dp.m9047equalsimpl0(this.unfocusedIndicatorWidth, f2)) {
            z4 = z3;
        } else {
            this.unfocusedIndicatorWidth = f2;
        }
        if (z4) {
            invalidateIndicator();
        }
    }

    public /* synthetic */ IndicatorLineNode(boolean z, boolean z2, InteractionSource interactionSource, TextFieldColors textFieldColors, Shape shape, float f, float f2, jh2 jh2Var) {
        this(z, z2, interactionSource, textFieldColors, shape, f, f2);
    }
}

package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.MagnifierNode;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.text.input.internal.TextLayoutState;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fo4;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.jr8;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldMagnifierNodeImpl28 extends TextFieldMagnifierNode implements CompositionLocalConsumerModifierNode {
    public static final int $stable = 0;
    private final Animatable<Offset, AnimationVector2D> animatable;
    private mb4 animationJob;
    private TextFieldSelectionState textFieldSelectionState;
    private TransformedTextFieldState textFieldState;
    private TextLayoutState textLayoutState;
    private boolean visible;
    private final MutableState magnifierSize$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntSize.m9205boximpl(IntSize.Companion.m9218getZeroYbymL2g()), null, 2, null);
    private final MagnifierNode magnifierNode = (MagnifierNode) delegate(new MagnifierNode(new jr8(this, 0), null, new fo4(this, 2), 0.0f, true, 0, 0.0f, 0.0f, false, null, 1002, null));

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNodeImpl28$restartAnimationJob$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNodeImpl28$restartAnimationJob$1", f = "AndroidTextFieldMagnifier.android.kt", l = {144}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Offset invokeSuspend$lambda$0(TextFieldMagnifierNodeImpl28 textFieldMagnifierNodeImpl28) {
            return (textFieldMagnifierNodeImpl28.visible || textFieldMagnifierNodeImpl28.textFieldSelectionState.getDirectDragGestureInitiator() == TextFieldSelectionState.InputType.Touch) ? Offset.m5976boximpl(TextFieldMagnifierKt.m2865calculateSelectionMagnifierCenterAndroidhUlJWOE(textFieldMagnifierNodeImpl28.textFieldState, textFieldMagnifierNodeImpl28.textFieldSelectionState, textFieldMagnifierNodeImpl28.textLayoutState, textFieldMagnifierNodeImpl28.m2867getMagnifierSizeYbymL2g())) : Offset.m5976boximpl(Offset.Companion.m6002getUnspecifiedF1C5BW0());
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = TextFieldMagnifierNodeImpl28.this.new AnonymousClass1(e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
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
                final y22 y22Var = (y22) this.L$0;
                final TextFieldMagnifierNodeImpl28 textFieldMagnifierNodeImpl28 = TextFieldMagnifierNodeImpl28.this;
                hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(new ll3() { // from class: androidx.compose.foundation.text.input.internal.selection.a
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return TextFieldMagnifierNodeImpl28.AnonymousClass1.invokeSuspend$lambda$0(textFieldMagnifierNodeImpl28);
                    }
                });
                final TextFieldMagnifierNodeImpl28 textFieldMagnifierNodeImpl29 = TextFieldMagnifierNodeImpl28.this;
                id3 id3Var = new id3() { // from class: androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNodeImpl28.restartAnimationJob.1.2

                    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNodeImpl28$restartAnimationJob$1$2$1, reason: invalid class name and collision with other inner class name */
                    @bd2(c = "androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNodeImpl28$restartAnimationJob$1$2$1", f = "AndroidTextFieldMagnifier.android.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_GROUP}, m = "invokeSuspend", v = 1)
                    public static final class C00491 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ long $targetValue;
                        int label;
                        final /* synthetic */ TextFieldMagnifierNodeImpl28 this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00491(TextFieldMagnifierNodeImpl28 textFieldMagnifierNodeImpl28, long j, e02<? super C00491> e02Var) {
                            super(2, e02Var);
                            this.this$0 = textFieldMagnifierNodeImpl28;
                            this.$targetValue = j;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new C00491(this.this$0, this.$targetValue, e02Var);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((C00491) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        @Override // defpackage.cd0
                        public final Object invokeSuspend(Object obj) {
                            a32 a32Var = a32.COROUTINE_SUSPENDED;
                            int i = this.label;
                            if (i == 0) {
                                r57.b(obj);
                                Animatable animatable = this.this$0.animatable;
                                Offset offsetM5976boximpl = Offset.m5976boximpl(this.$targetValue);
                                SpringSpec<Offset> magnifierSpringSpec = SelectionMagnifierKt.getMagnifierSpringSpec();
                                this.label = 1;
                                if (Animatable.animateTo$default(animatable, offsetM5976boximpl, magnifierSpringSpec, null, null, this, 12, null) == a32Var) {
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

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return m2869emit3MmeM6k(((Offset) obj2).m5997unboximpl(), e02Var);
                    }

                    /* JADX INFO: renamed from: emit-3MmeM6k, reason: not valid java name */
                    public final Object m2869emit3MmeM6k(long j, e02<? super j59> e02Var) {
                        if ((((Offset) textFieldMagnifierNodeImpl29.animatable.getValue()).m5997unboximpl() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats || (j & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats || Float.intBitsToFloat((int) (((Offset) textFieldMagnifierNodeImpl29.animatable.getValue()).m5997unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
                            Object objSnapTo = textFieldMagnifierNodeImpl29.animatable.snapTo(Offset.m5976boximpl(j), e02Var);
                            return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
                        }
                        av0.c(y22Var, null, null, new C00491(textFieldMagnifierNodeImpl29, j, null), 3);
                        return j59.a;
                    }
                };
                this.label = 1;
                if (hd3VarSnapshotFlow.collect(id3Var, this) == a32Var) {
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

    public TextFieldMagnifierNodeImpl28(TransformedTextFieldState transformedTextFieldState, TextFieldSelectionState textFieldSelectionState, TextLayoutState textLayoutState, boolean z) {
        this.textFieldState = transformedTextFieldState;
        this.textFieldSelectionState = textFieldSelectionState;
        this.textLayoutState = textLayoutState;
        this.visible = z;
        this.animatable = new Animatable<>(Offset.m5976boximpl(TextFieldMagnifierKt.m2865calculateSelectionMagnifierCenterAndroidhUlJWOE(this.textFieldState, this.textFieldSelectionState, this.textLayoutState, m2867getMagnifierSizeYbymL2g())), SelectionMagnifierKt.getUnspecifiedSafeOffsetVectorConverter(), Offset.m5976boximpl(SelectionMagnifierKt.getOffsetDisplacementThreshold()), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getMagnifierSize-YbymL2g, reason: not valid java name */
    public final long m2867getMagnifierSizeYbymL2g() {
        return ((IntSize) this.magnifierSize$delegate.getValue()).m9217unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset magnifierNode$lambda$0(TextFieldMagnifierNodeImpl28 textFieldMagnifierNodeImpl28, Density density) {
        return textFieldMagnifierNodeImpl28.animatable.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 magnifierNode$lambda$1(TextFieldMagnifierNodeImpl28 textFieldMagnifierNodeImpl28, DpSize dpSize) {
        Density density = (Density) CompositionLocalConsumerModifierNodeKt.currentValueOf(textFieldMagnifierNodeImpl28, CompositionLocalsKt.getLocalDensity());
        textFieldMagnifierNodeImpl28.m2868setMagnifierSizeozmzZPI(IntSize.m9208constructorimpl((((long) density.mo1428roundToPx0680j_4(DpSize.m9140getWidthD9Ej5fM(dpSize.m9148unboximpl()))) << 32) | (((long) density.mo1428roundToPx0680j_4(DpSize.m9138getHeightD9Ej5fM(dpSize.m9148unboximpl()))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        return j59.a;
    }

    private final void restartAnimationJob() {
        mb4 mb4Var = this.animationJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.animationJob = null;
        if (Magnifier_androidKt.isPlatformMagnifierSupported$default(0, 1, null)) {
            this.animationJob = av0.c(getCoroutineScope(), null, null, new AnonymousClass1(null), 3);
        }
    }

    /* JADX INFO: renamed from: setMagnifierSize-ozmzZPI, reason: not valid java name */
    private final void m2868setMagnifierSizeozmzZPI(long j) {
        this.magnifierSize$delegate.setValue(IntSize.m9205boximpl(j));
    }

    @Override // androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNode, androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        this.magnifierNode.applySemantics(semanticsPropertyReceiver);
    }

    @Override // androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNode, androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        this.magnifierNode.draw(contentDrawScope);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        restartAnimationJob();
    }

    @Override // androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNode, androidx.compose.ui.layout.OnGloballyPositionedModifier
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        this.magnifierNode.onGloballyPositioned(layoutCoordinates);
    }

    @Override // androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNode
    public void update(TransformedTextFieldState transformedTextFieldState, TextFieldSelectionState textFieldSelectionState, TextLayoutState textLayoutState, boolean z) {
        TransformedTextFieldState transformedTextFieldState2 = this.textFieldState;
        TextFieldSelectionState textFieldSelectionState2 = this.textFieldSelectionState;
        TextLayoutState textLayoutState2 = this.textLayoutState;
        boolean z2 = this.visible;
        this.textFieldState = transformedTextFieldState;
        this.textFieldSelectionState = textFieldSelectionState;
        this.textLayoutState = textLayoutState;
        this.visible = z;
        if (aa4.e(transformedTextFieldState, transformedTextFieldState2) && aa4.e(textFieldSelectionState, textFieldSelectionState2) && aa4.e(textLayoutState, textLayoutState2) && z == z2) {
            return;
        }
        restartAnimationJob();
    }
}

package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1", f = "SelectionMagnifier.kt", l = {83}, m = "invokeSuspend", v = 1)
public final class SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ Animatable<Offset, AnimationVector2D> $animatable;
    final /* synthetic */ State<Offset> $targetValue$delegate;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(State<Offset> state, Animatable<Offset, AnimationVector2D> animatable, e02<? super SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1> e02Var) {
        super(2, e02Var);
        this.$targetValue$delegate = state;
        this.$animatable = animatable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset invokeSuspend$lambda$0(State state) {
        return Offset.m5976boximpl(SelectionMagnifierKt.rememberAnimatedMagnifierPosition$lambda$1(state));
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1 selectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1 = new SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1(this.$targetValue$delegate, this.$animatable, e02Var);
        selectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1.L$0 = obj;
        return selectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            final y22 y22Var = (y22) this.L$0;
            final State<Offset> state = this.$targetValue$delegate;
            hd3 hd3VarSnapshotFlow = SnapshotStateKt.snapshotFlow(new ll3() { // from class: androidx.compose.foundation.text.selection.c
                @Override // defpackage.ll3
                public final Object invoke() {
                    return SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1.invokeSuspend$lambda$0(state);
                }
            });
            final Animatable<Offset, AnimationVector2D> animatable = this.$animatable;
            id3 id3Var = new id3() { // from class: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1.2

                /* JADX INFO: renamed from: androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.compose.foundation.text.selection.SelectionMagnifierKt$rememberAnimatedMagnifierPosition$1$1$2$1", f = "SelectionMagnifier.kt", l = {96}, m = "invokeSuspend", v = 1)
                public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                    final /* synthetic */ Animatable<Offset, AnimationVector2D> $animatable;
                    final /* synthetic */ long $targetValue;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(Animatable<Offset, AnimationVector2D> animatable, long j, e02<? super AnonymousClass1> e02Var) {
                        super(2, e02Var);
                        this.$animatable = animatable;
                        this.$targetValue = j;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        return new AnonymousClass1(this.$animatable, this.$targetValue, e02Var);
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
                            Animatable<Offset, AnimationVector2D> animatable = this.$animatable;
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
                    return m2992emit3MmeM6k(((Offset) obj2).m5997unboximpl(), e02Var);
                }

                /* JADX INFO: renamed from: emit-3MmeM6k, reason: not valid java name */
                public final Object m2992emit3MmeM6k(long j, e02<? super j59> e02Var) {
                    if ((animatable.getValue().m5997unboximpl() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats || (j & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats || Float.intBitsToFloat((int) (animatable.getValue().m5997unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) == Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) {
                        Object objSnapTo = animatable.snapTo(Offset.m5976boximpl(j), e02Var);
                        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
                    }
                    av0.c(y22Var, null, null, new AnonymousClass1(animatable, j, null), 3);
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

package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1 implements PointerInputEventHandler {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ State<nl3<Offset, j59>> $onTapState;
    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
    final /* synthetic */ y22 $scope;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {67}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements dm3<PressGestureScope, Offset, e02<? super j59>, Object> {
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
        final /* synthetic */ y22 $scope;
        /* synthetic */ long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$1", f = "TextFieldPressGestureFilter.kt", l = {60, 64}, m = "invokeSuspend", v = 1)
        public static final class C00431 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ MutableInteractionSource $interactionSource;
            final /* synthetic */ long $it;
            final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00431(MutableState<PressInteraction.Press> mutableState, long j, MutableInteractionSource mutableInteractionSource, e02<? super C00431> e02Var) {
                super(2, e02Var);
                this.$pressedInteraction = mutableState;
                this.$it = j;
                this.$interactionSource = mutableInteractionSource;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00431(this.$pressedInteraction, this.$it, this.$interactionSource, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00431) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Code duplicated, block: B:22:0x0056  */
            /* JADX WARN: Code duplicated, block: B:25:0x0061  */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                MutableState<PressInteraction.Press> mutableState;
                MutableState<PressInteraction.Press> mutableState2;
                PressInteraction.Press press;
                MutableInteractionSource mutableInteractionSource;
                PressInteraction.Press press2;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i == 1) {
                        mutableState2 = (MutableState) this.L$0;
                        r57.b(obj);
                    } else {
                        if (i != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        press2 = (PressInteraction.Press) this.L$0;
                        r57.b(obj);
                    }
                    press = press2;
                    this.$pressedInteraction.setValue(press);
                    return j59.a;
                }
                r57.b(obj);
                PressInteraction.Press value = this.$pressedInteraction.getValue();
                if (value == null) {
                    press = new PressInteraction.Press(this.$it, null);
                    mutableInteractionSource = this.$interactionSource;
                    if (mutableInteractionSource != null) {
                        this.L$0 = press;
                        this.label = 2;
                        if (mutableInteractionSource.emit(press, this) != a32Var) {
                            press2 = press;
                            press = press2;
                        }
                    }
                    this.$pressedInteraction.setValue(press);
                    return j59.a;
                }
                MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
                mutableState = this.$pressedInteraction;
                PressInteraction.Cancel cancel = new PressInteraction.Cancel(value);
                if (mutableInteractionSource2 == null) {
                    mutableState.setValue(null);
                    press = new PressInteraction.Press(this.$it, null);
                    mutableInteractionSource = this.$interactionSource;
                    if (mutableInteractionSource != null) {
                        this.L$0 = press;
                        this.label = 2;
                        if (mutableInteractionSource.emit(press, this) != a32Var) {
                            press2 = press;
                            press = press2;
                        }
                    }
                    this.$pressedInteraction.setValue(press);
                    return j59.a;
                }
                this.L$0 = mutableState;
                this.label = 1;
                if (mutableInteractionSource2.emit(cancel, this) != a32Var) {
                    mutableState2 = mutableState;
                }
                return a32Var;
                mutableState = mutableState2;
                mutableState.setValue(null);
                press = new PressInteraction.Press(this.$it, null);
                mutableInteractionSource = this.$interactionSource;
                if (mutableInteractionSource != null) {
                    this.L$0 = press;
                    this.label = 2;
                    if (mutableInteractionSource.emit(press, this) != a32Var) {
                        press2 = press;
                        press = press2;
                    }
                    return a32Var;
                }
                this.$pressedInteraction.setValue(press);
                return j59.a;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1$2", f = "TextFieldPressGestureFilter.kt", l = {76}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ MutableInteractionSource $interactionSource;
            final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
            final /* synthetic */ boolean $success;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(MutableState<PressInteraction.Press> mutableState, boolean z, MutableInteractionSource mutableInteractionSource, e02<? super AnonymousClass2> e02Var) {
                super(2, e02Var);
                this.$pressedInteraction = mutableState;
                this.$success = z;
                this.$interactionSource = mutableInteractionSource;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new AnonymousClass2(this.$pressedInteraction, this.$success, this.$interactionSource, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                MutableState<PressInteraction.Press> mutableState;
                MutableState<PressInteraction.Press> mutableState2;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    PressInteraction.Press value = this.$pressedInteraction.getValue();
                    if (value != null) {
                        boolean z = this.$success;
                        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                        mutableState = this.$pressedInteraction;
                        Interaction release = z ? new PressInteraction.Release(value) : new PressInteraction.Cancel(value);
                        if (mutableInteractionSource != null) {
                            this.L$0 = mutableState;
                            this.label = 1;
                            if (mutableInteractionSource.emit(release, this) == a32Var) {
                                return a32Var;
                            }
                            mutableState2 = mutableState;
                        }
                        mutableState.setValue(null);
                    }
                    return j59.a;
                }
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableState2 = (MutableState) this.L$0;
                r57.b(obj);
                mutableState = mutableState2;
                mutableState.setValue(null);
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(y22 y22Var, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, e02<? super AnonymousClass1> e02Var) {
            super(3, e02Var);
            this.$scope = y22Var;
            this.$pressedInteraction = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, e02<? super j59> e02Var) {
            return m2618invoked4ec7I(pressGestureScope, offset.m5997unboximpl(), e02Var);
        }

        /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
        public final Object m2618invoked4ec7I(PressGestureScope pressGestureScope, long j, e02<? super j59> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, e02Var);
            anonymousClass1.L$0 = pressGestureScope;
            anonymousClass1.J$0 = j;
            return anonymousClass1.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                av0.c(this.$scope, null, null, new C00431(this.$pressedInteraction, this.J$0, this.$interactionSource, null), 3);
                this.label = 1;
                obj = pressGestureScope.tryAwaitRelease(this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            av0.c(this.$scope, null, null, new AnonymousClass2(this.$pressedInteraction, ((Boolean) obj).booleanValue(), this.$interactionSource, null), 3);
            return j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1(y22 y22Var, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, State<? extends nl3<? super Offset, j59>> state) {
        this.$scope = y22Var;
        this.$pressedInteraction = mutableState;
        this.$interactionSource = mutableInteractionSource;
        this.$onTapState = state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$0(State state, Offset offset) {
        ((nl3) state.getValue()).invoke(offset);
        return j59.a;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, null);
        final State<nl3<Offset, j59>> state = this.$onTapState;
        Object objDetectTapAndPress = TapGestureDetectorKt.detectTapAndPress(pointerInputScope, anonymousClass1, new nl3() { // from class: androidx.compose.foundation.text.m
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1.invoke$lambda$0(state, (Offset) obj);
            }
        }, e02Var);
        return objDetectTapAndPress == a32.COROUTINE_SUSPENDED ? objDetectTapAndPress : j59.a;
    }
}

package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material3.internal.ElevationKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Dp;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
final class FloatingActionButtonElevationAnimatable {
    private final Animatable<Dp, AnimationVector1D> animatable;
    private float defaultElevation;
    private float focusedElevation;
    private float hoveredElevation;
    private Interaction lastTargetInteraction;
    private float pressedElevation;
    private Interaction targetInteraction;

    /* JADX INFO: renamed from: androidx.compose.material3.FloatingActionButtonElevationAnimatable$animateElevation$1, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.FloatingActionButtonElevationAnimatable", f = "FloatingActionButton.kt", l = {753}, m = "animateElevation")
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FloatingActionButtonElevationAnimatable.this.animateElevation(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.FloatingActionButtonElevationAnimatable$snapElevation$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.FloatingActionButtonElevationAnimatable", f = "FloatingActionButton.kt", l = {739}, m = "snapElevation")
    public static final class C05891 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C05891(e02<? super C05891> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FloatingActionButtonElevationAnimatable.this.snapElevation(this);
        }
    }

    private FloatingActionButtonElevationAnimatable(float f, float f2, float f3, float f4) {
        this.defaultElevation = f;
        this.pressedElevation = f2;
        this.hoveredElevation = f3;
        this.focusedElevation = f4;
        this.animatable = new Animatable<>(Dp.m9040boximpl(f), VectorConvertersKt.getVectorConverter(Dp.Companion), null, null, 12, null);
    }

    /* JADX INFO: renamed from: calculateTarget-u2uoSUM, reason: not valid java name */
    private final float m3482calculateTargetu2uoSUM(Interaction interaction) {
        if (interaction instanceof PressInteraction.Press) {
            return this.pressedElevation;
        }
        if (interaction instanceof HoverInteraction.Enter) {
            return this.hoveredElevation;
        }
        return interaction instanceof FocusInteraction.Focus ? this.focusedElevation : this.defaultElevation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object snapElevation(e02<? super j59> e02Var) {
        C05891 c05891;
        if (e02Var instanceof C05891) {
            c05891 = (C05891) e02Var;
            int i = c05891.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c05891.label = i - Integer.MIN_VALUE;
            } else {
                c05891 = new C05891(e02Var);
            }
        } else {
            c05891 = new C05891(e02Var);
        }
        Object obj = c05891.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c05891.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                float fM3482calculateTargetu2uoSUM = m3482calculateTargetu2uoSUM(this.targetInteraction);
                if (!Dp.m9047equalsimpl0(this.animatable.getTargetValue().m9056unboximpl(), fM3482calculateTargetu2uoSUM)) {
                    Animatable<Dp, AnimationVector1D> animatable = this.animatable;
                    Dp dpM9040boximpl = Dp.m9040boximpl(fM3482calculateTargetu2uoSUM);
                    c05891.label = 1;
                    if (animatable.snapTo(dpM9040boximpl, c05891) == a32Var) {
                        return a32Var;
                    }
                }
                return j59.a;
            }
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            this.lastTargetInteraction = this.targetInteraction;
            return j59.a;
        } catch (Throwable th) {
            this.lastTargetInteraction = this.targetInteraction;
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [j59, java.lang.Object] */
    public final Object animateElevation(Interaction interaction, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                float fM3482calculateTargetu2uoSUM = m3482calculateTargetu2uoSUM(interaction);
                this.targetInteraction = interaction;
                if (!Dp.m9047equalsimpl0(this.animatable.getTargetValue().m9056unboximpl(), fM3482calculateTargetu2uoSUM)) {
                    Animatable<Dp, AnimationVector1D> animatable = this.animatable;
                    Interaction interaction2 = this.lastTargetInteraction;
                    anonymousClass1.L$0 = interaction;
                    anonymousClass1.label = 1;
                    if (ElevationKt.m4376animateElevationrAjV9yQ(animatable, fM3482calculateTargetu2uoSUM, interaction2, interaction, anonymousClass1) == a32Var) {
                        return a32Var;
                    }
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                interaction = (Interaction) anonymousClass1.L$0;
                r57.b(obj);
            }
            this.lastTargetInteraction = interaction;
            this = j59.a;
            return this;
        } catch (Throwable th) {
            this.lastTargetInteraction = interaction;
            throw th;
        }
    }

    public final State<Dp> asState() {
        return this.animatable.asState();
    }

    /* JADX INFO: renamed from: updateElevation-lDy3nrA, reason: not valid java name */
    public final Object m3483updateElevationlDy3nrA(float f, float f2, float f3, float f4, e02<? super j59> e02Var) {
        this.defaultElevation = f;
        this.pressedElevation = f2;
        this.hoveredElevation = f3;
        this.focusedElevation = f4;
        Object objSnapElevation = snapElevation(e02Var);
        return objSnapElevation == a32.COROUTINE_SUSPENDED ? objSnapElevation : j59.a;
    }

    public /* synthetic */ FloatingActionButtonElevationAnimatable(float f, float f2, float f3, float f4, jh2 jh2Var) {
        this(f, f2, f3, f4);
    }
}

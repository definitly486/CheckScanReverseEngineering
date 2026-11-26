package androidx.work.impl.constraints.controllers;

import androidx.compose.ui.spatial.RectListKt;
import androidx.work.Constraints;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import defpackage.a32;
import defpackage.a91;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s0;
import defpackage.sg6;
import defpackage.ug6;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseConstraintController<T> implements ConstraintController {
    private final ConstraintTracker<T> tracker;

    /* JADX INFO: renamed from: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1, reason: invalid class name */
    @bd2(c = "androidx.work.impl.constraints.controllers.BaseConstraintController$track$1", f = "ContraintControllers.kt", l = {RectListKt.BitOffsetForGesturable}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super ConstraintsState>, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ BaseConstraintController<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BaseConstraintController<T> baseConstraintController, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = baseConstraintController;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(BaseConstraintController baseConstraintController, BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1) {
            baseConstraintController.tracker.removeListener(baseConstraintController$track$1$listener$1);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super ConstraintsState> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final BaseConstraintController<T> baseConstraintController = this.this$0;
                final ConstraintListener<T> constraintListener = new ConstraintListener<T>() { // from class: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1
                    @Override // androidx.work.impl.constraints.ConstraintListener
                    public void onConstraintChanged(T t) {
                        ((a91) ug6Var.getChannel()).mo0trySendJP2dKIU(baseConstraintController.isConstrained(t) ? new ConstraintsState.ConstraintsNotMet(baseConstraintController.getReason()) : ConstraintsState.ConstraintsMet.INSTANCE);
                    }
                };
                ((BaseConstraintController) this.this$0).tracker.addListener(constraintListener);
                final BaseConstraintController<T> baseConstraintController2 = this.this$0;
                ll3 ll3Var = new ll3() { // from class: androidx.work.impl.constraints.controllers.a
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return BaseConstraintController.AnonymousClass1.invokeSuspend$lambda$0(baseConstraintController2, constraintListener);
                    }
                };
                this.label = 1;
                if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
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

    public BaseConstraintController(ConstraintTracker<T> constraintTracker) {
        constraintTracker.getClass();
        this.tracker = constraintTracker;
    }

    public static /* synthetic */ void getReason$annotations() {
    }

    public abstract int getReason();

    public boolean isConstrained(T t) {
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean isCurrentlyConstrained(WorkSpec workSpec) {
        workSpec.getClass();
        return hasConstraint(workSpec) && isConstrained(this.tracker.readSystemState());
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public hd3<ConstraintsState> track(Constraints constraints) {
        constraints.getClass();
        return s0.a(new AnonymousClass1(this, null));
    }
}

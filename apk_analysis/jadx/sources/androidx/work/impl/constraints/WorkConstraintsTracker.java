package androidx.work.impl.constraints;

import androidx.work.Logger;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.cn1;
import defpackage.co1;
import defpackage.dm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.kn1;
import defpackage.ld3;
import defpackage.ll3;
import defpackage.mi;
import defpackage.pg8;
import defpackage.qn1;
import defpackage.r57;
import defpackage.zd3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkConstraintsTracker {
    private final List<ConstraintController> controllers;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTracker(Trackers trackers) {
        this((List<? extends ConstraintController>) WorkConstraintsTrackerKt.createControllers(trackers));
        trackers.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence areAllConstraintsMet$lambda$5(ConstraintController constraintController) {
        constraintController.getClass();
        return constraintController.getClass().getSimpleName();
    }

    public final boolean areAllConstraintsMet(WorkSpec workSpec) {
        workSpec.getClass();
        List<ConstraintController> list = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ConstraintController) obj).isCurrentlyConstrained(workSpec)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            Logger.get().debug(WorkConstraintsTrackerKt.TAG, "Work " + workSpec.id + " constrained by " + qn1.a0(arrayList, null, null, null, 0, new mi(5), 31));
        }
        return arrayList.isEmpty();
    }

    public final hd3<ConstraintsState> track(WorkSpec workSpec) {
        workSpec.getClass();
        List<ConstraintController> list = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ConstraintController) obj).hasConstraint(workSpec)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ConstraintController) it.next()).track(workSpec.constraints));
        }
        final hd3[] hd3VarArr = (hd3[]) qn1.t0(arrayList2).toArray(new hd3[0]);
        return zd3.c(new hd3<ConstraintsState>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1

            /* JADX INFO: renamed from: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3, reason: invalid class name */
            @bd2(c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3", f = "WorkConstraintsTracker.kt", l = {288}, m = "invokeSuspend")
            public static final class AnonymousClass3 extends pg8 implements dm3<id3<? super ConstraintsState>, ConstraintsState[], e02<? super j59>, Object> {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public AnonymousClass3(e02 e02Var) {
                    super(3, e02Var);
                }

                @Override // defpackage.dm3
                public final Object invoke(id3<? super ConstraintsState> id3Var, ConstraintsState[] constraintsStateArr, e02<? super j59> e02Var) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(e02Var);
                    anonymousClass3.L$0 = id3Var;
                    anonymousClass3.L$1 = constraintsStateArr;
                    return anonymousClass3.invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    ConstraintsState constraintsState = null;
                    if (i == 0) {
                        r57.b(obj);
                        id3 id3Var = (id3) this.L$0;
                        for (ConstraintsState constraintsState2 : (ConstraintsState[]) ((Object[]) this.L$1)) {
                            if (!aa4.e(constraintsState2, ConstraintsState.ConstraintsMet.INSTANCE)) {
                                constraintsState = constraintsState2;
                                break;
                            }
                        }
                        if (constraintsState == null) {
                            constraintsState = ConstraintsState.ConstraintsMet.INSTANCE;
                        }
                        this.label = 1;
                        if (id3Var.emit(constraintsState, this) == a32Var) {
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

            @Override // defpackage.hd3
            public Object collect(id3<? super ConstraintsState> id3Var, e02 e02Var) {
                final hd3[] hd3VarArr2 = hd3VarArr;
                co1 co1Var = new co1(hd3VarArr2, new ll3<ConstraintsState[]>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1.2
                    @Override // defpackage.ll3
                    public final ConstraintsState[] invoke() {
                        return new ConstraintsState[hd3VarArr2.length];
                    }
                }, new AnonymousClass3(null), id3Var, null);
                ld3 ld3Var = new ld3(e02Var, e02Var.getContext());
                Object objD = cn1.d(ld3Var, true, ld3Var, co1Var);
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (objD != a32Var) {
                    objD = j59.a;
                }
                return objD == a32Var ? objD : j59.a;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WorkConstraintsTracker(List<? extends ConstraintController> list) {
        list.getClass();
        this.controllers = list;
    }
}

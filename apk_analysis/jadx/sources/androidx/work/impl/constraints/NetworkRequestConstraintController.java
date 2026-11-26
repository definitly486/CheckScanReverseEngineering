package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.Constraints;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkTypeCompatKt;
import defpackage.a32;
import defpackage.a91;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s0;
import defpackage.s68;
import defpackage.sg6;
import defpackage.ug6;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkRequestConstraintController implements ConstraintController {
    private final ConnectivityManager connManager;
    private final long timeoutMs;

    /* JADX INFO: renamed from: androidx.work.impl.constraints.NetworkRequestConstraintController$track$1, reason: invalid class name */
    @bd2(c = "androidx.work.impl.constraints.NetworkRequestConstraintController$track$1", f = "WorkConstraintsTracker.kt", l = {191}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super ConstraintsState>, e02<? super j59>, Object> {
        final /* synthetic */ Constraints $constraints;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ NetworkRequestConstraintController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Constraints constraints, NetworkRequestConstraintController networkRequestConstraintController, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$constraints = constraints;
            this.this$0 = networkRequestConstraintController;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(mb4 mb4Var, ug6 ug6Var, ConstraintsState constraintsState) {
            mb4Var.cancel(null);
            ug6Var.mo0trySendJP2dKIU(constraintsState);
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(ll3 ll3Var) {
            ll3Var.invoke();
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$constraints, this.this$0, e02Var);
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
                NetworkRequest requiredNetworkRequest = this.$constraints.getRequiredNetworkRequest();
                if (requiredNetworkRequest == null) {
                    requiredNetworkRequest = NetworkTypeCompatKt.toNetworkRequest(this.$constraints.getRequiredNetworkType());
                }
                if (requiredNetworkRequest == null) {
                    ((a91) ug6Var.getChannel()).close(null);
                    return j59.a;
                }
                final s68 s68VarC = av0.c(ug6Var, null, null, new NetworkRequestConstraintController$track$1$timeoutJob$1(this.this$0, ug6Var, null), 3);
                nl3<? super ConstraintsState, j59> nl3Var = new nl3() { // from class: androidx.work.impl.constraints.b
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return NetworkRequestConstraintController.AnonymousClass1.invokeSuspend$lambda$0(s68VarC, ug6Var, (ConstraintsState) obj2);
                    }
                };
                final ll3<j59> ll3VarAddCallback = Build.VERSION.SDK_INT >= 30 ? SharedNetworkCallback.INSTANCE.addCallback(this.this$0.connManager, requiredNetworkRequest, nl3Var) : IndividualNetworkCallback.Companion.addCallback(this.this$0.connManager, requiredNetworkRequest, nl3Var);
                ll3 ll3Var = new ll3() { // from class: androidx.work.impl.constraints.c
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return NetworkRequestConstraintController.AnonymousClass1.invokeSuspend$lambda$1(ll3VarAddCallback);
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

    public NetworkRequestConstraintController(ConnectivityManager connectivityManager, long j) {
        connectivityManager.getClass();
        this.connManager = connectivityManager;
        this.timeoutMs = j;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(WorkSpec workSpec) {
        workSpec.getClass();
        return (workSpec.constraints.getRequiredNetworkRequest() == null && workSpec.constraints.getRequiredNetworkType() == NetworkType.NOT_REQUIRED) ? false : true;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean isCurrentlyConstrained(WorkSpec workSpec) {
        workSpec.getClass();
        if (!hasConstraint(workSpec)) {
            return false;
        }
        ah.f("isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn't supported");
        return false;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public hd3<ConstraintsState> track(Constraints constraints) {
        constraints.getClass();
        return s0.a(new AnonymousClass1(constraints, this, null));
    }

    public /* synthetic */ NetworkRequestConstraintController(ConnectivityManager connectivityManager, long j, int i, jh2 jh2Var) {
        this(connectivityManager, (i & 2) != 0 ? 1000L : j);
    }
}

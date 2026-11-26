package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import androidx.activity.compose.internal.BackHandlerCompat;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.cu0;
import defpackage.dm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.l91;
import defpackage.mb4;
import defpackage.n07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sd3;
import defpackage.x81;
import defpackage.y22;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
final class ComposePredictiveBackHandler extends BackHandlerCompat {
    private x81<BackEventCompat> activeChannel;
    private mb4 activeJob;
    private bm3<? super hd3<BackEventCompat>, ? super e02<? super j59>, ? extends Object> currentOnBack;
    private boolean isPredictiveBack;
    private final y22 scope;

    /* JADX INFO: renamed from: androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1, reason: invalid class name */
    @bd2(c = "androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1", f = "PredictiveBackHandler.kt", l = {WebmConstants.MkvEbmlElement.TIMESTAMP}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.activity.compose.ComposePredictiveBackHandler$launchNewGesture$1$1", f = "PredictiveBackHandler.kt", l = {}, m = "invokeSuspend", v = 1)
        public static final class C00051 extends pg8 implements dm3<id3<? super BackEventCompat>, Throwable, e02<? super j59>, Object> {
            final /* synthetic */ n07 $completed;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00051(n07 n07Var, e02<? super C00051> e02Var) {
                super(3, e02Var);
                this.$completed = n07Var;
            }

            @Override // defpackage.dm3
            public final Object invoke(id3<? super BackEventCompat> id3Var, Throwable th, e02<? super j59> e02Var) {
                return new C00051(this.$completed, e02Var).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                if (this.label != 0) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
                this.$completed.b = true;
                return j59.a;
            }
        }

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ComposePredictiveBackHandler.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            n07 n07Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                if (ComposePredictiveBackHandler.this.isBackEnabled()) {
                    n07 n07Var2 = new n07();
                    bm3<hd3<BackEventCompat>, e02<? super j59>, Object> currentOnBack = ComposePredictiveBackHandler.this.getCurrentOnBack();
                    x81 x81Var = ComposePredictiveBackHandler.this.activeChannel;
                    x81Var.getClass();
                    be3 be3Var = new be3(sd3.a(x81Var), new C00051(n07Var2, null));
                    this.L$0 = n07Var2;
                    this.label = 1;
                    if (currentOnBack.invoke(be3Var, this) == a32Var) {
                        return a32Var;
                    }
                    n07Var = n07Var2;
                }
                return j59.a;
            }
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            n07Var = (n07) this.L$0;
            r57.b(obj);
            if (!n07Var.b) {
                ah.f("You must collect the progress flow");
                return null;
            }
            return j59.a;
        }
    }

    public ComposePredictiveBackHandler(y22 y22Var, PredictiveBackHandlerInfo predictiveBackHandlerInfo) {
        super(predictiveBackHandlerInfo);
        this.scope = y22Var;
        this.currentOnBack = new ComposePredictiveBackHandler$currentOnBack$1(null);
    }

    private final void launchNewGesture() {
        this.activeChannel = l91.a(-2, cu0.SUSPEND, null, 4);
        this.activeJob = av0.c(this.scope, null, null, new AnonymousClass1(null), 3);
    }

    public final bm3<hd3<BackEventCompat>, e02<? super j59>, Object> getCurrentOnBack() {
        return this.currentOnBack;
    }

    public final y22 getScope() {
        return this.scope;
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public boolean isBackEnabled() {
        return super.isBackEnabled();
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public void onBackCancelled() {
        x81<BackEventCompat> x81Var = this.activeChannel;
        if (x81Var != null) {
            x81Var.cancel(new CancellationException("onBack cancelled"));
        }
        mb4 mb4Var = this.activeJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.activeChannel = null;
        this.activeJob = null;
        this.isPredictiveBack = false;
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public void onBackCompleted() {
        if (this.activeChannel != null && !this.isPredictiveBack) {
            onBackCancelled();
        }
        if (this.activeChannel == null) {
            this.isPredictiveBack = false;
            launchNewGesture();
        }
        x81<BackEventCompat> x81Var = this.activeChannel;
        if (x81Var != null) {
            x81Var.close(null);
        }
        this.isPredictiveBack = false;
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public void onBackProgressed(BackEventCompat backEventCompat) {
        x81<BackEventCompat> x81Var = this.activeChannel;
        if (x81Var != null) {
            x81Var.mo0trySendJP2dKIU(backEventCompat);
        }
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public void onBackStarted(BackEventCompat backEventCompat) {
        onBackCancelled();
        if (isBackEnabled()) {
            this.isPredictiveBack = true;
            launchNewGesture();
        }
    }

    @Override // androidx.activity.compose.internal.BackHandlerCompat
    public void setBackEnabled(boolean z) {
        mb4 mb4Var;
        if (!z && super.isBackEnabled() && (mb4Var = this.activeJob) != null && !mb4Var.isActive()) {
            onBackCancelled();
        }
        super.setBackEnabled(z);
    }

    public final void setCurrentOnBack(bm3<? super hd3<BackEventCompat>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.currentOnBack = bm3Var;
    }
}

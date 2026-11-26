package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import defpackage.a31;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.c31;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.r57;
import defpackage.tg;
import defpackage.yg5;
import defpackage.zya;

/* JADX INFO: loaded from: classes2.dex */
public final class SnackbarHostState {
    public static final int $stable = 0;
    private final yg5 mutex = new ch5();
    private final MutableState currentSnackbarData$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);

    public static final class SnackbarDataImpl implements SnackbarData {
        private final a31<SnackbarResult> continuation;
        private final SnackbarVisuals visuals;

        /* JADX WARN: Multi-variable type inference failed */
        public SnackbarDataImpl(SnackbarVisuals snackbarVisuals, a31<? super SnackbarResult> a31Var) {
            this.visuals = snackbarVisuals;
            this.continuation = a31Var;
        }

        @Override // androidx.compose.material3.SnackbarData
        public void dismiss() {
            if (this.continuation.isActive()) {
                this.continuation.resumeWith(SnackbarResult.Dismissed);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SnackbarDataImpl.class != obj.getClass()) {
                return false;
            }
            SnackbarDataImpl snackbarDataImpl = (SnackbarDataImpl) obj;
            return aa4.e(getVisuals(), snackbarDataImpl.getVisuals()) && aa4.e(this.continuation, snackbarDataImpl.continuation);
        }

        @Override // androidx.compose.material3.SnackbarData
        public SnackbarVisuals getVisuals() {
            return this.visuals;
        }

        public int hashCode() {
            return this.continuation.hashCode() + (getVisuals().hashCode() * 31);
        }

        @Override // androidx.compose.material3.SnackbarData
        public void performAction() {
            if (this.continuation.isActive()) {
                this.continuation.resumeWith(SnackbarResult.ActionPerformed);
            }
        }
    }

    public static final class SnackbarVisualsImpl implements SnackbarVisuals {
        private final String actionLabel;
        private final SnackbarDuration duration;
        private final String message;
        private final boolean withDismissAction;

        public SnackbarVisualsImpl(String str, String str2, boolean z, SnackbarDuration snackbarDuration) {
            this.message = str;
            this.actionLabel = str2;
            this.withDismissAction = z;
            this.duration = snackbarDuration;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SnackbarVisualsImpl.class != obj.getClass()) {
                return false;
            }
            SnackbarVisualsImpl snackbarVisualsImpl = (SnackbarVisualsImpl) obj;
            return aa4.e(getMessage(), snackbarVisualsImpl.getMessage()) && aa4.e(getActionLabel(), snackbarVisualsImpl.getActionLabel()) && getWithDismissAction() == snackbarVisualsImpl.getWithDismissAction() && getDuration() == snackbarVisualsImpl.getDuration();
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        public String getActionLabel() {
            return this.actionLabel;
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        public SnackbarDuration getDuration() {
            return this.duration;
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        public String getMessage() {
            return this.message;
        }

        @Override // androidx.compose.material3.SnackbarVisuals
        public boolean getWithDismissAction() {
            return this.withDismissAction;
        }

        public int hashCode() {
            int iHashCode = getMessage().hashCode() * 31;
            String actionLabel = getActionLabel();
            return getDuration().hashCode() + tg.c((iHashCode + (actionLabel != null ? actionLabel.hashCode() : 0)) * 31, 31, getWithDismissAction());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.SnackbarHostState$showSnackbar$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.SnackbarHostState", f = "SnackbarHost.kt", l = {428, 431}, m = "showSnackbar")
    public static final class AnonymousClass2 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SnackbarHostState.this.showSnackbar(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCurrentSnackbarData(SnackbarData snackbarData) {
        this.currentSnackbarData$delegate.setValue(snackbarData);
    }

    public static /* synthetic */ Object showSnackbar$default(SnackbarHostState snackbarHostState, String str, String str2, boolean z, SnackbarDuration snackbarDuration, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        String str3 = str2;
        if ((i & 4) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i & 8) != 0) {
            snackbarDuration = str3 == null ? SnackbarDuration.Short : SnackbarDuration.Indefinite;
        }
        return snackbarHostState.showSnackbar(str, str3, z2, snackbarDuration, e02Var);
    }

    public final SnackbarData getCurrentSnackbarData() {
        return (SnackbarData) this.currentSnackbarData$delegate.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object showSnackbar(SnackbarVisuals snackbarVisuals, e02<? super SnackbarResult> e02Var) {
        AnonymousClass2 anonymousClass2;
        yg5 yg5Var;
        SnackbarVisuals snackbarVisuals2;
        Throwable th;
        yg5 yg5Var2;
        if (e02Var instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) e02Var;
            int i = anonymousClass2.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(e02Var);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(e02Var);
        }
        Object obj = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass2.label;
        try {
            try {
                if (i2 == 0) {
                    r57.b(obj);
                    yg5Var = this.mutex;
                    anonymousClass2.L$0 = snackbarVisuals;
                    anonymousClass2.L$1 = yg5Var;
                    anonymousClass2.label = 1;
                    if (yg5Var.lock(null, anonymousClass2) != a32Var) {
                    }
                    snackbarVisuals2 = snackbarVisuals;
                    return a32Var;
                }
                if (i2 != 1) {
                    if (i2 != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    yg5Var2 = (yg5) anonymousClass2.L$1;
                    try {
                        r57.b(obj);
                        setCurrentSnackbarData(null);
                        yg5Var2.unlock(null);
                        return obj;
                    } catch (Throwable th2) {
                        th = th2;
                        setCurrentSnackbarData(null);
                        throw th;
                    }
                }
                yg5 yg5Var3 = (yg5) anonymousClass2.L$1;
                SnackbarVisuals snackbarVisuals3 = (SnackbarVisuals) anonymousClass2.L$0;
                r57.b(obj);
                yg5Var = yg5Var3;
                snackbarVisuals2 = snackbarVisuals3;
                snackbarVisuals2 = snackbarVisuals;
                anonymousClass2.L$0 = snackbarVisuals2;
                anonymousClass2.L$1 = yg5Var;
                anonymousClass2.L$2 = anonymousClass2;
                anonymousClass2.label = 2;
                c31 c31Var = new c31(1, zya.b(anonymousClass2));
                c31Var.u();
                setCurrentSnackbarData(new SnackbarDataImpl(snackbarVisuals2, c31Var));
                Object objS = c31Var.s();
                if (objS != a32Var) {
                    yg5 yg5Var4 = yg5Var;
                    obj = objS;
                    yg5Var2 = yg5Var4;
                    setCurrentSnackbarData(null);
                    yg5Var2.unlock(null);
                    return obj;
                }
                snackbarVisuals2 = snackbarVisuals;
                return a32Var;
            } catch (Throwable th3) {
                th = th3;
                setCurrentSnackbarData(null);
                throw th;
            }
        } catch (Throwable th4) {
            snackbarVisuals.unlock(null);
            throw th4;
        }
    }

    public final Object showSnackbar(String str, String str2, boolean z, SnackbarDuration snackbarDuration, e02<? super SnackbarResult> e02Var) {
        return showSnackbar(new SnackbarVisualsImpl(str, str2, z, snackbarDuration), e02Var);
    }
}

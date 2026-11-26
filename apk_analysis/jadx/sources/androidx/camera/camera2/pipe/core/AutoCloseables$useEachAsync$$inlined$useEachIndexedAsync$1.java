package androidx.camera.camera2.pipe.core;

import androidx.appcompat.app.AppCompatDelegate;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.h;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.core.AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1", f = "AutoCloseables.kt", l = {103, 107}, m = "invokeSuspend", v = 1)
public final class AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
    final /* synthetic */ dm3 $action$inlined;
    final /* synthetic */ AutoCloseable $closeable;
    final /* synthetic */ int $i;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.core.AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1$1, reason: invalid class name */
    @bd2(c = "androidx.camera.camera2.pipe.core.AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1$1", f = "AutoCloseables.kt", l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super R>, Object> {
        final /* synthetic */ dm3 $action$inlined;
        final /* synthetic */ int $i;
        final /* synthetic */ AutoCloseable $it;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, AutoCloseable autoCloseable, e02 e02Var, dm3 dm3Var) {
            super(2, e02Var);
            this.$i = i;
            this.$it = autoCloseable;
            this.$action$inlined = dm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$i, this.$it, e02Var, this.$action$inlined);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            y22 y22Var = (y22) this.L$0;
            AutoCloseable autoCloseable = this.$it;
            dm3 dm3Var = this.$action$inlined;
            this.label = 1;
            Object objInvoke = dm3Var.invoke(y22Var, autoCloseable, this);
            return objInvoke == a32Var ? a32Var : objInvoke;
        }

        public final Object invokeSuspend$$forInline(Object obj) {
            return this.$action$inlined.invoke((y22) this.L$0, this.$it, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1(AutoCloseable autoCloseable, int i, e02 e02Var, dm3 dm3Var) {
        super(2, e02Var);
        this.$closeable = autoCloseable;
        this.$i = i;
        this.$action$inlined = dm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1(this.$closeable, this.$i, e02Var, this.$action$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
        return ((AutoCloseables$useEachAsync$$inlined$useEachIndexedAsync$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        AutoCloseable autoCloseable;
        int i;
        AutoCloseable autoCloseable2;
        Throwable th;
        AutoCloseable autoCloseable3;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 != 0) {
            if (i2 == 1) {
                i = this.I$0;
                autoCloseable2 = (AutoCloseable) this.L$1;
                AutoCloseable autoCloseable4 = (AutoCloseable) this.L$0;
                try {
                    r57.b(obj);
                    autoCloseable = autoCloseable4;
                } catch (Throwable th2) {
                    th = th2;
                    autoCloseable3 = autoCloseable4;
                }
            } else {
                if (i2 != 2) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable3 = (AutoCloseable) this.L$0;
                try {
                    r57.b(obj);
                    aq5.c(autoCloseable3, null);
                    return obj;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            try {
                throw th;
            } catch (Throwable th4) {
                aq5.c(autoCloseable3, th);
                throw th4;
            }
        }
        r57.b(obj);
        autoCloseable = this.$closeable;
        i = this.$i;
        try {
            this.L$0 = autoCloseable;
            this.L$1 = autoCloseable;
            this.I$0 = i;
            this.label = 1;
            if (h.g(this) != a32Var) {
                autoCloseable2 = autoCloseable;
            }
            return a32Var;
        } catch (Throwable th5) {
            AutoCloseable autoCloseable5 = autoCloseable;
            th = th5;
            autoCloseable3 = autoCloseable5;
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(i, autoCloseable2, null, this.$action$inlined);
        this.L$0 = autoCloseable;
        this.L$1 = null;
        this.label = 2;
        Object objC = z22.c(anonymousClass1, this);
        if (objC != a32Var) {
            AutoCloseable autoCloseable6 = autoCloseable;
            obj = objC;
            autoCloseable3 = autoCloseable6;
            aq5.c(autoCloseable3, null);
            return obj;
        }
        return a32Var;
    }

    public final Object invokeSuspend$$forInline(Object obj) throws Exception {
        AutoCloseable autoCloseable = this.$closeable;
        int i = this.$i;
        try {
            h.g(this);
            Object objC = z22.c(new AnonymousClass1(i, autoCloseable, null, this.$action$inlined), this);
            aq5.c(autoCloseable, null);
            return objC;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(autoCloseable, th);
                throw th2;
            }
        }
    }
}

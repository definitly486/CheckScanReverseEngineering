package androidx.camera.camera2.pipe.core;

import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.h;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.core.AutoCloseables$useEachIndexedAsync$deferred$1", f = "AutoCloseables.kt", l = {103, 107}, m = "invokeSuspend", v = 1)
public final class AutoCloseables$useEachIndexedAsync$deferred$1<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
    final /* synthetic */ fm3<y22, Integer, T, e02<? super R>, Object> $action;

    /* JADX INFO: Incorrect field signature: TT; */
    final /* synthetic */ AutoCloseable $closeable;
    final /* synthetic */ int $i;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect types in method signature: (TT;Lfm3<-Ly22;-Ljava/lang/Integer;-TT;-Le02<-TR;>;+Ljava/lang/Object;>;ILe02<-Landroidx/camera/camera2/pipe/core/AutoCloseables$useEachIndexedAsync$deferred$1;>;)V */
    public AutoCloseables$useEachIndexedAsync$deferred$1(AutoCloseable autoCloseable, fm3 fm3Var, int i, e02 e02Var) {
        super(2, e02Var);
        this.$closeable = autoCloseable;
        this.$action = fm3Var;
        this.$i = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AutoCloseables$useEachIndexedAsync$deferred$1(this.$closeable, this.$action, this.$i, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
        return ((AutoCloseables$useEachIndexedAsync$deferred$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        AutoCloseable autoCloseable;
        fm3 fm3Var;
        int i;
        AutoCloseable autoCloseable2;
        Throwable th;
        AutoCloseable autoCloseable3;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 != 0) {
            if (i2 == 1) {
                i = this.I$0;
                autoCloseable2 = (AutoCloseable) this.L$2;
                fm3Var = (fm3) this.L$1;
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
        fm3Var = this.$action;
        i = this.$i;
        try {
            this.L$0 = autoCloseable;
            this.L$1 = fm3Var;
            this.L$2 = autoCloseable;
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
        AutoCloseables$useEachIndexedAsync$deferred$1$1$1 autoCloseables$useEachIndexedAsync$deferred$1$1$1 = new AutoCloseables$useEachIndexedAsync$deferred$1$1$1(fm3Var, i, autoCloseable2, null);
        this.L$0 = autoCloseable;
        this.L$1 = null;
        this.L$2 = null;
        this.label = 2;
        Object objC = z22.c(autoCloseables$useEachIndexedAsync$deferred$1$1$1, this);
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
        try {
            h.g(null);
            throw null;
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

package com.warefly.checkscan.core.ui.base.architecture;

import android.util.Log;
import com.warefly.checkscan.component.logger.CrashlyticsException;
import com.warefly.checkscan.core.ui.base.architecture.BaseView;
import defpackage.a32;
import defpackage.b0;
import defpackage.bd2;
import defpackage.be0;
import defpackage.cp2;
import defpackage.de3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fu1;
import defpackage.h6;
import defpackage.hd3;
import defpackage.hu3;
import defpackage.i13;
import defpackage.id3;
import defpackage.ih5;
import defpackage.j59;
import defpackage.jd8;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.me0;
import defpackage.mz7;
import defpackage.n1;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.px;
import defpackage.qb4;
import defpackage.qo2;
import defpackage.qp1;
import defpackage.r57;
import defpackage.rm9;
import defpackage.rx1;
import defpackage.s0;
import defpackage.s22;
import defpackage.uy0;
import defpackage.uy4;
import defpackage.y22;
import defpackage.yd0;
import defpackage.z22;
import defpackage.zd0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BasePresenter<V extends BaseView> extends ih5<V> {
    private final o22 coroutineContext;
    private final o22 globalContext;
    private final y22 globalScope;
    private final y22 presenterScope;
    private cp2 requestInProgress;
    private final fu1 compositeDisposable = new fu1();
    private final HashMap<String, cp2> taggedDisposablesOnDestroy = new HashMap<>();
    private final HashMap<String, cp2> taggedDisposablesOnTermination = new HashMap<>();
    private final List<mb4> jobs = new ArrayList();
    private final HashMap<String, mb4> taggedJobs = new HashMap<>();
    private final List<mb4> terminationJobs = new ArrayList();
    private final HashMap<String, mb4> terminationTaggedJobs = new HashMap<>();

    /* JADX INFO: Add missing generic type declarations: [T] */
    @bd2(c = "com.warefly.checkscan.core.ui.base.architecture.BasePresenter$launchInPresenter$1", f = "BasePresenter.kt", l = {}, m = "invokeSuspend")
    public static final class a<T> extends pg8 implements dm3<id3<? super T>, Throwable, e02<? super j59>, Object> {
        @Override // defpackage.dm3
        public final Object invoke(Object obj, Throwable th, e02<? super j59> e02Var) {
            return new a(3, e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            r57.b(obj);
            return j59.a;
        }
    }

    public static final class b extends b0 implements s22 {
        public b() {
            super(s22.a.b);
        }

        @Override // defpackage.s22
        public final void handleException(o22 o22Var, Throwable th) {
            s0.d(new CrashlyticsException.BaseFragment("Base Fragment: ".concat(me0.c(BasePresenter.this.getClass().getName(), ", ", i13.a(th)))));
            Log.e("BasePresenterError", String.valueOf(th.getMessage()), th);
        }
    }

    public BasePresenter() {
        jd8 jd8VarB = rm9.b();
        oi2 oi2Var = qo2.a;
        hu3 hu3Var = uy4.a;
        o22 o22VarPlus = o22.a.C0306a.d(jd8VarB, hu3Var).plus(new b());
        this.coroutineContext = o22VarPlus;
        this.presenterScope = z22.a(o22VarPlus);
        o22 o22VarD = o22.a.C0306a.d(rm9.b(), hu3Var);
        this.globalContext = o22VarD;
        this.globalScope = z22.a(o22VarD);
    }

    public static /* synthetic */ void disposeOnDestroy$default(BasePresenter basePresenter, cp2 cp2Var, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: disposeOnDestroy");
            return;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        basePresenter.disposeOnDestroy(cp2Var, str);
    }

    public static /* synthetic */ void disposeOnTermination$default(BasePresenter basePresenter, cp2 cp2Var, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: disposeOnTermination");
            return;
        }
        if ((i & 1) != 0) {
            str = null;
        }
        basePresenter.disposeOnTermination(cp2Var, str);
    }

    public final void disposeOnDestroy(cp2 cp2Var, String str) {
        cp2Var.getClass();
        if (str == null) {
            this.compositeDisposable.b(cp2Var);
            return;
        }
        synchronized (cp2Var) {
            try {
                cp2 cp2Var2 = this.taggedDisposablesOnDestroy.get(str);
                if (cp2Var2 != null) {
                    if (cp2Var2.isDisposed()) {
                        cp2Var2 = null;
                    }
                    if (cp2Var2 != null) {
                        cp2Var2.dispose();
                    }
                }
                this.taggedDisposablesOnDestroy.put(str, cp2Var);
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void disposeOnTermination(cp2 cp2Var, String str) {
        cp2Var.getClass();
        if (str != null) {
            synchronized (cp2Var) {
                try {
                    cp2 cp2Var2 = this.taggedDisposablesOnTermination.get(str);
                    if (cp2Var2 != null) {
                        if (cp2Var2.isDisposed()) {
                            cp2Var2 = null;
                        }
                        if (cp2Var2 != null) {
                            cp2Var2.dispose();
                        }
                    }
                    this.taggedDisposablesOnTermination.put(str, cp2Var);
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public y22 getGlobalScope() {
        return this.globalScope;
    }

    public y22 getPresenterScope() {
        return this.presenterScope;
    }

    public final boolean isRequestInProgress() {
        cp2 cp2Var = this.requestInProgress;
        return (cp2Var == null || cp2Var.isDisposed()) ? false : true;
    }

    public final <T> mb4 launchInGlobal(hd3<? extends T> hd3Var) {
        hd3Var.getClass();
        return px.h(hd3Var, getGlobalScope());
    }

    public final <T> mb4 launchInPresenter(hd3<? extends T> hd3Var) {
        hd3Var.getClass();
        return px.h(new de3(hd3Var, new a(3, null)), getPresenterScope());
    }

    @Override // defpackage.ih5
    public void onDestroy() {
        this.compositeDisposable.dispose();
        Iterator<Map.Entry<String, cp2>> it = this.taggedDisposablesOnDestroy.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().dispose();
        }
        Iterator<T> it2 = this.jobs.iterator();
        while (it2.hasNext()) {
            ((mb4) it2.next()).cancel(null);
        }
        Collection<mb4> collectionValues = this.taggedJobs.values();
        collectionValues.getClass();
        for (mb4 mb4Var : collectionValues) {
            mb4Var.getClass();
            mb4Var.cancel(null);
        }
        qb4.d(this.coroutineContext);
    }

    public final cp2 subscribeIfPayloadIsFree(qp1 qp1Var, final ll3<j59> ll3Var, nl3<? super Throwable, j59> nl3Var) {
        qp1Var.getClass();
        ll3Var.getClass();
        nl3Var.getClass();
        if (isRequestInProgress()) {
            return null;
        }
        uy0 uy0Var = new uy0(new be0(nl3Var, 0), new h6() { // from class: ae0
            @Override // defpackage.h6
            public final void run() {
                ll3Var.invoke();
            }
        });
        qp1Var.b(uy0Var);
        this.requestInProgress = uy0Var;
        return uy0Var;
    }

    public final <T> cp2 subscribeIfPayloadIsFree(mz7<T> mz7Var, nl3<? super T, j59> nl3Var, nl3<? super Throwable, j59> nl3Var2) {
        mz7Var.getClass();
        nl3Var.getClass();
        nl3Var2.getClass();
        if (isRequestInProgress()) {
            return null;
        }
        int i = 0;
        rx1 rx1VarG = mz7Var.g(new yd0(nl3Var, i), new zd0(nl3Var2, i));
        this.requestInProgress = rx1VarG;
        return rx1VarG;
    }
}

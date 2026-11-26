package androidx.lifecycle;

import defpackage.a32;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.eh0;
import defpackage.gx2;
import defpackage.j59;
import defpackage.jd8;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.r57;
import defpackage.uy4;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public final class CoroutineLiveData<T> extends MediatorLiveData<T> {
    private BlockRunner<T> blockRunner;
    private EmittedSource emittedSource;

    public CoroutineLiveData(o22 o22Var, long j, bm3<? super LiveDataScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        o22Var.getClass();
        bm3Var.getClass();
        jd8 jd8Var = new jd8((mb4) o22Var.get(mb4.a.b));
        oi2 oi2Var = qo2.a;
        this.blockRunner = new BlockRunner<>(this, bm3Var, j, z22.a(uy4.a.k0().plus(o22Var).plus(jd8Var)), new eh0(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(CoroutineLiveData coroutineLiveData) {
        coroutineLiveData.blockRunner = null;
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object clearSource$lifecycle_livedata(e02<? super j59> e02Var) {
        CoroutineLiveData$clearSource$1 coroutineLiveData$clearSource$1;
        if (e02Var instanceof CoroutineLiveData$clearSource$1) {
            coroutineLiveData$clearSource$1 = (CoroutineLiveData$clearSource$1) e02Var;
            int i = coroutineLiveData$clearSource$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                coroutineLiveData$clearSource$1.label = i - Integer.MIN_VALUE;
            } else {
                coroutineLiveData$clearSource$1 = new CoroutineLiveData$clearSource$1(this, e02Var);
            }
        } else {
            coroutineLiveData$clearSource$1 = new CoroutineLiveData$clearSource$1(this, e02Var);
        }
        Object obj = coroutineLiveData$clearSource$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = coroutineLiveData$clearSource$1.label;
        if (i2 == 0) {
            r57.b(obj);
            EmittedSource emittedSource = this.emittedSource;
            if (emittedSource != null) {
                coroutineLiveData$clearSource$1.label = 1;
                if (emittedSource.disposeNow(coroutineLiveData$clearSource$1) == a32Var) {
                    return a32Var;
                }
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.emittedSource = null;
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        if (r8 == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emitSource$lifecycle_livedata(androidx.lifecycle.LiveData<T> r7, defpackage.e02<? super defpackage.hp2> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.lifecycle.CoroutineLiveData$emitSource$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.lifecycle.CoroutineLiveData$emitSource$1 r0 = (androidx.lifecycle.CoroutineLiveData$emitSource$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.lifecycle.CoroutineLiveData$emitSource$1 r0 = new androidx.lifecycle.CoroutineLiveData$emitSource$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L39
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            defpackage.r57.b(r8)
            goto L52
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r6)
            return r3
        L31:
            java.lang.Object r7 = r0.L$0
            androidx.lifecycle.LiveData r7 = (androidx.lifecycle.LiveData) r7
            defpackage.r57.b(r8)
            goto L47
        L39:
            defpackage.r57.b(r8)
            r0.L$0 = r7
            r0.label = r5
            java.lang.Object r8 = r6.clearSource$lifecycle_livedata(r0)
            if (r8 != r1) goto L47
            goto L51
        L47:
            r0.L$0 = r3
            r0.label = r4
            java.lang.Object r8 = androidx.lifecycle.CoroutineLiveDataKt.addDisposableSource(r6, r7, r0)
            if (r8 != r1) goto L52
        L51:
            return r1
        L52:
            androidx.lifecycle.EmittedSource r8 = (androidx.lifecycle.EmittedSource) r8
            r6.emittedSource = r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.CoroutineLiveData.emitSource$lifecycle_livedata(androidx.lifecycle.LiveData, e02):java.lang.Object");
    }

    @Override // androidx.lifecycle.MediatorLiveData, androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        BlockRunner<T> blockRunner = this.blockRunner;
        if (blockRunner != null) {
            blockRunner.maybeRun();
        }
    }

    @Override // androidx.lifecycle.MediatorLiveData, androidx.lifecycle.LiveData
    public void onInactive() {
        super.onInactive();
        BlockRunner<T> blockRunner = this.blockRunner;
        if (blockRunner != null) {
            blockRunner.cancel();
        }
    }

    public /* synthetic */ CoroutineLiveData(o22 o22Var, long j, bm3 bm3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? gx2.b : o22Var, (i & 2) != 0 ? 5000L : j, bm3Var);
    }
}

package androidx.core.os;

import android.content.Context;
import android.os.ProfilingManager;
import android.os.ProfilingResult;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.s0;
import defpackage.sg6;
import defpackage.ug6;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class Profiling {
    private static final String KEY_BUFFER_FILL_POLICY = "KEY_BUFFER_FILL_POLICY";
    private static final String KEY_DURATION_MS = "KEY_DURATION_MS";
    private static final String KEY_FREQUENCY_HZ = "KEY_FREQUENCY_HZ";
    private static final String KEY_SAMPLING_INTERVAL_BYTES = "KEY_SAMPLING_INTERVAL_BYTES";
    private static final String KEY_SIZE_KB = "KEY_SIZE_KB";
    private static final String KEY_TRACK_JAVA_ALLOCATIONS = "KEY_TRACK_JAVA_ALLOCATIONS";
    private static final int VALUE_BUFFER_FILL_POLICY_DISCARD = 1;
    private static final int VALUE_BUFFER_FILL_POLICY_RING_BUFFER = 2;

    /* JADX INFO: renamed from: androidx.core.os.Profiling$registerForAllProfilingResults$1, reason: invalid class name */
    @bd2(c = "androidx.core.os.Profiling$registerForAllProfilingResults$1", f = "Profiling.kt", l = {79}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super ProfilingResult>, e02<? super j59>, Object> {
        final /* synthetic */ Context $context;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$context = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0(ug6 ug6Var, ProfilingResult profilingResult) {
            profilingResult.getClass();
            ug6Var.mo0trySendJP2dKIU(profilingResult);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$2(ProfilingManager profilingManager, Consumer consumer) {
            profilingManager.unregisterForAllProfilingResults(consumer);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$context, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super ProfilingResult> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.os.a, java.util.function.Consumer] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final ?? r1 = new Consumer() { // from class: androidx.core.os.a
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj2) {
                        Profiling.AnonymousClass1.invokeSuspend$lambda$0(ug6Var, (ProfilingResult) obj2);
                    }
                };
                final ProfilingManager profilingManagerA = n2.a(this.$context.getSystemService(m2.b()));
                profilingManagerA.registerForAllProfilingResults(new b(), (Consumer) r1);
                ll3 ll3Var = new ll3() { // from class: androidx.core.os.c
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return Profiling.AnonymousClass1.invokeSuspend$lambda$2(profilingManagerA, r1);
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

    public static final void registerForAllProfilingResults(Context context, Executor executor, Consumer<ProfilingResult> consumer) {
        context.getClass();
        executor.getClass();
        consumer.getClass();
        n2.a(context.getSystemService(m2.b())).registerForAllProfilingResults(executor, consumer);
    }

    public static final void requestProfiling(Context context, ProfilingRequest profilingRequest, Executor executor, Consumer<ProfilingResult> consumer) {
        context.getClass();
        profilingRequest.getClass();
        n2.a(context.getSystemService(m2.b())).requestProfiling(profilingRequest.getProfilingType(), profilingRequest.getParams(), profilingRequest.getTag(), profilingRequest.getCancellationSignal(), executor, consumer);
    }

    public static final void unregisterForAllProfilingResults(Context context, Consumer<ProfilingResult> consumer) {
        context.getClass();
        consumer.getClass();
        n2.a(context.getSystemService(m2.b())).unregisterForAllProfilingResults(consumer);
    }

    public static final hd3<ProfilingResult> registerForAllProfilingResults(Context context) {
        context.getClass();
        return s0.a(new AnonymousClass1(context, null));
    }
}

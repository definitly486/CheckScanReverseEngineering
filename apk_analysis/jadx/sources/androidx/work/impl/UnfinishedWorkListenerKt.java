package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkRequest;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.ProcessUtils;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.df3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.ge3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.px;
import defpackage.r57;
import defpackage.ud3;
import defpackage.y22;
import defpackage.yk2;
import defpackage.zd3;

/* JADX INFO: loaded from: classes3.dex */
public final class UnfinishedWorkListenerKt {
    private static final int DELAY_MS = 30000;
    private static final long MAX_DELAY_MS;
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("UnfinishedWorkListener");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
        MAX_DELAY_MS = 3600000L;
    }

    public static final void maybeLaunchUnfinishedWorkListener(y22 y22Var, Context context, Configuration configuration, WorkDatabase workDatabase) {
        y22Var.getClass();
        context.getClass();
        configuration.getClass();
        workDatabase.getClass();
        if (ProcessUtils.isDefaultProcess(context, configuration)) {
            px.h(new df3(zd3.c(ud3.a(new ge3(workDatabase.workSpecDao().hasUnfinishedWorkFlow(), new AnonymousClass1(null)), -1)), new AnonymousClass2(context, null)), y22Var);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2, reason: invalid class name */
    @bd2(c = "androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2", f = "UnfinishedWorkListener.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<Boolean, e02<? super j59>, Object> {
        final /* synthetic */ Context $appContext;
        /* synthetic */ boolean Z$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Context context, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$appContext = context;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$appContext, e02Var);
            anonymousClass2.Z$0 = ((Boolean) obj).booleanValue();
            return anonymousClass2;
        }

        public final Object invoke(boolean z, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(Boolean.valueOf(z), e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            PackageManagerHelper.setComponentEnabled(this.$appContext, RescheduleReceiver.class, this.Z$0);
            return j59.a;
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, e02<? super j59> e02Var) {
            return invoke(bool.booleanValue(), e02Var);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1, reason: invalid class name */
    @bd2(c = "androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1", f = "UnfinishedWorkListener.kt", l = {59}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements fm3<id3<? super Boolean>, Throwable, Long, e02<? super Boolean>, Object> {
        /* synthetic */ long J$0;
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(4, e02Var);
        }

        @Override // defpackage.fm3
        public /* bridge */ /* synthetic */ Object invoke(id3<? super Boolean> id3Var, Throwable th, Long l, e02<? super Boolean> e02Var) {
            return invoke(id3Var, th, l.longValue(), e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Throwable th = (Throwable) this.L$0;
                long j = this.J$0;
                Logger.get().error(UnfinishedWorkListenerKt.TAG, "Cannot check for unfinished work", th);
                long jMin = Math.min(j * WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, UnfinishedWorkListenerKt.MAX_DELAY_MS);
                this.label = 1;
                if (yk2.b(jMin, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return Boolean.TRUE;
        }

        public final Object invoke(id3<? super Boolean> id3Var, Throwable th, long j, e02<? super Boolean> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(e02Var);
            anonymousClass1.L$0 = th;
            anonymousClass1.J$0 = j;
            return anonymousClass1.invokeSuspend(j59.a);
        }
    }
}

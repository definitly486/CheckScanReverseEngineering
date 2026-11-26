package androidx.core.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c31;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.h8;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r07;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import defpackage.zya;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes2.dex */
public final class ContextKt {

    /* JADX INFO: renamed from: androidx.core.content.ContextKt$receiveBroadcasts$1, reason: invalid class name */
    @bd2(c = "androidx.core.content.ContextKt", f = "Context.kt", l = {279}, m = "receiveBroadcasts", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ContextKt.receiveBroadcasts(null, null, 0, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.core.content.ContextKt$receiveBroadcastsAsync$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.core.content.ContextKt", f = "Context.kt", l = {237}, m = "receiveBroadcastsAsync", v = 1)
    public static final class C06571 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C06571(e02<? super C06571> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ContextKt.receiveBroadcastsAsync(null, null, 0, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.core.content.ContextKt$receiveBroadcastsAsync$2, reason: invalid class name */
    @bd2(c = "androidx.core.content.ContextKt$receiveBroadcastsAsync$2", f = "Context.kt", l = {WebmConstants.MkvEbmlElement.BLOCK_ADD_ID}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<?>, Object> {
        final /* synthetic */ String $broadcastPermission;
        final /* synthetic */ IntentFilter $filter;
        final /* synthetic */ int $flags;
        final /* synthetic */ dm3<BroadcastReceiver.PendingResult, Intent, e02<? super j59>, Object> $onReceive;
        final /* synthetic */ Handler $scheduler;
        final /* synthetic */ Context $this_receiveBroadcastsAsync;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Context context, IntentFilter intentFilter, int i, String str, Handler handler, dm3<? super BroadcastReceiver.PendingResult, ? super Intent, ? super e02<? super j59>, ? extends Object> dm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$this_receiveBroadcastsAsync = context;
            this.$filter = intentFilter;
            this.$flags = i;
            this.$broadcastPermission = str;
            this.$scheduler = handler;
            this.$onReceive = dm3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(y22 y22Var, dm3 dm3Var, BroadcastReceiver broadcastReceiver, Intent intent) {
            av0.c(y22Var, null, c32.ATOMIC, new ContextKt$receiveBroadcastsAsync$2$1$1(dm3Var, broadcastReceiver.goAsync(), intent, null), 1);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_receiveBroadcastsAsync, this.$filter, this.$flags, this.$broadcastPermission, this.$scheduler, this.$onReceive, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<?> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final y22 y22Var = (y22) this.L$0;
                Context context = this.$this_receiveBroadcastsAsync;
                IntentFilter intentFilter = this.$filter;
                int i2 = this.$flags;
                String str = this.$broadcastPermission;
                Handler handler = this.$scheduler;
                final dm3<BroadcastReceiver.PendingResult, Intent, e02<? super j59>, Object> dm3Var = this.$onReceive;
                bm3 bm3Var = new bm3() { // from class: androidx.core.content.a
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj2, Object obj3) {
                        return ContextKt.AnonymousClass2.invokeSuspend$lambda$0(y22Var, dm3Var, (BroadcastReceiver) obj2, (Intent) obj3);
                    }
                };
                this.label = 1;
                if (ContextKt.receiveBroadcasts(context, intentFilter, i2, str, handler, bm3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    public static final <T> T getSystemService(Context context) {
        aa4.i();
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0093  */
    /* JADX WARN: Code duplicated, block: B:34:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, androidx.core.content.ContinuationBroadcastReceiver] */
    public static final Object receiveBroadcasts(Context context, IntentFilter intentFilter, int i, String str, Handler handler, bm3<? super BroadcastReceiver, ? super Intent, j59> bm3Var, e02<?> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        r07 r07Var;
        Throwable th;
        Context context2;
        r07 r07Var2;
        T t;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i2 = anonymousClass1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i2 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.label;
        if (i3 == 0) {
            r57.b(obj);
            r07Var = new r07();
            try {
                anonymousClass1.L$0 = context;
                anonymousClass1.L$1 = intentFilter;
                anonymousClass1.L$2 = str;
                anonymousClass1.L$3 = handler;
                anonymousClass1.L$4 = bm3Var;
                anonymousClass1.L$5 = r07Var;
                anonymousClass1.I$0 = i;
                anonymousClass1.label = 1;
                c31 c31Var = new c31(1, zya.b(anonymousClass1));
                c31Var.u();
                ?? continuationBroadcastReceiver = new ContinuationBroadcastReceiver(c31Var, bm3Var);
                r07Var.b = continuationBroadcastReceiver;
                ContextCompat.registerReceiver(context, (BroadcastReceiver) continuationBroadcastReceiver, intentFilter, str, handler, i);
                if (c31Var.s() == a32Var) {
                    return a32Var;
                }
            } catch (Throwable th2) {
                th = th2;
                context2 = context;
                r07Var2 = r07Var;
                t = r07Var2.b;
                if (t != 0) {
                    throw th;
                }
                context2.unregisterReceiver((BroadcastReceiver) t);
                throw th;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r07Var2 = (r07) anonymousClass1.L$5;
            context2 = (Context) anonymousClass1.L$0;
            try {
                r57.b(obj);
                r07Var = r07Var2;
                context = context2;
            } catch (Throwable th3) {
                th = th3;
                t = r07Var2.b;
                if (t != 0) {
                    throw th;
                }
                context2.unregisterReceiver((BroadcastReceiver) t);
                throw th;
            }
        }
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ Object receiveBroadcasts$default(Context context, IntentFilter intentFilter, int i, String str, Handler handler, bm3 bm3Var, e02 e02Var, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str = null;
        }
        if ((i2 & 8) != 0) {
            handler = null;
        }
        return receiveBroadcasts(context, intentFilter, i, str, handler, bm3Var, e02Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object receiveBroadcastsAsync(Context context, IntentFilter intentFilter, int i, String str, Handler handler, dm3<? super BroadcastReceiver.PendingResult, ? super Intent, ? super e02<? super j59>, ? extends Object> dm3Var, e02<?> e02Var) {
        C06571 c06571;
        if (e02Var instanceof C06571) {
            c06571 = (C06571) e02Var;
            int i2 = c06571.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c06571.label = i2 - Integer.MIN_VALUE;
            } else {
                c06571 = new C06571(e02Var);
            }
        } else {
            c06571 = new C06571(e02Var);
        }
        Object obj = c06571.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = c06571.label;
        if (i3 == 0) {
            r57.b(obj);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(context, intentFilter, i, str, handler, dm3Var, null);
            c06571.label = 1;
            if (z22.c(anonymousClass2, c06571) == a32Var) {
                return a32Var;
            }
        } else {
            if (i3 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        h8.d();
        return null;
    }

    public static /* synthetic */ Object receiveBroadcastsAsync$default(Context context, IntentFilter intentFilter, int i, String str, Handler handler, dm3 dm3Var, e02 e02Var, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            str = null;
        }
        if ((i2 & 8) != 0) {
            handler = null;
        }
        return receiveBroadcastsAsync(context, intentFilter, i, str, handler, dm3Var, e02Var);
    }

    public static final void withStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, nl3<? super TypedArray, j59> nl3Var) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        nl3Var.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static /* synthetic */ void withStyledAttributes$default(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            attributeSet = null;
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        nl3Var.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static final void withStyledAttributes(Context context, int i, int[] iArr, nl3<? super TypedArray, j59> nl3Var) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, iArr);
        nl3Var.invoke(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }
}

package androidx.compose.foundation;

import android.view.Surface;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.dm3;
import defpackage.e02;
import defpackage.gm3;
import defpackage.j59;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qb4;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
abstract class BaseAndroidExternalSurfaceState implements AndroidExternalSurfaceScope, SurfaceScope {
    private mb4 job;
    private gm3<? super SurfaceCoroutineScope, ? super Surface, ? super Integer, ? super Integer, ? super e02<? super j59>, ? extends Object> onSurface;
    private dm3<? super Surface, ? super Integer, ? super Integer, j59> onSurfaceChanged;
    private nl3<? super Surface, j59> onSurfaceDestroyed;
    private final y22 scope;

    /* JADX INFO: renamed from: androidx.compose.foundation.BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1", f = "AndroidExternalSurface.android.kt", l = {TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 136}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ int $height;
        final /* synthetic */ Surface $surface;
        final /* synthetic */ int $width;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Surface surface, int i, int i2, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$surface = surface;
            this.$width = i;
            this.$height = i2;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = BaseAndroidExternalSurfaceState.this.new AnonymousClass1(this.$surface, this.$width, this.$height, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
        
            if (r4.invoke(r5, r6, r7, r8, r10) == r0) goto L19;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            y22 y22Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    y22Var = (y22) this.L$0;
                    r57.b(obj);
                } else {
                    if (i != 2) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                return j59.a;
            }
            r57.b(obj);
            y22Var = (y22) this.L$0;
            mb4 mb4Var = BaseAndroidExternalSurfaceState.this.job;
            if (mb4Var != null) {
                this.L$0 = y22Var;
                this.label = 1;
                if (qb4.c(mb4Var, this) != a32Var) {
                }
                return a32Var;
            }
            BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1$receiver$1 baseAndroidExternalSurfaceState$dispatchSurfaceCreated$1$receiver$1 = new BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1$receiver$1(BaseAndroidExternalSurfaceState.this, y22Var);
            gm3 gm3Var = BaseAndroidExternalSurfaceState.this.onSurface;
            if (gm3Var != null) {
                Surface surface = this.$surface;
                Integer num = new Integer(this.$width);
                Integer num2 = new Integer(this.$height);
                this.L$0 = null;
                this.label = 2;
            }
            return j59.a;
        }
    }

    public BaseAndroidExternalSurfaceState(y22 y22Var) {
        this.scope = y22Var;
    }

    public final void dispatchSurfaceChanged(Surface surface, int i, int i2) {
        dm3<? super Surface, ? super Integer, ? super Integer, j59> dm3Var = this.onSurfaceChanged;
        if (dm3Var != null) {
            dm3Var.invoke(surface, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public final void dispatchSurfaceCreated(Surface surface, int i, int i2) {
        if (this.onSurface != null) {
            this.job = av0.c(this.scope, null, c32.UNDISPATCHED, new AnonymousClass1(surface, i, i2, null), 1);
        }
    }

    public final void dispatchSurfaceDestroyed(Surface surface) {
        nl3<? super Surface, j59> nl3Var = this.onSurfaceDestroyed;
        if (nl3Var != null) {
            nl3Var.invoke(surface);
        }
        mb4 mb4Var = this.job;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
    }

    public final y22 getScope() {
        return this.scope;
    }

    @Override // androidx.compose.foundation.SurfaceScope
    public void onChanged(Surface surface, dm3<? super Surface, ? super Integer, ? super Integer, j59> dm3Var) {
        this.onSurfaceChanged = dm3Var;
    }

    @Override // androidx.compose.foundation.SurfaceScope
    public void onDestroyed(Surface surface, nl3<? super Surface, j59> nl3Var) {
        this.onSurfaceDestroyed = nl3Var;
    }

    @Override // androidx.compose.foundation.AndroidExternalSurfaceScope
    public void onSurface(gm3<? super SurfaceCoroutineScope, ? super Surface, ? super Integer, ? super Integer, ? super e02<? super j59>, ? extends Object> gm3Var) {
        this.onSurface = gm3Var;
    }
}

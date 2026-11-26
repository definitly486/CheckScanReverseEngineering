package androidx.compose.foundation;

import android.view.Surface;
import androidx.media3.extractor.ts.TsExtractor;
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
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r10.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1f
                if (r1 == r4) goto L17
                if (r1 != r3) goto L11
                defpackage.r57.b(r11)
                goto L65
            L11:
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r10)
                return r2
            L17:
                java.lang.Object r1 = r10.L$0
                y22 r1 = (defpackage.y22) r1
                defpackage.r57.b(r11)
                goto L3a
            L1f:
                defpackage.r57.b(r11)
                java.lang.Object r11 = r10.L$0
                r1 = r11
                y22 r1 = (defpackage.y22) r1
                androidx.compose.foundation.BaseAndroidExternalSurfaceState r11 = androidx.compose.foundation.BaseAndroidExternalSurfaceState.this
                mb4 r11 = androidx.compose.foundation.BaseAndroidExternalSurfaceState.access$getJob$p(r11)
                if (r11 == 0) goto L3a
                r10.L$0 = r1
                r10.label = r4
                java.lang.Object r11 = defpackage.qb4.c(r11, r10)
                if (r11 != r0) goto L3a
                goto L64
            L3a:
                androidx.compose.foundation.BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1$receiver$1 r5 = new androidx.compose.foundation.BaseAndroidExternalSurfaceState$dispatchSurfaceCreated$1$receiver$1
                androidx.compose.foundation.BaseAndroidExternalSurfaceState r11 = androidx.compose.foundation.BaseAndroidExternalSurfaceState.this
                r5.<init>(r11, r1)
                androidx.compose.foundation.BaseAndroidExternalSurfaceState r11 = androidx.compose.foundation.BaseAndroidExternalSurfaceState.this
                gm3 r4 = androidx.compose.foundation.BaseAndroidExternalSurfaceState.access$getOnSurface$p(r11)
                if (r4 == 0) goto L65
                android.view.Surface r6 = r10.$surface
                int r11 = r10.$width
                java.lang.Integer r7 = new java.lang.Integer
                r7.<init>(r11)
                int r11 = r10.$height
                java.lang.Integer r8 = new java.lang.Integer
                r8.<init>(r11)
                r10.L$0 = r2
                r10.label = r3
                r9 = r10
                java.lang.Object r10 = r4.invoke(r5, r6, r7, r8, r9)
                if (r10 != r0) goto L65
            L64:
                return r0
            L65:
                j59 r10 = defpackage.j59.a
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.BaseAndroidExternalSurfaceState.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
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

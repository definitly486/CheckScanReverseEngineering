package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.core.impl.DeferrableSurface;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseSurfaceManager$setupAsync$1$4", f = "UseCaseSurfaceManager.kt", l = {}, m = "invokeSuspend", v = 1)
public final class UseCaseSurfaceManager$setupAsync$1$4 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ DeferrableSurface.SurfaceClosedException $e;
    final /* synthetic */ SessionConfigAdapter $sessionConfigAdapter;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseSurfaceManager$setupAsync$1$4(SessionConfigAdapter sessionConfigAdapter, DeferrableSurface.SurfaceClosedException surfaceClosedException, e02<? super UseCaseSurfaceManager$setupAsync$1$4> e02Var) {
        super(2, e02Var);
        this.$sessionConfigAdapter = sessionConfigAdapter;
        this.$e = surfaceClosedException;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new UseCaseSurfaceManager$setupAsync$1$4(this.$sessionConfigAdapter, this.$e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((UseCaseSurfaceManager$setupAsync$1$4) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        SessionConfigAdapter sessionConfigAdapter = this.$sessionConfigAdapter;
        DeferrableSurface deferrableSurface = this.$e.getDeferrableSurface();
        deferrableSurface.getClass();
        sessionConfigAdapter.reportSurfaceInvalid(deferrableSurface);
        return j59.a;
    }
}

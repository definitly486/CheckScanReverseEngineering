package defpackage;

import android.net.Uri;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.scanner.presentation.crop.PickGalleryPictureToCropBehavior$resolvePictureToCrop$2", f = "PickGalleryPictureToCropBehavior.kt", l = {}, m = "invokeSuspend")
public final class k86 extends pg8 implements dm3<id3<? super Uri>, Throwable, e02<? super j59>, Object> {
    public final /* synthetic */ g86 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k86(g86 g86Var, e02<? super k86> e02Var) {
        super(3, e02Var);
        this.l = g86Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<? super Uri> id3Var, Throwable th, e02<? super j59> e02Var) {
        return new k86(this.l, e02Var).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        this.l.e.onCropError();
        return j59.a;
    }
}

package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.AudioRestrictionMode;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl$updateListenersMode$1", f = "AudioRestrictionController.kt", l = {}, m = "invokeSuspend", v = 1)
public final class AudioRestrictionControllerImpl$updateListenersMode$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ AudioRestrictionMode $mode;
    int label;
    final /* synthetic */ AudioRestrictionControllerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioRestrictionControllerImpl$updateListenersMode$1(AudioRestrictionControllerImpl audioRestrictionControllerImpl, AudioRestrictionMode audioRestrictionMode, e02<? super AudioRestrictionControllerImpl$updateListenersMode$1> e02Var) {
        super(2, e02Var);
        this.this$0 = audioRestrictionControllerImpl;
        this.$mode = audioRestrictionMode;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new AudioRestrictionControllerImpl$updateListenersMode$1(this.this$0, this.$mode, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((AudioRestrictionControllerImpl$updateListenersMode$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        Iterator it = this.this$0.activeListeners.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((AudioRestrictionController.Listener) it.next()).mo735onCameraAudioRestrictionUpdatedLwUUkyU(this.$mode.m145unboximpl());
        }
        return j59.a;
    }
}

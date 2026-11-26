package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.core.CameraIdentifier;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.adapter.PipeCameraPresenceSource$fetchData$1$1", f = "PipeCameraPresenceSource.kt", l = {}, m = "invokeSuspend", v = 1)
public final class PipeCameraPresenceSource$fetchData$1$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ CallbackToFutureAdapter.Completer<List<CameraIdentifier>> $completer;
    int label;
    final /* synthetic */ PipeCameraPresenceSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PipeCameraPresenceSource$fetchData$1$1(PipeCameraPresenceSource pipeCameraPresenceSource, CallbackToFutureAdapter.Completer<List<CameraIdentifier>> completer, e02<? super PipeCameraPresenceSource$fetchData$1$1> e02Var) {
        super(2, e02Var);
        this.this$0 = pipeCameraPresenceSource;
        this.$completer = completer;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new PipeCameraPresenceSource$fetchData$1$1(this.this$0, this.$completer, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((PipeCameraPresenceSource$fetchData$1$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        CameraIdentifier cameraIdentifierCreate$default;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        try {
            String[] cameraIdList = this.this$0.cameraManager.getCameraIdList();
            cameraIdList.getClass();
            ArrayList arrayList = new ArrayList();
            for (String str : cameraIdList) {
                try {
                    str.getClass();
                    cameraIdentifierCreate$default = CameraIdentifier.Factory.create$default(str, null, null, 6, null);
                } catch (IllegalArgumentException e) {
                    Log.w("PipePresenceSrc", "Could not create CameraIdentifier for system ID: " + str, e);
                    cameraIdentifierCreate$default = null;
                }
                if (cameraIdentifierCreate$default != null) {
                    arrayList.add(cameraIdentifierCreate$default);
                }
            }
            Log.d("PipePresenceSrc", "[FetchData] Refreshed camera list from hardware: " + arrayList);
            this.this$0.updateData(arrayList);
            this.$completer.set(arrayList);
        } catch (Exception e2) {
            Log.e("PipePresenceSrc", "[FetchData] Failed to refresh camera list from hardware.", e2);
            this.this$0.updateError(e2);
            this.$completer.setException(e2);
        }
        return j59.a;
    }
}

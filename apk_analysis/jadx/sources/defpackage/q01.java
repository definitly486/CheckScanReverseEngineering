package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.view.CameraController;
import androidx.room.RxRoom;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q01 implements Function, OnSuccessListener, xl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q01(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ((CameraController) obj2).setLinearZoom(((Float) obj).floatValue());
            default:
                return RxRoom.Companion.createObservable$lambda$5((m75) obj2, obj);
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        InAppMessageStreamManager.lambda$taskToMaybe$28((f75) this.c, obj);
    }
}

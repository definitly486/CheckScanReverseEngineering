package defpackage;

import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import yads.tq3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class vba implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vba(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return tq3.G3((tq3) obj);
            case 1:
                return tq3.n5((tq3) obj);
            case 2:
                return tq3.O6((tq3) obj);
            case 3:
                return tq3.O8((tq3) obj);
            case 4:
                return tq3.Q1((tq3) obj);
            case 5:
                return tq3.p2((tq3) obj);
            default:
                return Camera2CameraMetadata._requestKeys$lambda$0((Camera2CameraMetadata) obj);
        }
    }
}

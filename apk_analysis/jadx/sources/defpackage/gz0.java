package defpackage;

import android.content.Context;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.compose.foundation.ScrollNode;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import yads.gf0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gz0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gz0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Camera2CameraMetadata._physicalRequestKeys$lambda$0((Camera2CameraMetadata) obj);
            case 1:
                return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$2((Context) obj);
            case 2:
                return Float.valueOf(ScrollNode.applySemantics$lambda$1((ScrollNode) obj));
            default:
                return gf0.n((gf0) obj);
        }
    }
}

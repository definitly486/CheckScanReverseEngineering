package defpackage;

import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.core.ImageCapture;
import com.google.common.collect.q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mc3 implements ImageCapture.ScreenFlashListener, q.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ mc3(Object obj) {
        this.b = obj;
    }

    @Override // com.google.common.collect.q.b
    public Object a(Object obj, Object obj2) {
        return ((i95) this.b).apply(obj2);
    }

    @Override // androidx.camera.core.ImageCapture.ScreenFlashListener
    public void onCompleted() {
        FlashControl.applyScreenFlash$lambda$0((yp1) this.b);
    }
}

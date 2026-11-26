package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.core.ImageCapture;
import com.my.tracker.obfuscated.f2;
import com.my.tracker.obfuscated.t2;
import java.util.List;
import yads.ah5;
import yads.t70;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yg implements Function, t70, f2 {
    @Override // com.my.tracker.obfuscated.f2
    public Object a() {
        return t2.d();
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return ImageCapture.lambda$submitStillCaptureRequest$5((List) obj);
    }

    @Override // yads.t70
    public void onInitializationCompleted() {
        ah5.a();
    }
}

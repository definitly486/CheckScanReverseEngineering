package defpackage;

import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.graph.Result3AStateListenerKt;
import androidx.compose.material3.SliderKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l57 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ l57(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(Result3AStateListenerKt.toConditionChecker$lambda$0((Map) obj2, (FrameMetadata) obj));
            default:
                return SliderKt.RangeSliderImpl$lambda$44$lambda$41$lambda$40((String) obj2, (SemanticsPropertyReceiver) obj);
        }
    }
}

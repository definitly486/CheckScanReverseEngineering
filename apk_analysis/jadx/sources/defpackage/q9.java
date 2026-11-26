package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.composer.linkbuffer.SlotTableEditor;
import androidx.compose.runtime.composer.linkbuffer.SlotTableKt;
import com.my.target.c1;
import com.my.target.ib;
import com.my.target.wf;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class q9 implements xl3, Function, SlotTableEditor.VisitSlotsInRememberOrderCallback, c1.a {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((x46) obj2).invoke(obj);
            case 1:
                return (c41) ((he1) obj2).invoke(obj);
            case 2:
                return (List) ((nl3) obj2).invoke(obj);
            default:
                return Long.valueOf(((EncoderImpl) obj2).toPresentationTimeUsByCaptureEncodeRatio(((Long) obj).longValue()));
        }
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 5:
                int i2 = ib.i;
                ((ib) obj).h = e6aVar;
                break;
            default:
                int i3 = wf.z;
                ((wf) obj).x = e6aVar;
                break;
        }
    }

    @Override // androidx.compose.runtime.composer.linkbuffer.SlotTableEditor.VisitSlotsInRememberOrderCallback
    public boolean visit(int i, int i2, Object obj) {
        return SlotTableKt.removeCurrentGroup$lambda$0((RememberManager) this.c, i, i2, obj);
    }
}

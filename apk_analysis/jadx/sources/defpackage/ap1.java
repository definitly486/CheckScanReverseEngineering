package defpackage;

import androidx.camera.camera2.pipe.core.Threads;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.style.StyleOuterNode;
import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.paging.DataSource;
import yads.np3;
import yads.wq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ap1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ap1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$9$0((ContextMenuState) obj);
            case 1:
                return Boolean.valueOf(((DataSource) obj).isInvalid());
            case 2:
                wc6 wc6Var = (wc6) obj;
                wc6Var.a.v.a("Network is available, flushing queued " + wc6Var.b.a + '.');
                wc6Var.flush();
                return j59.a;
            case 3:
                return StyleOuterNode.drawForShape_9zt3ed4$lambda$1((StyleOuterNode) obj);
            case 4:
                return Threads._camera2Executor$lambda$0((ll3) obj);
            case 5:
                return np3.a((np3) obj);
            default:
                return wq0.h((wq0) obj);
        }
    }
}

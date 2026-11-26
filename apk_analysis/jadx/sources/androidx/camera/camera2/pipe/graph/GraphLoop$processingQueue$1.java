package androidx.camera.camera2.pipe.graph;

import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class GraphLoop$processingQueue$1 extends qm3 implements nl3<List<? extends GraphCommand>, j59> {
    public GraphLoop$processingQueue$1(Object obj) {
        super(1, obj, GraphLoop.class, "finalizeUnprocessedCommands", "finalizeUnprocessedCommands(Ljava/util/List;)V", 0);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<? extends GraphCommand> list) {
        list.getClass();
        ((GraphLoop) this.receiver).finalizeUnprocessedCommands(list);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(List<? extends GraphCommand> list) {
        invoke2(list);
        return j59.a;
    }
}

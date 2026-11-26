package androidx.camera.camera2.pipe.graph;

import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.qm3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class GraphLoop$processingQueue$2 extends qm3 implements bm3<List<GraphCommand>, e02<? super j59>, Object> {
    public GraphLoop$processingQueue$2(Object obj) {
        super(2, obj, GraphLoop.class, "process", "process(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(List<GraphCommand> list, e02<? super j59> e02Var) {
        return ((GraphLoop) this.receiver).process(list, e02Var);
    }
}

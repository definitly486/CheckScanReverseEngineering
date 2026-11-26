package yads;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class mi2 extends defpackage.qm3 implements defpackage.bm3 {
    public mi2(RecyclerView recyclerView) {
        super(2, recyclerView, RecyclerView.class, "smoothScrollBy", "smoothScrollBy(II)V", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        ((RecyclerView) this.receiver).smoothScrollBy(((Number) obj).intValue(), ((Number) obj2).intValue());
        return j59.a;
    }
}

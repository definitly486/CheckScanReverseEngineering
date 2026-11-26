package defpackage;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextInclusionStrategy;
import yads.l62;
import yads.l66;
import yads.sa1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mj implements TextInclusionStrategy, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ mj(int i) {
        this.b = i;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 3:
                return l62.b(l.longValue());
            default:
                return sa1.b(l.longValue());
        }
    }

    @Override // androidx.compose.ui.text.TextInclusionStrategy
    public boolean isIncluded(Rect rect, Rect rect2) {
        return TextInclusionStrategy.Companion.ContainsAll$lambda$0(rect, rect2);
    }
}

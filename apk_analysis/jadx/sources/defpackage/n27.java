package defpackage;

import androidx.activity.FullyDrawnReporter;
import androidx.activity.compose.ReportDrawnKt;
import androidx.compose.foundation.style.StyleOuterNode;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.node.TraversableNode;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n27 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ n27(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return ReportDrawnKt.ReportDrawnWhen$lambda$1$0((FullyDrawnReporter) obj3, (ll3) obj2, (DisposableEffectScope) obj);
            default:
                return Boolean.valueOf(StyleOuterNode.resolveInheritedStyle$lambda$1((r07) obj3, (StyleOuterNode) obj2, (TraversableNode) obj));
        }
    }
}

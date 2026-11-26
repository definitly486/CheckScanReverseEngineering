package defpackage;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableDoubleStateImpl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class fh0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ MutableState c;

    public /* synthetic */ fh0(MutableState mutableState, int i) {
        this.b = i;
        this.c = mutableState;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        MutableState mutableState = this.c;
        switch (i) {
            case 0:
                return BasicTextKt.BasicText_CL7eQgs$lambda$5$0(mutableState, (TextAnnotatedStringNode.TextSubstitutionValue) obj);
            default:
                return SnapshotMutableDoubleStateImpl.component2$lambda$0((SnapshotMutableDoubleStateImpl) mutableState, ((Double) obj).doubleValue());
        }
    }
}

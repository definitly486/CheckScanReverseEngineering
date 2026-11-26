package defpackage;

import androidx.compose.foundation.layout.FlowRowOverflowScopeImpl;
import androidx.compose.foundation.text.TextLinkScope;
import yads.gf0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ag3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ag3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(FlowRowOverflowScopeImpl.totalItemCount_delegate$lambda$0((FlowRowOverflowScopeImpl) obj));
            case 1:
                return Boolean.valueOf(TextLinkScope._get_shouldMeasureLinks_$lambda$0((TextLinkScope) obj));
            default:
                return gf0.f((gf0) obj);
        }
    }
}

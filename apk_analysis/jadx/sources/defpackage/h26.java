package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.window.layout.SafeWindowLayoutComponentProvider;
import androidx.work.impl.WorkDatabase_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h26 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h26(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(PagerState.settledPage_delegate$lambda$0((PagerState) obj));
            case 1:
                return Boolean.valueOf(SafeWindowLayoutComponentProvider.isWindowLayoutProviderValid$lambda$0((SafeWindowLayoutComponentProvider) obj));
            default:
                return WorkDatabase_Impl._preferenceDao$lambda$6((WorkDatabase_Impl) obj);
        }
    }
}

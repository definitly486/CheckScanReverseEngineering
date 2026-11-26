package defpackage;

import androidx.navigation.NavDeepLink;
import androidx.work.impl.WorkManagerImpl;
import yads.nq0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ti5 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ti5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return NavDeepLink.fragRegex_delegate$lambda$6((NavDeepLink) obj);
            case 1:
                return ((WorkManagerImpl) obj).lambda$rescheduleEligibleWork$0();
            default:
                return nq0.g((nq0) obj);
        }
    }
}

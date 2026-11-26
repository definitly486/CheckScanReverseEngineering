package defpackage;

import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import java.util.List;
import yads.c62;
import yads.iw4;
import yads.lq;
import yads.t04;
import yads.tt3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ah1 implements xl3, lq, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ah1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.lq
    public List a() {
        return c62.b((List) this.c);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (List) ((nl3) obj2).invoke(obj);
            default:
                return InAppMessageStreamManager.lambda$createFirebaseInAppMessageStream$10((m21) obj2, (Boolean) obj);
        }
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).a((t04) this.c);
    }
}

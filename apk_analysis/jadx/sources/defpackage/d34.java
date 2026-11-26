package defpackage;

import com.google.firebase.inappmessaging.internal.ImpressionStorageClient;
import java.util.HashSet;
import yads.hi6;
import yads.ts3;
import yads.x85;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class d34 implements xl3, x85 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ d34(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // yads.x85
    public void a(hi6 hi6Var) {
        ts3.a((String) this.b, (nl3) this.c, hi6Var);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return ((ImpressionStorageClient) this.b).lambda$clearImpressions$4((HashSet) this.c, (j21) obj);
    }
}

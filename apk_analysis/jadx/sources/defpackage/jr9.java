package defpackage;

import yads.pe;
import yads.ts3;
import yads.tt3;
import yads.y85;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class jr9 implements tt3, y85 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jr9(Object obj, Object obj2, Object obj3) {
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // yads.y85
    public void a(Object obj) {
        ts3.a((ts3) this.b, (String) this.c, (nl3) this.d, (String) obj);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}

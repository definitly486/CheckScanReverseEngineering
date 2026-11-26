package defpackage;

import android.graphics.Bitmap;
import yads.cc3;
import yads.dc3;
import yads.hc3;
import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class lq9 implements tt3, cc3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lq9(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    public void a(Bitmap bitmap) {
        hc3.a((dc3) this.b, (hc3) this.c, bitmap);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}

package defpackage;

import android.app.Application;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.a;
import yads.cj0;
import yads.ne;
import yads.pe;
import yads.r04;
import yads.tt3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a68 implements w08, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a68(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.w08
    public void c(oz7.a aVar) {
        Application application = (Application) this.b;
        h37<Drawable> h37VarM = a.b(application).c(application).h((String) this.c).M(new e68(aVar));
        h37VarM.getClass();
        h37VarM.w(zy3.b, 3000).g(sn2.a).O();
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        cj0.a((ne) this.b, (r04) this.c, (pe) obj);
    }
}

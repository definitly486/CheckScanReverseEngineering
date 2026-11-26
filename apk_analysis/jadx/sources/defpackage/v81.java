package defpackage;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class v81 extends gh4 implements ll3<List<? extends X509Certificate>> {
    public final /* synthetic */ u81 f;
    public final /* synthetic */ List<Certificate> g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public v81(u81 u81Var, List<? extends Certificate> list, String str) {
        super(0);
        this.f = u81Var;
        this.g = list;
        this.h = str;
    }

    @Override // defpackage.ll3
    public final List<? extends X509Certificate> invoke() {
        y14 y14Var = this.f.b;
        List<Certificate> listV = this.g;
        if (y14Var != null) {
            listV = y14Var.v(this.h, listV);
        }
        List<Certificate> list = listV;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        for (Certificate certificate : list) {
            certificate.getClass();
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}

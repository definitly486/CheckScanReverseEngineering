package defpackage;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ny6 extends gh4 implements ll3<List<? extends X509Certificate>> {
    public final /* synthetic */ ly6 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ny6(ly6 ly6Var) {
        super(0);
        this.f = ly6Var;
    }

    @Override // defpackage.ll3
    public final List<? extends X509Certificate> invoke() {
        lu3 lu3Var = this.f.e;
        lu3Var.getClass();
        List<Certificate> listA = lu3Var.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        for (Certificate certificate : listA) {
            certificate.getClass();
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}

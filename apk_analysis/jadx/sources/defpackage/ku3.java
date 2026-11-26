package defpackage;

import java.security.cert.Certificate;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ku3 extends gh4 implements ll3<List<? extends Certificate>> {
    public final /* synthetic */ List<Certificate> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ku3(List<? extends Certificate> list) {
        super(0);
        this.f = list;
    }

    @Override // defpackage.ll3
    public final List<? extends Certificate> invoke() {
        return this.f;
    }
}

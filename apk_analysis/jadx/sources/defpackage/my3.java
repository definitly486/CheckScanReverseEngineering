package defpackage;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class my3 extends jl8 {
    public final /* synthetic */ hy3 e;
    public final /* synthetic */ int f;
    public final /* synthetic */ List g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public my3(String str, hy3 hy3Var, int i, List list, boolean z) {
        super(str, true);
        this.e = hy3Var;
        this.f = i;
        this.g = list;
    }

    @Override // defpackage.jl8
    public final long a() {
        this.e.l.getClass();
        try {
            this.e.x.g(this.f, p03.CANCEL);
            synchronized (this.e) {
                this.e.z.remove(Integer.valueOf(this.f));
            }
            return -1L;
        } catch (IOException unused) {
            return -1L;
        }
    }
}

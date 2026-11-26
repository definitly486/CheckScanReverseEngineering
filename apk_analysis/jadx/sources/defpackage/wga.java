package defpackage;

import java.util.List;
import yads.wq0;
import yads.yq5;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class wga implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wga(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return wq0.e((wq0) obj);
            default:
                return yq5.a((List) obj);
        }
    }
}

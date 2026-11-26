package defpackage;

import yads.hb4;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class s5 implements xl3, hb4 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ s5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return (wu4) ((a6) obj2).invoke(obj);
            default:
                return ((uv) obj2).invoke(obj);
        }
    }
}

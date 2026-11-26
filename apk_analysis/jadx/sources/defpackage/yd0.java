package defpackage;

import com.google.firebase.inappmessaging.internal.ImpressionStorageClient;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yd0 implements qx1 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yd0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.qx1
    public final void accept(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((nl3) obj2).invoke(obj);
                break;
            default:
                ((ImpressionStorageClient) obj2).lambda$getAllImpressions$2((Throwable) obj);
                break;
        }
    }
}

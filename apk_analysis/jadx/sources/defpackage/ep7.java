package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ep7 implements zo7<Object> {
    public final /* synthetic */ dk8.a a;

    public ep7(dk8.a aVar) {
        this.a = aVar;
    }

    @Override // defpackage.zo7
    public final Iterator<Object> iterator() {
        return new fp7(this.a);
    }
}

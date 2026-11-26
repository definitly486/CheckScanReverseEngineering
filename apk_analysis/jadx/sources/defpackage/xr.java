package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class xr implements zo7<Object> {
    public final /* synthetic */ Object[] a;

    public xr(Object[] objArr) {
        this.a = objArr;
    }

    @Override // defpackage.zo7
    public final Iterator<Object> iterator() {
        return new jr(this.a);
    }
}

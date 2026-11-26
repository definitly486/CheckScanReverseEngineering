package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class sr implements Iterable<Object>, re4 {
    public final /* synthetic */ Object[] b;

    public sr(Object[] objArr) {
        this.b = objArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return new jr(this.b);
    }
}

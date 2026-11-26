package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class cya extends o4b {
    public final /* synthetic */ yxa b;

    public cya(yxa yxaVar) {
        this.b = yxaVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new axa(this.b);
    }
}

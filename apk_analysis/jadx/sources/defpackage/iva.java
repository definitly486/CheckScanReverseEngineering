package defpackage;

import com.google.android.gms.internal.fido.zzaz;

/* JADX INFO: loaded from: classes4.dex */
public final class iva extends zzaz {
    public boolean b;
    public final /* synthetic */ Object c;

    public iva(Object obj) {
        this.c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b) {
            qz0.e();
            return null;
        }
        this.b = true;
        return this.c;
    }
}

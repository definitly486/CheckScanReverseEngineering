package defpackage;

import com.google.android.gms.internal.play_billing.zzcs;

/* JADX INFO: loaded from: classes4.dex */
public final class n0b extends zzcs {
    public final Object b;
    public boolean c;

    public n0b(Object obj) {
        this.b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.c) {
            qz0.e();
            return null;
        }
        this.c = true;
        return this.b;
    }
}

package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class fq3 extends i46 {
    public boolean b;
    public final /* synthetic */ Object c;

    public fq3(Object obj) {
        this.c = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b) {
            defpackage.qz0.e();
            return null;
        }
        this.b = true;
        return this.c;
    }
}

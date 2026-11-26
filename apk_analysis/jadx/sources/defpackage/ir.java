package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ir extends u74 {
    public final int[] b;
    public int c;

    public ir(int[] iArr) {
        this.b = iArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b.length;
    }

    @Override // defpackage.u74
    public final int nextInt() {
        try {
            int[] iArr = this.b;
            int i = this.c;
            this.c = i + 1;
            return iArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.c--;
            ag.g(e.getMessage());
            return 0;
        }
    }
}

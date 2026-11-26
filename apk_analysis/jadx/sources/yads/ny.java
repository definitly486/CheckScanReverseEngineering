package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ny extends qt5 implements Comparable {
    public long j;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ny nyVar = (ny) obj;
        if (b(4) != nyVar.b(4)) {
            return b(4) ? 1 : -1;
        }
        long j = this.f - nyVar.f;
        if (j == 0) {
            j = this.j - nyVar.j;
            if (j == 0) {
                return 0;
            }
        }
        return j > 0 ? 1 : -1;
    }
}

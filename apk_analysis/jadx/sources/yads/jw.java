package yads;

import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jw implements Comparable {
    public final String b;
    public final long c;
    public final long d;
    public final boolean e;
    public final File f;
    public final long g;

    public jw(String str, long j, long j2, long j3, File file) {
        this.b = str;
        this.c = j;
        this.d = j2;
        this.e = file != null;
        this.f = file;
        this.g = j3;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        jw jwVar = (jw) obj;
        if (!this.b.equals(jwVar.b)) {
            return this.b.compareTo(jwVar.b);
        }
        long j = this.c - jwVar.c;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        sb.append(this.c);
        sb.append(", ");
        return defpackage.k2.b(this.d, "]", sb);
    }
}

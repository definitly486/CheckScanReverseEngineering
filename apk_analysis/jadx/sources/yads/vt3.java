package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vt3 {
    public final Object a;
    public ly2 b = new ly2();
    public boolean c;
    public boolean d;

    public vt3(Object obj) {
        this.a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vt3.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((vt3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}

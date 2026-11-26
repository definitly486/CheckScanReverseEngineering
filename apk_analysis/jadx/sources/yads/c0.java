package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c0 implements ad4 {
    public transient q b;
    public transient b0 c;
    public transient n d;

    public abstract n a();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ad4) {
            return ((j) this).a().equals(((j) ((ad4) obj)).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().d.hashCode();
    }

    public final String toString() {
        return a().d.toString();
    }
}

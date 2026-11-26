package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xy implements xx4 {
    public abstract boolean a(char c);

    @Override // yads.xx4
    public final boolean apply(Object obj) {
        return a(((Character) obj).charValue());
    }
}

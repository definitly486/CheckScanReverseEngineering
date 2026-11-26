package yads;

/* JADX INFO: loaded from: classes6.dex */
public enum ur4 {
    NATIVE("native"),
    /* JADX INFO: Fake field, exist only in values array */
    JAVASCRIPT("javascript"),
    /* JADX INFO: Fake field, exist only in values array */
    NONE("none");

    public final String b;

    ur4(String str) {
        this.b = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.b;
    }
}

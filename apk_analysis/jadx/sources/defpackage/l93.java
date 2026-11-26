package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public enum l93 {
    JSON(".json"),
    ZIP(".zip"),
    GZIP(".gz");

    public final String extension;

    l93(String str) {
        this.extension = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.extension;
    }
}

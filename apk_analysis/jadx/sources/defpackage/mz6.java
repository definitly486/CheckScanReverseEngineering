package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public enum mz6 {
    SORT_BY_DATE("По дате чека"),
    SORT_BY_CREATION("По дате загрузки чека");

    private final String title;

    mz6(String str) {
        this.title = str;
    }

    public final String a() {
        return this.title;
    }
}

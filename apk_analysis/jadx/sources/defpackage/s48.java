package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public enum s48 {
    PURCHASE_DATE("PURCHASE_DATE", "По дате покупки"),
    SCAN_DATE("SCAN_DATE", "По дате загрузки чека");

    private final String titleForServer;
    private final String titleSort;

    s48(String str, String str2) {
        this.titleForServer = str;
        this.titleSort = str2;
    }

    public final String a() {
        return this.titleForServer;
    }

    public final String d() {
        return this.titleSort;
    }
}

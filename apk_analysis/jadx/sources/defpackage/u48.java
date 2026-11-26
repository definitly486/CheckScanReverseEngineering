package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public enum u48 {
    Date("По дате покупки", true),
    Search("Поиск", false),
    Period("Период", false),
    Sum("Сумма", false);

    private final boolean isDate;
    private boolean isSelect = false;
    private String titleSort;

    u48(String str, boolean z) {
        this.isDate = z;
        this.titleSort = str;
    }

    public final String a() {
        return this.titleSort;
    }

    public final boolean d() {
        return this.isSelect;
    }

    public final void e(boolean z) {
        this.isSelect = z;
    }

    public final void f(String str) {
        str.getClass();
        this.titleSort = str;
    }
}

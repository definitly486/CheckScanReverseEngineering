package androidx.sqlite;

/* JADX INFO: loaded from: classes3.dex */
public interface SQLiteDriver {
    static /* synthetic */ void hasConnectionPool$annotations() {
    }

    default boolean hasConnectionPool() {
        return false;
    }

    SQLiteConnection open(String str);
}

package defpackage;

/* JADX INFO: loaded from: classes.dex */
public enum j69 {
    CONNECT_FAILED("connect_failed"),
    TIMEOUT("timeout"),
    USER_ID_FAILED("user_id_failed"),
    REQUEST_FAILED("request_failed"),
    NO_CONTENT("no_content"),
    NOT_SHOWN("not_shown");

    private final String analyticsName;

    j69(String str) {
        this.analyticsName = str;
    }

    public final String a() {
        return this.analyticsName;
    }
}

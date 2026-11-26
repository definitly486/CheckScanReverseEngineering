package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public enum cz7 implements mn2 {
    SUBCHANNEL_SHUTDOWN("subchannel shutdown"),
    CONNECTION_RESET("connection reset"),
    CONNECTION_TIMED_OUT("connection timed out"),
    CONNECTION_ABORTED("connection aborted"),
    SOCKET_ERROR("socket error"),
    UNKNOWN("unknown");

    private final String errorTag;

    cz7(String str) {
        this.errorTag = str;
    }

    @Override // defpackage.mn2
    public final String a() {
        return this.errorTag;
    }
}

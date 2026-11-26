package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public enum p03 {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    SETTINGS_TIMEOUT(4),
    STREAM_CLOSED(5),
    FRAME_SIZE_ERROR(6),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);

    public static final a Companion = new a();
    private final int httpCode;

    public static final class a {
    }

    p03(int i) {
        this.httpCode = i;
    }

    public final int a() {
        return this.httpCode;
    }
}

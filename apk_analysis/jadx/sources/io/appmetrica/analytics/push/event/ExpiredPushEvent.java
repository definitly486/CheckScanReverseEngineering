package io.appmetrica.analytics.push.event;

/* JADX INFO: loaded from: classes5.dex */
public class ExpiredPushEvent extends PushEvent {
    private String a = "unknown";
    private final String b;
    private String c;
    private String d;

    public ExpiredPushEvent(String str) {
        this.b = str;
    }

    public String getCategory() {
        return this.d;
    }

    public String getPayload() {
        return this.c;
    }

    public String getPushId() {
        return this.b;
    }

    public String getTransport() {
        return this.a;
    }

    public ExpiredPushEvent withCategory(String str) {
        this.d = str;
        return this;
    }

    public ExpiredPushEvent withPayload(String str) {
        this.c = str;
        return this;
    }

    public ExpiredPushEvent withTransport(String str) {
        this.a = str;
        return this;
    }
}

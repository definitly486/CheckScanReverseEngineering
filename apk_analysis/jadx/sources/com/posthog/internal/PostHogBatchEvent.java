package com.posthog.internal;

import com.posthog.PostHogEvent;
import defpackage.aa4;
import defpackage.bq7;
import defpackage.e2;
import defpackage.jh2;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogBatchEvent {

    @bq7("api_key")
    private final String apiKey;
    private final List<PostHogEvent> batch;

    @bq7("sent_at")
    private Date sentAt;

    public PostHogBatchEvent(String str, List<PostHogEvent> list, Date date) {
        str.getClass();
        list.getClass();
        this.apiKey = str;
        this.batch = list;
        this.sentAt = date;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostHogBatchEvent copy$default(PostHogBatchEvent postHogBatchEvent, String str, List list, Date date, int i, Object obj) {
        if ((i & 1) != 0) {
            str = postHogBatchEvent.apiKey;
        }
        if ((i & 2) != 0) {
            list = postHogBatchEvent.batch;
        }
        if ((i & 4) != 0) {
            date = postHogBatchEvent.sentAt;
        }
        return postHogBatchEvent.copy(str, list, date);
    }

    public final String component1() {
        return this.apiKey;
    }

    public final List<PostHogEvent> component2() {
        return this.batch;
    }

    public final Date component3() {
        return this.sentAt;
    }

    public final PostHogBatchEvent copy(String str, List<PostHogEvent> list, Date date) {
        str.getClass();
        list.getClass();
        return new PostHogBatchEvent(str, list, date);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PostHogBatchEvent)) {
            return false;
        }
        PostHogBatchEvent postHogBatchEvent = (PostHogBatchEvent) obj;
        return aa4.e(this.apiKey, postHogBatchEvent.apiKey) && aa4.e(this.batch, postHogBatchEvent.batch) && aa4.e(this.sentAt, postHogBatchEvent.sentAt);
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final List<PostHogEvent> getBatch() {
        return this.batch;
    }

    public final Date getSentAt() {
        return this.sentAt;
    }

    public int hashCode() {
        int iB = e2.b(this.batch, this.apiKey.hashCode() * 31, 31);
        Date date = this.sentAt;
        return iB + (date == null ? 0 : date.hashCode());
    }

    public final void setSentAt(Date date) {
        this.sentAt = date;
    }

    public String toString() {
        return "PostHogBatchEvent(apiKey=" + this.apiKey + ", batch=" + this.batch + ", sentAt=" + this.sentAt + ')';
    }

    public /* synthetic */ PostHogBatchEvent(String str, List list, Date date, int i, jh2 jh2Var) {
        this(str, list, (i & 4) != 0 ? null : date);
    }
}

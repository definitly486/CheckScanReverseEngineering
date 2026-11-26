package com.posthog.internal;

import defpackage.me0;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogApiError extends RuntimeException {
    public final int b;
    public final String c;
    public final Integer d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogApiError(String str, int i, Integer num) {
        super(str);
        str.getClass();
        this.b = i;
        this.c = str;
        this.d = num;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.c;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder("PostHogApiError(statusCode=");
        sb.append(this.b);
        sb.append(", message='");
        return me0.d(sb, this.c, "')");
    }
}

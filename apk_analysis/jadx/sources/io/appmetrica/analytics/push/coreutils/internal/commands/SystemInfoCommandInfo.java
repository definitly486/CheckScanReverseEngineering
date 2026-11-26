package io.appmetrica.analytics.push.coreutils.internal.commands;

import android.os.Bundle;
import defpackage.jh2;

/* JADX INFO: loaded from: classes5.dex */
public final class SystemInfoCommandInfo {
    public static final Companion Companion = new Companion(null);
    private final Long a;

    public static final class Builder {
        private Long a;

        public final SystemInfoCommandInfo build() {
            return new SystemInfoCommandInfo(this.a, null);
        }

        public final Builder withStatusChangeTime(Long l) {
            this.a = l;
            return this;
        }
    }

    private SystemInfoCommandInfo(Long l) {
        this.a = l;
    }

    public final Long getStatusChangeTime() {
        return this.a;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        Long l = this.a;
        if (l != null) {
            bundle.putLong("STATUS_CHANGE_TIME_KEY", l.longValue());
        }
        return bundle;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final SystemInfoCommandInfo fromBundle(Bundle bundle) {
            return new SystemInfoCommandInfo(bundle.containsKey("STATUS_CHANGE_TIME_KEY") ? Long.valueOf(bundle.getLong("STATUS_CHANGE_TIME_KEY")) : null, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ SystemInfoCommandInfo(Long l, jh2 jh2Var) {
        this(l);
    }
}

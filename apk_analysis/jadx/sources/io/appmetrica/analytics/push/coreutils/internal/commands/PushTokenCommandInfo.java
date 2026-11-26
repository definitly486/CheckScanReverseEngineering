package io.appmetrica.analytics.push.coreutils.internal.commands;

import android.os.Bundle;
import defpackage.jh2;

/* JADX INFO: loaded from: classes5.dex */
public final class PushTokenCommandInfo {
    public static final Companion Companion = new Companion(null);
    private final String a;
    private final String b;
    private final boolean c;

    public static final class Builder {
        private final String a;
        private String b;
        private boolean c;

        public Builder(String str) {
            this.a = str;
        }

        public final PushTokenCommandInfo build() {
            return new PushTokenCommandInfo(this.b, this.a, this.c, null);
        }

        public final Builder withForce(boolean z) {
            this.c = z;
            return this;
        }

        public final Builder withToken(String str) {
            this.b = str;
            return this;
        }
    }

    private PushTokenCommandInfo(String str, String str2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = z;
    }

    public final boolean getForce() {
        return this.c;
    }

    public final String getProvider() {
        return this.b;
    }

    public final String getToken() {
        return this.a;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("TOKEN", this.a);
        bundle.putString("PROVIDER_KEY", this.b);
        bundle.putBoolean("FORCE", this.c);
        return bundle;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final PushTokenCommandInfo fromBundle(Bundle bundle) {
            return new PushTokenCommandInfo(bundle.getString("TOKEN"), bundle.getString("PROVIDER_KEY", ""), bundle.getBoolean("FORCE", false), null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ PushTokenCommandInfo(String str, String str2, boolean z, jh2 jh2Var) {
        this(str, str2, z);
    }
}

package io.appmetrica.analytics.networkapi;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NetworkClient {
    private final NetworkClientSettings a;

    public static abstract class Builder {
        private NetworkClientSettings a = new NetworkClientSettings.Builder().build();

        public abstract NetworkClient build();

        public final NetworkClientSettings getSettings() {
            return this.a;
        }

        public final Builder withSettings(NetworkClientSettings networkClientSettings) {
            this.a = networkClientSettings;
            return this;
        }
    }

    public NetworkClient(NetworkClientSettings networkClientSettings) {
        this.a = networkClientSettings;
    }

    public final NetworkClientSettings getSettings() {
        return this.a;
    }

    public abstract Call newCall(Request request);
}

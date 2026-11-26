package com.google.firebase.crashlytics;

/* JADX INFO: loaded from: classes4.dex */
public final class KeyValueBuilder {
    private final CustomKeysAndValues.Builder builder;

    public KeyValueBuilder() {
        this(new CustomKeysAndValues.Builder());
    }

    public final CustomKeysAndValues build$com_google_firebase_firebase_crashlytics() {
        CustomKeysAndValues customKeysAndValuesBuild = this.builder.build();
        customKeysAndValuesBuild.getClass();
        return customKeysAndValuesBuild;
    }

    public final void key(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.builder.putString(str, str2);
    }

    private KeyValueBuilder(CustomKeysAndValues.Builder builder) {
        this.builder = builder;
    }

    public final void key(String str, double d) {
        str.getClass();
        this.builder.putDouble(str, d);
    }

    public final void key(String str, float f) {
        str.getClass();
        this.builder.putFloat(str, f);
    }

    public final void key(String str, int i) {
        str.getClass();
        this.builder.putInt(str, i);
    }

    public final void key(String str, long j) {
        str.getClass();
        this.builder.putLong(str, j);
    }

    public final void key(String str, boolean z) {
        str.getClass();
        this.builder.putBoolean(str, z);
    }
}

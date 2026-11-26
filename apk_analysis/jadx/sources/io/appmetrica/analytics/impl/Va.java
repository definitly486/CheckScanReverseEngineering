package io.appmetrica.analytics.impl;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public interface Va {
    Va a(String str, float f);

    Va a(String str, int i);

    Va a(String str, long j);

    Va a(String str, String str2);

    Va a(String str, boolean z);

    void a();

    boolean a(String str);

    Set b();

    void flushAsync();

    boolean getBoolean(String str, boolean z);

    int getInt(String str, int i);

    long getLong(String str, long j);

    String getString(String str, String str2);

    Va remove(String str);
}

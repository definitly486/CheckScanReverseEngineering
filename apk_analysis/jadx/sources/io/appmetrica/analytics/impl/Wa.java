package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.location.Location;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.ExternalAttribution;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Wa extends Ra, Uc {
    void a(Activity activity);

    /* synthetic */ void a(Location location);

    void a(AnrListener anrListener);

    void a(ExternalAttribution externalAttribution);

    void a(Ro ro);

    void a(EnumC1112n enumC1112n);

    /* synthetic */ void a(String str);

    /* synthetic */ void a(String str, String str2);

    void a(String str, boolean z);

    /* synthetic */ void a(boolean z);

    /* synthetic */ void a(boolean z, boolean z2);

    void b(Activity activity);

    @Override // io.appmetrica.analytics.impl.Ra
    /* synthetic */ void b(String str);

    @Override // io.appmetrica.analytics.impl.Ra
    /* synthetic */ void b(String str, String str2);

    @Override // io.appmetrica.analytics.impl.Ra
    /* synthetic */ boolean b();

    void c();

    List<String> f();
}

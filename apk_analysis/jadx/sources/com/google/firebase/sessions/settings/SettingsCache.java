package com.google.firebase.sessions.settings;

import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes4.dex */
public interface SettingsCache {
    boolean hasCacheExpired();

    Integer sessionRestartTimeout();

    Double sessionSamplingRate();

    Boolean sessionsEnabled();

    Object updateConfigs(SessionConfigs sessionConfigs, e02<? super j59> e02Var);
}

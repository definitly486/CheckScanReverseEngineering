package com.google.firebase.sessions.settings;

import defpackage.e02;
import defpackage.j59;
import defpackage.wt2;

/* JADX INFO: loaded from: classes4.dex */
public interface SettingsProvider {

    public static final class DefaultImpls {
        public static boolean isSettingsStale(SettingsProvider settingsProvider) {
            return false;
        }

        public static Object updateSettings(SettingsProvider settingsProvider, e02<? super j59> e02Var) {
            return j59.a;
        }
    }

    Double getSamplingRate();

    Boolean getSessionEnabled();

    /* JADX INFO: renamed from: getSessionRestartTimeout-FghU774 */
    wt2 mo9507getSessionRestartTimeoutFghU774();

    boolean isSettingsStale();

    Object updateSettings(e02<? super j59> e02Var);
}

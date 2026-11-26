package io.appmetrica.analytics.modulesapi.internal.common;

import defpackage.n1;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public interface ModuleSelfReporter {
    void reportError(String str, String str2);

    void reportError(String str, Throwable th);

    void reportEvent(int i, String str, String str2);

    void reportEvent(String str);

    void reportEvent(String str, String str2);

    void reportEvent(String str, Map<String, ? extends Object> map);

    public static final class DefaultImpls {
        public static /* synthetic */ void reportError$default(ModuleSelfReporter moduleSelfReporter, String str, Throwable th, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: reportError");
                return;
            }
            if ((i & 2) != 0) {
                th = null;
            }
            moduleSelfReporter.reportError(str, th);
        }

        public static /* synthetic */ void reportError$default(ModuleSelfReporter moduleSelfReporter, String str, String str2, int i, Object obj) {
            if (obj != null) {
                n1.e("Super calls with default arguments not supported in this target, function: reportError");
                return;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            moduleSelfReporter.reportError(str, str2);
        }
    }
}

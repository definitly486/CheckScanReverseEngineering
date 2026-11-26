package androidx.work;

import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class LoggerExtKt {
    public static final void logd(String str, Throwable th, ll3<String> ll3Var) {
        str.getClass();
        th.getClass();
        ll3Var.getClass();
        Logger.get().debug(str, ll3Var.invoke(), th);
    }

    public static final void loge(String str, Throwable th, ll3<String> ll3Var) {
        str.getClass();
        th.getClass();
        ll3Var.getClass();
        Logger.get().error(str, ll3Var.invoke(), th);
    }

    public static final void logi(String str, Throwable th, ll3<String> ll3Var) {
        str.getClass();
        th.getClass();
        ll3Var.getClass();
        Logger.get().info(str, ll3Var.invoke(), th);
    }

    public static final void logd(String str, ll3<String> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        Logger.get().debug(str, ll3Var.invoke());
    }

    public static final void loge(String str, ll3<String> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        Logger.get().error(str, ll3Var.invoke());
    }

    public static final void logi(String str, ll3<String> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        Logger.get().info(str, ll3Var.invoke());
    }
}

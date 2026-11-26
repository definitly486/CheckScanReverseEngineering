package yads;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class rd4 implements ThreadFactory {
    public static final String b = "YandexAds.UrlTracker";
    public final String a;

    public rd4(String str) {
        this.a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.a);
    }
}

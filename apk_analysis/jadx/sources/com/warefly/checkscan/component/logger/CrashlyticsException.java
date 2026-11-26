package com.warefly.checkscan.component.logger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CrashlyticsException extends RuntimeException {
    public final String b;

    /* JADX INFO: loaded from: classes.dex */
    public static final class AddShopConfirm extends CrashlyticsException {
    }

    /* JADX INFO: loaded from: classes.dex */
    public static final class BaseFragment extends CrashlyticsException {
    }

    /* JADX INFO: loaded from: classes.dex */
    public static final class CameraUnavailable extends CrashlyticsException {
    }

    /* JADX INFO: loaded from: classes.dex */
    public static final class ColdStart extends CrashlyticsException {
    }

    public static final class Conscrypt extends CrashlyticsException {
    }

    /* JADX INFO: loaded from: classes.dex */
    public static final class ErrorMessagePhone extends CrashlyticsException {
    }

    /* JADX INFO: loaded from: classes.dex */
    public static final class Flow extends CrashlyticsException {
    }

    public CrashlyticsException(String str) {
        super(str);
        this.b = str;
    }
}

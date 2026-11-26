package com.my.tracker;

import android.content.pm.PackageInfo;
import com.my.tracker.config.AntiFraudConfig;
import com.my.tracker.obfuscated.c3;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes4.dex */
public final class MyTrackerConfig {
    private final c3 a;

    public interface InstalledPackagesProvider {
        List<PackageInfo> getInstalledPackages();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface LocationTrackingMode {
        public static final int ACTIVE = 2;
        public static final int CACHED = 1;
        public static final int NONE = 0;
    }

    public interface OkHttpClientProvider {
        OkHttpClient getOkHttpClient();
    }

    private MyTrackerConfig(c3 c3Var) {
        this.a = c3Var;
    }

    public static MyTrackerConfig a(c3 c3Var) {
        return new MyTrackerConfig(c3Var);
    }

    public AntiFraudConfig getAntiFraudConfig() {
        return this.a.a();
    }

    public String getApkPreinstallParams() {
        return this.a.b();
    }

    public int getBufferingPeriod() {
        return this.a.e();
    }

    public int getForcingPeriod() {
        return this.a.f();
    }

    public String getId() {
        return this.a.g();
    }

    public int getLaunchTimeout() {
        return this.a.i();
    }

    public int getLocationTrackingMode() {
        return this.a.j();
    }

    @Deprecated
    public String getVendorAppPackage() {
        return this.a.r();
    }

    public boolean isAutotrackingPurchaseEnabled() {
        return this.a.s();
    }

    public boolean isKidMode() {
        return this.a.t();
    }

    public boolean isTrackingEnvironmentEnabled() {
        return this.a.u();
    }

    public boolean isTrackingLaunchEnabled() {
        return this.a.v();
    }

    @Deprecated
    public boolean isTrackingLocationEnabled() {
        int iJ = this.a.j();
        return iJ == 1 || iJ == 2;
    }

    public boolean isTrackingPreinstallEnabled() {
        return this.a.w();
    }

    public boolean isTrackingPreinstallThirdPartyEnabled() {
        return this.a.x();
    }

    public void setAntiFraudConfig(AntiFraudConfig antiFraudConfig) {
        this.a.a(antiFraudConfig);
    }

    public MyTrackerConfig setApkPreinstallParams(String str) {
        this.a.a(str);
        return this;
    }

    public MyTrackerConfig setAutotrackingPurchaseEnabled(boolean z) {
        this.a.b(z);
        return this;
    }

    public MyTrackerConfig setBufferingPeriod(int i) {
        this.a.a(i);
        return this;
    }

    @Deprecated
    public MyTrackerConfig setDefaultVendorAppPackage() {
        this.a.A();
        return this;
    }

    public MyTrackerConfig setForcingPeriod(int i) {
        this.a.b(i);
        return this;
    }

    public MyTrackerConfig setInstalledPackagesProvider(InstalledPackagesProvider installedPackagesProvider) {
        this.a.a(installedPackagesProvider);
        return this;
    }

    public MyTrackerConfig setKidMode(boolean z) {
        this.a.c(z);
        return this;
    }

    public MyTrackerConfig setLaunchTimeout(int i) {
        this.a.c(i);
        return this;
    }

    public MyTrackerConfig setLocationTrackingMode(int i) {
        this.a.d(i);
        return this;
    }

    public MyTrackerConfig setOkHttpClientProvider(OkHttpClientProvider okHttpClientProvider) {
        this.a.a(okHttpClientProvider);
        return this;
    }

    public MyTrackerConfig setProxyHost(String str) {
        this.a.c(str);
        return this;
    }

    public MyTrackerConfig setTrackingEnvironmentEnabled(boolean z) {
        this.a.d(z);
        return this;
    }

    public MyTrackerConfig setTrackingLaunchEnabled(boolean z) {
        this.a.e(z);
        return this;
    }

    @Deprecated
    public MyTrackerConfig setTrackingLocationEnabled(boolean z) {
        c3 c3Var = this.a;
        if (z) {
            c3Var.d(1);
            return this;
        }
        c3Var.d(0);
        return this;
    }

    public MyTrackerConfig setTrackingPreinstallEnabled(boolean z) {
        this.a.f(z);
        return this;
    }

    public MyTrackerConfig setTrackingPreinstallThirdPartyEnabled(boolean z) {
        this.a.g(z);
        return this;
    }

    @Deprecated
    public MyTrackerConfig setVendorAppPackage(String str) {
        this.a.e(str);
        return this;
    }
}

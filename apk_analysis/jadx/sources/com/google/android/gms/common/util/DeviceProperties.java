package com.google.android.gms.common.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceProperties {
    public static Boolean a;
    public static Boolean b;
    public static Boolean c;
    public static Boolean d;
    public static Boolean e;
    public static Boolean f;
    public static Boolean g;
    public static Boolean h;
    public static Boolean i;
    public static Boolean j;
    public static Boolean k;
    public static Boolean l;
    public static Boolean m;
    public static Boolean n;
    public static Boolean o;
    public static Boolean p;
    public static Boolean q;
    public static Boolean r;

    public static boolean isAuto(Context context) {
        return zze(context.getPackageManager());
    }

    public static boolean isBstar(Context context) {
        Boolean boolValueOf = o;
        if (boolValueOf == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z = true;
            }
            boolValueOf = Boolean.valueOf(z);
            o = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean isFoldable(Context context) {
        Boolean boolValueOf = d;
        if (boolValueOf == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature("android.hardware.sensor.hinge_angle")) {
                z = true;
            }
            boolValueOf = Boolean.valueOf(z);
            d = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean isLatchsky(Context context) {
        Boolean boolValueOf = h;
        if (boolValueOf == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z = true;
            }
            boolValueOf = Boolean.valueOf(z);
            h = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0092  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c4  */
    public static boolean isPhone(Context context) {
        boolean z;
        Boolean boolValueOf = a;
        if (boolValueOf == null) {
            boolean z2 = true;
            if (!isFoldable(context)) {
                if (isTablet(context) || isWearable(context) || zzd(context)) {
                    z2 = false;
                } else {
                    Boolean boolValueOf2 = k;
                    if (boolValueOf2 == null) {
                        boolValueOf2 = Boolean.valueOf(context.getPackageManager().hasSystemFeature("org.chromium.arc"));
                        k = boolValueOf2;
                    }
                    if (boolValueOf2.booleanValue() || isAuto(context) || isTv(context)) {
                        z2 = false;
                    } else {
                        Boolean boolValueOf3 = n;
                        if (boolValueOf3 == null) {
                            boolValueOf3 = Boolean.valueOf(context.getPackageManager().hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE"));
                            n = boolValueOf3;
                        }
                        if (boolValueOf3.booleanValue() || isBstar(context) || isXr(context)) {
                            z2 = false;
                        } else {
                            Boolean boolValueOf4 = q;
                            if (boolValueOf4 == null) {
                                boolValueOf4 = Boolean.valueOf(context.getPackageManager().hasSystemFeature("com.google.desktop.gms"));
                                q = boolValueOf4;
                            }
                            if (boolValueOf4.booleanValue()) {
                                z2 = false;
                            } else {
                                PackageManager packageManager = context.getPackageManager();
                                Boolean boolValueOf5 = r;
                                if (boolValueOf5 == null) {
                                    if (!PlatformVersion.isAtLeastV()) {
                                        z = false;
                                    } else if (Build.VERSION.SDK_INT < 36) {
                                        String str = Build.VERSION.CODENAME;
                                        if (str.charAt(0) < 'B' || str.charAt(0) > 'C') {
                                            z = false;
                                        } else if (packageManager.hasSystemFeature("android.hardware.type.xr_peripheral")) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                    } else if (packageManager.hasSystemFeature("android.hardware.type.xr_peripheral")) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    boolValueOf5 = Boolean.valueOf(z);
                                    r = boolValueOf5;
                                }
                                if (boolValueOf5.booleanValue()) {
                                    z2 = false;
                                }
                            }
                        }
                    }
                }
            }
            boolValueOf = Boolean.valueOf(z2);
            a = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean isPhoneGo(Context context) {
        ActivityManager activityManager;
        boolean z = false;
        if (context == null) {
            return false;
        }
        Boolean boolValueOf = b;
        if (boolValueOf == null) {
            if (isPhone(context)) {
                if (i == null && (activityManager = (ActivityManager) context.getSystemService("activity")) != null) {
                    i = Boolean.valueOf(activityManager.isLowRamDevice());
                }
                if (Objects.equal(i, Boolean.TRUE) && Build.VERSION.SDK_INT >= 27) {
                    z = true;
                }
            }
            boolValueOf = Boolean.valueOf(z);
            b = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean isSevenInchTablet(Context context) {
        return zza(context.getResources());
    }

    public static boolean isSidewinder(Context context) {
        return zzc(context);
    }

    public static boolean isTablet(Resources resources) {
        if (resources == null) {
            return false;
        }
        Boolean boolValueOf = c;
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || zza(resources));
            c = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean isTv(Context context) {
        return zzf(context.getPackageManager());
    }

    public static boolean isUserBuild() {
        int i2 = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return "user".equals(Build.TYPE);
    }

    public static boolean isWearable(Context context) {
        return zzb(context.getPackageManager());
    }

    public static boolean isWearableWithoutPlayStore(Context context) {
        if (isWearable(context) && !PlatformVersion.isAtLeastN()) {
            return true;
        }
        if (zzc(context)) {
            return !PlatformVersion.isAtLeastO() || PlatformVersion.isAtLeastR();
        }
        return false;
    }

    public static boolean isXr(Context context) {
        return zzg(context.getPackageManager());
    }

    public static boolean zza(Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        Boolean boolValueOf = e;
        if (boolValueOf == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z = true;
            }
            boolValueOf = Boolean.valueOf(z);
            e = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean zzb(PackageManager packageManager) {
        Boolean boolValueOf = f;
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
            f = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean zzc(Context context) {
        Boolean boolValueOf = g;
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
            g = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean zzd(Context context) {
        Boolean boolValueOf = j;
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(PlatformVersion.isAtLeastO() ? context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") : context.getPackageManager().hasSystemFeature("android.hardware.type.iot"));
            j = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean zze(PackageManager packageManager) {
        Boolean boolValueOf = l;
        if (boolValueOf == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastO() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z = true;
            }
            boolValueOf = Boolean.valueOf(z);
            l = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean zzf(PackageManager packageManager) {
        Boolean boolValueOf = m;
        if (boolValueOf == null) {
            boolean z = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv") && !packageManager.hasSystemFeature("android.hardware.type.television") && !packageManager.hasSystemFeature("android.software.leanback") && !packageManager.hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE")) {
                z = false;
            }
            boolValueOf = Boolean.valueOf(z);
            m = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean zzg(PackageManager packageManager) {
        Boolean boolValueOf = p;
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(packageManager.hasSystemFeature("android.software.xr.api.spatial"));
            p = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }

    public static boolean isTablet(Context context) {
        return isTablet(context.getResources());
    }
}

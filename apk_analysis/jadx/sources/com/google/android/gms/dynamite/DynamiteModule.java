package com.google.android.gms.dynamite;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.q6c;
import defpackage.u8b;
import defpackage.y2b;
import defpackage.yu2;
import defpackage.zu2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes4.dex */
public final class DynamiteModule {
    public static final int LOCAL = -1;
    public static final int NONE = 0;
    public static final int NO_SELECTION = 0;
    public static final int REMOTE = 1;
    public static Boolean b = null;
    public static String c = null;
    public static boolean d = false;
    public static int e = -1;
    public static Boolean f;
    public static zzp j;
    public static zzq k;
    public final Context a;
    public static final ThreadLocal g = new ThreadLocal();
    public static final u8b h = new u8b();
    public static final b i = new b();
    public static final VersionPolicy PREFER_REMOTE = new c();
    public static final VersionPolicy PREFER_LOCAL = new d();
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new e();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new f();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new g();
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new h();
    public static final VersionPolicy zza = new i();
    public static final VersionPolicy zzb = new a();

    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class LoadingException extends Exception {
    }

    public interface VersionPolicy {

        public interface IVersions {
            int zza(Context context, String str, boolean z);

            int zzb(Context context, String str);
        }

        public static class SelectionResult {
            public int localVersion = 0;
            public int remoteVersion = 0;
            public int selection = 0;
        }

        SelectionResult selectModule(Context context, String str, IVersions iVersions);
    }

    public DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.a = context;
    }

    public static boolean a(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f)) {
            return true;
        }
        boolean z = false;
        if (f == null) {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", true != PlatformVersion.isAtLeastQ() ? 0 : 268435456);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, DefaultEncoderProfilesProvider.DEFAULT_VIDEO_BITRATE_FHD) == 0 && providerInfoResolveContentProvider != null && "com.google.android.gms".equals(providerInfoResolveContentProvider.packageName)) {
                z = true;
            }
            f = Boolean.valueOf(z);
            if (z && (applicationInfo = providerInfoResolveContentProvider.applicationInfo) != null && (applicationInfo.flags & TsExtractor.TS_STREAM_TYPE_AC3) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                d = true;
            }
        }
        if (!z) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:85:0x013a A[PHI: r3
      0x013a: PHI (r3v4 boolean) = (r3v3 boolean), (r3v6 boolean) binds: [B:58:0x00f1, B:83:0x0137] A[DONT_GENERATE, DONT_INLINE]] */
    public static int b(Context context, String str, boolean z, boolean z2) throws Throwable {
        Exception exc;
        Throwable th;
        MatrixCursor matrixCursor;
        boolean z3;
        MatrixCursor matrixCursor2 = null;
        try {
            try {
                boolean z4 = true;
                Uri uriBuild = new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority("com.google.android.gms.chimera").path(true != z ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartUptime", String.valueOf(((Long) h.get()).longValue())).build();
                ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(uriBuild);
                boolean z5 = false;
                if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                    matrixCursor = null;
                } else {
                    try {
                        Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uriBuild, null, null, null, null);
                        if (cursorQuery == null) {
                            contentProviderClientAcquireUnstableContentProviderClient.release();
                            matrixCursor = null;
                        } else {
                            try {
                                int count = cursorQuery.getCount();
                                int columnCount = cursorQuery.getColumnCount();
                                matrixCursor = new MatrixCursor(cursorQuery.getColumnNames(), count);
                                for (int i2 = 0; i2 < count; i2++) {
                                    if (!cursorQuery.moveToPosition(i2)) {
                                        throw new RemoteException("Cursor read incomplete (ContentProvider dead?)");
                                    }
                                    Object[] objArr = new Object[columnCount];
                                    for (int i3 = 0; i3 < columnCount; i3++) {
                                        int type = cursorQuery.getType(i3);
                                        if (type == 0) {
                                            objArr[i3] = null;
                                        } else if (type == 1) {
                                            objArr[i3] = Long.valueOf(cursorQuery.getLong(i3));
                                        } else if (type == 2) {
                                            objArr[i3] = Double.valueOf(cursorQuery.getDouble(i3));
                                        } else if (type == 3) {
                                            objArr[i3] = cursorQuery.getString(i3);
                                        } else {
                                            if (type != 4) {
                                                throw new RemoteException("Unknown column type");
                                            }
                                            objArr[i3] = cursorQuery.getBlob(i3);
                                        }
                                    }
                                    matrixCursor.addRow(objArr);
                                }
                                cursorQuery.close();
                                contentProviderClientAcquireUnstableContentProviderClient.release();
                            } catch (Throwable th2) {
                                try {
                                    cursorQuery.close();
                                    throw th2;
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                    throw th2;
                                }
                            }
                        }
                    } catch (RemoteException unused) {
                    } catch (Throwable th4) {
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        throw th4;
                    }
                }
                if (matrixCursor != null) {
                    try {
                        if (matrixCursor.moveToFirst()) {
                            int i4 = matrixCursor.getInt(0);
                            if (i4 > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        c = matrixCursor.getString(2);
                                        int columnIndex = matrixCursor.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            e = matrixCursor.getInt(columnIndex);
                                        }
                                        int columnIndex2 = matrixCursor.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            z3 = matrixCursor.getInt(columnIndex2) != 0;
                                            d = z3;
                                        } else {
                                            z3 = false;
                                        }
                                    } catch (Throwable th5) {
                                        throw th5;
                                    }
                                }
                                q6c q6cVar = (q6c) g.get();
                                if (q6cVar == null || q6cVar.a != null) {
                                    z4 = false;
                                } else {
                                    q6cVar.a = matrixCursor;
                                }
                                z5 = z3;
                                matrixCursor2 = z4 ? null : matrixCursor;
                            }
                            if (z2 && z5) {
                                throw new LoadingException("forcing fallback to container DynamiteLoader impl");
                            }
                            if (matrixCursor2 != null) {
                                matrixCursor2.close();
                            }
                            return i4;
                        }
                    } catch (Exception e2) {
                        exc = e2;
                        if (exc instanceof LoadingException) {
                            throw exc;
                        }
                        String message = exc.getMessage();
                        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 25);
                        sb.append("V2 version check failed: ");
                        sb.append(message);
                        throw new LoadingException(sb.toString(), exc);
                    } catch (Throwable th6) {
                        th = th6;
                        matrixCursor2 = matrixCursor;
                        if (matrixCursor2 == null) {
                            throw th;
                        }
                        matrixCursor2.close();
                        throw th;
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.");
            } catch (Throwable th7) {
                th = th7;
            }
        } catch (Exception e3) {
            exc = e3;
        }
    }

    public static void c(ClassLoader classLoader) throws LoadingException {
        try {
            zzq zzqVar = null;
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(null).newInstance(null);
            if (iBinder != null) {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
            }
            k = zzqVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new LoadingException("Failed to instantiate dynamite loader", e2);
        }
    }

    public static zzp d(Context context) {
        zzp zzpVar;
        synchronized (DynamiteModule.class) {
            zzp zzpVar2 = j;
            if (zzpVar2 != null) {
                return zzpVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzpVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzpVar = iInterfaceQueryLocalInterface instanceof zzp ? (zzp) iInterfaceQueryLocalInterface : new zzp(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
                }
                if (zzpVar != null) {
                    j = zzpVar;
                    return zzpVar;
                }
            } catch (Exception e2) {
                String message = e2.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 45);
                sb.append("Failed to load IDynamiteLoader from GmsCore: ");
                sb.append(message);
                Log.e("DynamiteModule", sb.toString());
            }
            return null;
        }
    }

    public static int getLocalVersion(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> clsLoadClass = classLoader.loadClass(sb.toString());
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            String strValueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 50 + String.valueOf(str).length() + 1);
            sb2.append("Module descriptor id '");
            sb2.append(strValueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e2.getMessage())));
            return 0;
        }
    }

    public static int getRemoteVersion(Context context, String str) {
        return zza(context, str, false);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0267 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0271 A[Catch: all -> 0x026f, TRY_ENTER, TryCatch #8 {, blocks: (B:34:0x00fd, B:36:0x0103, B:37:0x0105, B:104:0x0271, B:105:0x0278), top: B:155:0x00fd }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:125:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:128:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:133:0x0303 A[Catch: all -> 0x00c0, TryCatch #0 {all -> 0x00c0, blocks: (B:5:0x0042, B:9:0x00b9, B:16:0x00c5, B:19:0x00cb, B:31:0x00f8, B:108:0x027b, B:109:0x0285, B:117:0x0294, B:119:0x02bc, B:121:0x02cb, B:131:0x02fb, B:132:0x0302, B:112:0x0288, B:113:0x0289, B:114:0x0290, B:133:0x0303, B:134:0x0323, B:135:0x0324, B:136:0x0375), top: B:148:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:151:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:0x00fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:19:0x00cb A[Catch: all -> 0x00c0, TRY_LEAVE, TryCatch #0 {all -> 0x00c0, blocks: (B:5:0x0042, B:9:0x00b9, B:16:0x00c5, B:19:0x00cb, B:31:0x00f8, B:108:0x027b, B:109:0x0285, B:117:0x0294, B:119:0x02bc, B:121:0x02cb, B:131:0x02fb, B:132:0x0302, B:112:0x0288, B:113:0x0289, B:114:0x0290, B:133:0x0303, B:134:0x0323, B:135:0x0324, B:136:0x0375), top: B:148:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:23:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:29:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:36:0x0103 A[Catch: all -> 0x026f, TryCatch #8 {, blocks: (B:34:0x00fd, B:36:0x0103, B:37:0x0105, B:104:0x0271, B:105:0x0278), top: B:155:0x00fd }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0108 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TRY_ENTER, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:41:0x010f A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0146 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TRY_ENTER, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01bf A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01ca A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0201 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0208 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0210 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:88:0x021f A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0227 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0229 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:92:0x0239 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:95:0x024e A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0257 A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:98:0x025f A[Catch: all -> 0x017b, LoadingException -> 0x0180, RemoteException -> 0x0185, TryCatch #8 {RemoteException -> 0x0185, LoadingException -> 0x0180, all -> 0x017b, blocks: (B:33:0x00fc, B:39:0x0108, B:41:0x010f, B:42:0x0140, B:46:0x0146, B:48:0x014e, B:50:0x0152, B:51:0x015c, B:58:0x0167, B:66:0x019d, B:68:0x01a5, B:69:0x01ac, B:70:0x01b3, B:65:0x018a, B:73:0x01b6, B:74:0x01b7, B:75:0x01be, B:76:0x01bf, B:77:0x01c6, B:80:0x01c9, B:81:0x01ca, B:83:0x0201, B:85:0x0208, B:87:0x0210, B:93:0x0248, B:95:0x024e, B:96:0x0257, B:97:0x025e, B:88:0x021f, B:89:0x0226, B:91:0x0229, B:92:0x0239, B:98:0x025f, B:99:0x0266, B:100:0x0267, B:101:0x026e, B:107:0x027a), top: B:156:0x00fc }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r30v0, types: [com.google.android.gms.dynamite.DynamiteModule$VersionPolicy] */
    public static DynamiteModule load(Context context, VersionPolicy versionPolicy, String str) throws LoadingException {
        int i2;
        DynamiteModule dynamiteModule;
        Cursor cursor;
        int i3;
        Boolean bool;
        zzp zzpVarD;
        int iZzi;
        IObjectWrapper iObjectWrapperZze;
        Object objUnwrap;
        q6c q6cVar;
        zzq zzqVar;
        q6c q6cVar2;
        boolean z;
        IObjectWrapper iObjectWrapperZze2;
        Cursor cursor2;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context");
        }
        ThreadLocal threadLocal = g;
        q6c q6cVar3 = (q6c) threadLocal.get();
        q6c q6cVar4 = new q6c();
        threadLocal.set(q6cVar4);
        u8b u8bVar = h;
        Long l = (Long) u8bVar.get();
        long jLongValue = l.longValue();
        try {
            u8bVar.set(Long.valueOf(SystemClock.uptimeMillis()));
            VersionPolicy.SelectionResult selectionResultSelectModule = versionPolicy.selectModule(context, str, i);
            int i4 = selectionResultSelectModule.localVersion;
            int i5 = selectionResultSelectModule.remoteVersion;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26 + String.valueOf(i4).length() + 19 + String.valueOf(str).length() + 1 + String.valueOf(i5).length());
            sb.append("Considering local module ");
            sb.append(str);
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(i4);
            sb.append(" and remote module ");
            sb.append(str);
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(i5);
            Log.i("DynamiteModule", sb.toString());
            int i6 = selectionResultSelectModule.selection;
            if (i6 != 0) {
                if (i6 != -1) {
                    if (i6 == 1 || selectionResultSelectModule.remoteVersion != 0) {
                        if (i6 == -1) {
                            Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
                            DynamiteModule dynamiteModule2 = new DynamiteModule(applicationContext);
                            if (jLongValue == 0) {
                                u8bVar.remove();
                            } else {
                                u8bVar.set(l);
                            }
                            cursor2 = q6cVar4.a;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            threadLocal.set(q6cVar3);
                            return dynamiteModule2;
                        }
                        ?? r2 = 1;
                        if (i6 == 1) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(i6).length() + 36);
                            sb2.append("VersionPolicy returned invalid code:");
                            sb2.append(i6);
                            throw new LoadingException(sb2.toString());
                        }
                        try {
                            try {
                                i3 = selectionResultSelectModule.remoteVersion;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (a(context)) {
                                            throw new LoadingException("Remote loading disabled");
                                        }
                                        bool = b;
                                    }
                                    if (bool != null) {
                                        throw new LoadingException("Failed to determine which loading route to use.");
                                    }
                                    if (bool.booleanValue()) {
                                        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                                        sb3.append("Selected remote version of ");
                                        sb3.append(str);
                                        sb3.append(", version >= ");
                                        sb3.append(i3);
                                        Log.i("DynamiteModule", sb3.toString());
                                        synchronized (DynamiteModule.class) {
                                            zzqVar = k;
                                        }
                                        if (zzqVar != null) {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.");
                                        }
                                        q6cVar2 = (q6c) threadLocal.get();
                                        if (q6cVar2 != null || q6cVar2.a == null) {
                                            throw new LoadingException("No result cursor");
                                        }
                                        Context applicationContext2 = context.getApplicationContext();
                                        Cursor cursor3 = q6cVar2.a;
                                        ObjectWrapper.wrap(null);
                                        synchronized (DynamiteModule.class) {
                                            z = e >= 2;
                                        }
                                        if (z) {
                                            Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                            iObjectWrapperZze2 = zzqVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor3));
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                            iObjectWrapperZze2 = zzqVar.zze(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor3));
                                        }
                                        Context context2 = (Context) ObjectWrapper.unwrap(iObjectWrapperZze2);
                                        if (context2 == null) {
                                            throw new LoadingException("Failed to get module context");
                                        }
                                        dynamiteModule = new DynamiteModule(context2);
                                    } else {
                                        StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                                        sb4.append("Selected remote version of ");
                                        sb4.append(str);
                                        sb4.append(", version >= ");
                                        sb4.append(i3);
                                        Log.i("DynamiteModule", sb4.toString());
                                        zzpVarD = d(context);
                                        if (zzpVarD != null) {
                                            throw new LoadingException("Failed to create IDynamiteLoader.");
                                        }
                                        iZzi = zzpVarD.zzi();
                                        if (iZzi >= 3) {
                                            q6cVar = (q6c) threadLocal.get();
                                            if (q6cVar != null) {
                                                throw new LoadingException("No cached result cursor holder");
                                            }
                                            iObjectWrapperZze = zzpVarD.zzk(ObjectWrapper.wrap(context), str, i3, ObjectWrapper.wrap(q6cVar.a));
                                        } else if (iZzi == 2) {
                                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                                            iObjectWrapperZze = zzpVarD.zzg(ObjectWrapper.wrap(context), str, i3);
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                            iObjectWrapperZze = zzpVarD.zze(ObjectWrapper.wrap(context), str, i3);
                                        }
                                        objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZze);
                                        if (objUnwrap != null) {
                                            throw new LoadingException("Failed to load remote module.");
                                        }
                                        dynamiteModule = new DynamiteModule((Context) objUnwrap);
                                    }
                                    if (jLongValue == 0) {
                                        h.remove();
                                    } else {
                                        h.set(l);
                                    }
                                    cursor = q6cVar4.a;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    g.set(q6cVar3);
                                    return dynamiteModule;
                                } catch (RemoteException e2) {
                                    throw new LoadingException("Failed to load remote module.", e2);
                                } catch (LoadingException e3) {
                                    throw e3;
                                } catch (Throwable th) {
                                    CrashUtils.addDynamiteErrorToDropBox(context, th);
                                    throw new LoadingException("Failed to load remote module.", th);
                                }
                            } catch (LoadingException e4) {
                                e = e4;
                                r2 = context;
                                String message = e.getMessage();
                                StringBuilder sb5 = new StringBuilder(String.valueOf(message).length() + 30);
                                sb5.append("Failed to load remote module: ");
                                sb5.append(message);
                                Log.w("DynamiteModule", sb5.toString());
                                i2 = selectionResultSelectModule.localVersion;
                                if (i2 != 0 || versionPolicy.selectModule(r2, str, new j(i2)).selection != -1) {
                                    throw new LoadingException("Remote load failed. No local fallback found.", e);
                                }
                                Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
                                dynamiteModule = new DynamiteModule(applicationContext);
                            }
                        } catch (LoadingException e5) {
                            e = e5;
                            String message2 = e.getMessage();
                            StringBuilder sb6 = new StringBuilder(String.valueOf(message2).length() + 30);
                            sb6.append("Failed to load remote module: ");
                            sb6.append(message2);
                            Log.w("DynamiteModule", sb6.toString());
                            i2 = selectionResultSelectModule.localVersion;
                            if (i2 != 0) {
                            }
                            throw new LoadingException("Remote load failed. No local fallback found.", e);
                        }
                    }
                } else if (selectionResultSelectModule.localVersion != 0) {
                    i6 = -1;
                    if (i6 == 1) {
                    }
                    if (i6 == -1) {
                        Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
                        DynamiteModule dynamiteModule3 = new DynamiteModule(applicationContext);
                        if (jLongValue == 0) {
                            u8bVar.remove();
                        } else {
                            u8bVar.set(l);
                        }
                        cursor2 = q6cVar4.a;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        threadLocal.set(q6cVar3);
                        return dynamiteModule3;
                    }
                    ?? r3 = 1;
                    if (i6 == 1) {
                        StringBuilder sb7 = new StringBuilder(String.valueOf(i6).length() + 36);
                        sb7.append("VersionPolicy returned invalid code:");
                        sb7.append(i6);
                        throw new LoadingException(sb7.toString());
                    }
                    i3 = selectionResultSelectModule.remoteVersion;
                    synchronized (DynamiteModule.class) {
                        if (a(context)) {
                            throw new LoadingException("Remote loading disabled");
                        }
                        bool = b;
                        if (bool != null) {
                            throw new LoadingException("Failed to determine which loading route to use.");
                        }
                        if (bool.booleanValue()) {
                            StringBuilder sb8 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                            sb8.append("Selected remote version of ");
                            sb8.append(str);
                            sb8.append(", version >= ");
                            sb8.append(i3);
                            Log.i("DynamiteModule", sb8.toString());
                            synchronized (DynamiteModule.class) {
                                zzqVar = k;
                                if (zzqVar != null) {
                                    throw new LoadingException("DynamiteLoaderV2 was not cached.");
                                }
                                q6cVar2 = (q6c) threadLocal.get();
                                if (q6cVar2 != null) {
                                }
                                throw new LoadingException("No result cursor");
                            }
                        }
                        StringBuilder sb9 = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(i3).length());
                        sb9.append("Selected remote version of ");
                        sb9.append(str);
                        sb9.append(", version >= ");
                        sb9.append(i3);
                        Log.i("DynamiteModule", sb9.toString());
                        zzpVarD = d(context);
                        if (zzpVarD != null) {
                            throw new LoadingException("Failed to create IDynamiteLoader.");
                        }
                        iZzi = zzpVarD.zzi();
                        if (iZzi >= 3) {
                            q6cVar = (q6c) threadLocal.get();
                            if (q6cVar != null) {
                                throw new LoadingException("No cached result cursor holder");
                            }
                            iObjectWrapperZze = zzpVarD.zzk(ObjectWrapper.wrap(context), str, i3, ObjectWrapper.wrap(q6cVar.a));
                        } else if (iZzi == 2) {
                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                            iObjectWrapperZze = zzpVarD.zzg(ObjectWrapper.wrap(context), str, i3);
                        } else {
                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                            iObjectWrapperZze = zzpVarD.zze(ObjectWrapper.wrap(context), str, i3);
                        }
                        objUnwrap = ObjectWrapper.unwrap(iObjectWrapperZze);
                        if (objUnwrap != null) {
                            throw new LoadingException("Failed to load remote module.");
                        }
                        dynamiteModule = new DynamiteModule((Context) objUnwrap);
                        if (jLongValue == 0) {
                            h.remove();
                        } else {
                            h.set(l);
                        }
                        cursor = q6cVar4.a;
                        if (cursor != null) {
                            cursor.close();
                        }
                        g.set(q6cVar3);
                        return dynamiteModule;
                    }
                }
            }
            int i7 = selectionResultSelectModule.localVersion;
            int i8 = selectionResultSelectModule.remoteVersion;
            StringBuilder sb10 = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(i7).length() + 23 + String.valueOf(i8).length() + 1);
            sb10.append("No acceptable module ");
            sb10.append(str);
            sb10.append(" found. Local version is ");
            sb10.append(i7);
            sb10.append(" and remote version is ");
            sb10.append(i8);
            sb10.append(".");
            throw new LoadingException(sb10.toString());
        } catch (Throwable th2) {
            if (jLongValue == 0) {
                h.remove();
            } else {
                h.set(l);
            }
            Cursor cursor4 = q6cVar4.a;
            if (cursor4 != null) {
                cursor4.close();
            }
            g.set(q6cVar3);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0184  */
    /* JADX WARN: Code duplicated, block: B:112:0x019c A[Catch: all -> 0x00f4, TRY_ENTER, TRY_LEAVE, TryCatch #9 {all -> 0x00f4, blocks: (B:4:0x0006, B:64:0x00e9, B:66:0x00ef, B:74:0x011d, B:104:0x0187, B:112:0x019c, B:130:0x01f9, B:131:0x01fc, B:125:0x01f0, B:72:0x00fa, B:133:0x01fe, B:5:0x0007, B:8:0x000e, B:9:0x002a, B:62:0x00e6, B:22:0x004e, B:45:0x00a5, B:48:0x00a8, B:55:0x00c0, B:63:0x00e8, B:61:0x00c6), top: B:144:0x0006, inners: #5, #6 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00b4 A[Catch: all -> 0x003b, TryCatch #11 {all -> 0x003b, blocks: (B:10:0x002b, B:12:0x0037, B:52:0x00bd, B:17:0x0040, B:19:0x0047, B:21:0x004d, B:26:0x0054, B:28:0x0058, B:31:0x0061, B:33:0x0069, B:36:0x0070, B:43:0x009c, B:44:0x00a4, B:39:0x0077, B:41:0x007d, B:42:0x008e, B:47:0x00a7, B:50:0x00aa, B:51:0x00b4, B:18:0x0043), top: B:147:0x002b, inners: #12 }] */
    public static int zza(Context context, String str, boolean z) {
        Throwable th;
        RemoteException remoteException;
        Cursor cursor;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = b;
                boolean z2 = true;
                Cursor cursor2 = null;
                int iZzf = 0;
                if (bool == null) {
                    try {
                        Field declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField("sClassLoader");
                        synchronized (declaredField.getDeclaringClass()) {
                            try {
                                ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                                if (classLoader == ClassLoader.getSystemClassLoader()) {
                                    bool = Boolean.FALSE;
                                } else if (classLoader != null) {
                                    try {
                                        c(classLoader);
                                    } catch (LoadingException unused) {
                                    }
                                    bool = Boolean.TRUE;
                                } else {
                                    if (!a(context)) {
                                        return 0;
                                    }
                                    if (d) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    } else {
                                        Boolean bool2 = Boolean.TRUE;
                                        if (bool2.equals(null)) {
                                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                                            bool = Boolean.FALSE;
                                        } else {
                                            try {
                                                int iB = b(context, str, z, true);
                                                String str2 = c;
                                                if (str2 != null && !str2.isEmpty()) {
                                                    ClassLoader classLoaderZza = zzb.zza();
                                                    if (classLoaderZza == null) {
                                                        if (Build.VERSION.SDK_INT >= 29) {
                                                            zu2.a();
                                                            String str3 = c;
                                                            Preconditions.checkNotNull(str3);
                                                            classLoaderZza = yu2.a(ClassLoader.getSystemClassLoader(), str3);
                                                        } else {
                                                            String str4 = c;
                                                            Preconditions.checkNotNull(str4);
                                                            classLoaderZza = new y2b(str4, ClassLoader.getSystemClassLoader());
                                                        }
                                                    }
                                                    c(classLoaderZza);
                                                    declaredField.set(null, classLoaderZza);
                                                    b = bool2;
                                                    return iB;
                                                }
                                                return iB;
                                            } catch (LoadingException unused2) {
                                                declaredField.set(null, ClassLoader.getSystemClassLoader());
                                                bool = Boolean.FALSE;
                                            }
                                        }
                                    }
                                }
                                b = bool;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        String string = e2.toString();
                        StringBuilder sb = new StringBuilder(string.length() + 30);
                        sb.append("Failed to load module via V2: ");
                        sb.append(string);
                        Log.w("DynamiteModule", sb.toString());
                        bool = Boolean.FALSE;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return b(context, str, z, false);
                    } catch (LoadingException e3) {
                        String message = e3.getMessage();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(message).length() + 42);
                        sb2.append("Failed to retrieve remote module version: ");
                        sb2.append(message);
                        Log.w("DynamiteModule", sb2.toString());
                        return 0;
                    }
                }
                zzp zzpVarD = d(context);
                if (zzpVarD != null) {
                    try {
                        try {
                            int iZzi = zzpVarD.zzi();
                            if (iZzi >= 3) {
                                ThreadLocal threadLocal = g;
                                q6c q6cVar = (q6c) threadLocal.get();
                                if (q6cVar == null || (cursor = q6cVar.a) == null) {
                                    Cursor cursor3 = (Cursor) ObjectWrapper.unwrap(zzpVarD.zzj(ObjectWrapper.wrap(context), str, z, ((Long) h.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i2 = cursor3.getInt(0);
                                                if (i2 > 0) {
                                                    q6c q6cVar2 = (q6c) threadLocal.get();
                                                    if (q6cVar2 == null || q6cVar2.a != null) {
                                                        z2 = false;
                                                    } else {
                                                        q6cVar2.a = cursor3;
                                                    }
                                                    cursor2 = z2 ? null : cursor3;
                                                }
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                iZzf = i2;
                                            } else {
                                                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                                if (cursor3 != null) {
                                                    cursor3.close();
                                                }
                                            }
                                        } catch (RemoteException e4) {
                                            remoteException = e4;
                                            cursor2 = cursor3;
                                            String message2 = remoteException.getMessage();
                                            StringBuilder sb3 = new StringBuilder(String.valueOf(message2).length() + 42);
                                            sb3.append("Failed to retrieve remote module version: ");
                                            sb3.append(message2);
                                            Log.w("DynamiteModule", sb3.toString());
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            cursor2 = cursor3;
                                            if (cursor2 == null) {
                                                throw th;
                                            }
                                            cursor2.close();
                                            throw th;
                                        }
                                    } else {
                                        Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                                        if (cursor3 != null) {
                                            cursor3.close();
                                        }
                                    }
                                } else {
                                    iZzf = cursor.getInt(0);
                                }
                            } else if (iZzi == 2) {
                                Log.w("DynamiteModule", "IDynamite loader version = 2, no high precision latency measurement.");
                                iZzf = zzpVarD.zzh(ObjectWrapper.wrap(context), str, z);
                            } else {
                                Log.w("DynamiteModule", "IDynamite loader version < 2, falling back to getModuleVersion2");
                                iZzf = zzpVarD.zzf(ObjectWrapper.wrap(context), str, z);
                            }
                        } catch (RemoteException e5) {
                            remoteException = e5;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
                return iZzf;
            }
        } catch (Throwable th5) {
            CrashUtils.addDynamiteErrorToDropBox(context, th5);
            throw th5;
        }
    }

    public Context getModuleContext() {
        return this.a;
    }

    public IBinder instantiate(String str) throws LoadingException {
        try {
            return (IBinder) this.a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e2);
        }
    }
}

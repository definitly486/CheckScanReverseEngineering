package com.google.android.gms.internal.measurement;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import defpackage.ki0;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrx extends zzsy {
    public final Context a;
    public final zzsd b;
    public final Object c = new Object();
    public String d;

    public /* synthetic */ zzrx(zzrw zzrwVar) {
        this.b = new zzsd(zzrwVar.b);
        this.a = zzrwVar.a;
    }

    public static zzrw zza(Context context) {
        return new zzrw(context);
    }

    @Override // com.google.android.gms.internal.measurement.zzsy
    public final zzsd a() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.measurement.zzsy
    public final Uri b(Uri uri) throws zzsi {
        if (c(uri)) {
            throw new zzsi("Operation across authorities is not allowed.");
        }
        File fileZzg = zzg(uri);
        zzsb zzsbVar = new zzsb(0);
        zzsbVar.zza(fileZzg);
        return zzsbVar.zzb();
    }

    public final boolean c(Uri uri) {
        return (TextUtils.isEmpty(uri.getAuthority()) || this.a.getPackageName().equals(uri.getAuthority())) ? false : true;
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final String zzc() {
        return "android";
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final InputStream zzd(Uri uri) throws zzsg {
        if (c(uri)) {
            throw new zzsg("Android backend cannot perform remote operations without a remote backend");
        }
        return zzsl.zzb(zzsc.zza(b(uri)));
    }

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final boolean zze(Uri uri) throws zzsg {
        if (c(uri)) {
            throw new zzsg("Android backend cannot perform remote operations without a remote backend");
        }
        return zzsc.zza(b(uri)).exists();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:53:0x010f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0116 A[Catch: all -> 0x0129, TryCatch #0 {all -> 0x0129, blocks: (B:55:0x0112, B:57:0x0116, B:60:0x012b), top: B:79:0x0112 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0137  */
    /* JADX WARN: Code duplicated, block: B:79:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.measurement.zzsx
    public final File zzg(Uri uri) throws IOException {
        File externalFilesDir;
        Account account;
        File file;
        String absolutePath;
        if (c(uri)) {
            ki0.d("operation is not permitted in other authorities.");
            return null;
        }
        Context context = this.a;
        if (!uri.getScheme().equals("android")) {
            throw new zzsi("Scheme must be 'android'");
        }
        if (uri.getPathSegments().isEmpty()) {
            throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
        }
        if (!TextUtils.isEmpty(uri.getQuery())) {
            throw new zzsi("Did not expect uri to have query");
        }
        ArrayList arrayList = new ArrayList(uri.getPathSegments());
        String str = (String) arrayList.get(0);
        switch (str.hashCode()) {
            case -1820761141:
                if (str.equals("external")) {
                    externalFilesDir = context.getExternalFilesDir(null);
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.zzc(context)) {
                        synchronized (this.c) {
                            try {
                                absolutePath = this.d;
                                if (absolutePath == null) {
                                    absolutePath = zzry.zza(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                    this.d = absolutePath;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                        if (!file.getAbsolutePath().startsWith(absolutePath)) {
                            throw new zzsg("Cannot access credential-protected data from direct boot");
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 94416770:
                if (str.equals("cache")) {
                    externalFilesDir = context.getCacheDir();
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.zzc(context)) {
                        synchronized (this.c) {
                            absolutePath = this.d;
                            if (absolutePath == null) {
                                absolutePath = zzry.zza(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                this.d = absolutePath;
                            }
                            if (!file.getAbsolutePath().startsWith(absolutePath)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 97434231:
                if (str.equals("files")) {
                    externalFilesDir = zzry.zza(context);
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.zzc(context)) {
                        synchronized (this.c) {
                            absolutePath = this.d;
                            if (absolutePath == null) {
                                absolutePath = zzry.zza(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                this.d = absolutePath;
                            }
                            if (!file.getAbsolutePath().startsWith(absolutePath)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 835260319:
                if (str.equals("managed")) {
                    File file2 = new File(zzry.zza(context), "managed");
                    if (arrayList.size() >= 3) {
                        try {
                            String str2 = (String) arrayList.get(2);
                            Account account2 = zzrv.zza;
                            if ("shared".equals(str2)) {
                                account = zzrv.zza;
                            } else {
                                int iIndexOf = str2.indexOf(58);
                                zzsq.zza(iIndexOf >= 0, "Malformed account", new Object[0]);
                                account = new Account(str2.substring(iIndexOf + 1), str2.substring(0, iIndexOf));
                            }
                            if (!zzrv.zza.equals(account)) {
                                throw new zzsi("AccountManager cannot be null");
                            }
                        } catch (IllegalArgumentException e) {
                            throw new zzsi(e);
                        }
                    }
                    externalFilesDir = file2;
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.zzc(context)) {
                        synchronized (this.c) {
                            absolutePath = this.d;
                            if (absolutePath == null) {
                                absolutePath = zzry.zza(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                this.d = absolutePath;
                            }
                            if (!file.getAbsolutePath().startsWith(absolutePath)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 988548496:
                if (str.equals("directboot-cache")) {
                    externalFilesDir = context.createDeviceProtectedStorageContext().getCacheDir();
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.zzc(context)) {
                        synchronized (this.c) {
                            absolutePath = this.d;
                            if (absolutePath == null) {
                                absolutePath = zzry.zza(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                this.d = absolutePath;
                            }
                            if (!file.getAbsolutePath().startsWith(absolutePath)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            case 991565957:
                if (str.equals("directboot-files")) {
                    externalFilesDir = context.createDeviceProtectedStorageContext().getFilesDir();
                    file = new File(externalFilesDir, TextUtils.join(File.separator, arrayList.subList(1, arrayList.size())));
                    if (!zzky.zzc(context)) {
                        synchronized (this.c) {
                            absolutePath = this.d;
                            if (absolutePath == null) {
                                absolutePath = zzry.zza(context.createDeviceProtectedStorageContext()).getParentFile().getAbsolutePath();
                                this.d = absolutePath;
                            }
                            if (!file.getAbsolutePath().startsWith(absolutePath)) {
                                throw new zzsg("Cannot access credential-protected data from direct boot");
                            }
                        }
                    }
                    return file;
                }
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
            default:
                throw new zzsi(String.format("Path must start with a valid logical location: %s", uri));
        }
    }
}

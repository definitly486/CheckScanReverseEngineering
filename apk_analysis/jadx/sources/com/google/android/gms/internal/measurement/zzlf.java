package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import defpackage.nf6;
import defpackage.rz5;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlf {
    public static volatile rz5 a;

    /* JADX WARN: Code duplicated, block: B:20:0x0036 A[Catch: all -> 0x0022, TryCatch #2 {all -> 0x0022, blocks: (B:6:0x0007, B:8:0x000b, B:10:0x0019, B:20:0x0036, B:76:0x017a, B:15:0x0025, B:17:0x002d, B:21:0x003a, B:23:0x0040, B:25:0x0046, B:27:0x004e, B:75:0x0176, B:77:0x017d, B:78:0x0180, B:79:0x0181, B:28:0x0052, B:30:0x0056, B:31:0x0063, B:33:0x0069, B:39:0x007f, B:41:0x0085, B:42:0x0091, B:62:0x015a, B:63:0x015d, B:71:0x016d, B:70:0x016a, B:72:0x016e, B:73:0x0173, B:74:0x0174, B:34:0x006f, B:38:0x0076), top: B:87:0x0007, inners: #1 }] */
    public static rz5 zza(Context context) {
        rz5 rz5Var;
        rz5 nf6Var;
        rz5 nf6Var2;
        rz5 rz5Var2 = a;
        if (rz5Var2 != null) {
            return rz5Var2;
        }
        synchronized (zzlf.class) {
            try {
                rz5Var = a;
                if (rz5Var == null) {
                    String str = Build.TYPE;
                    String str2 = Build.TAGS;
                    ArrayMap arrayMap = zzlg.a;
                    if (!str.equals("eng") && !str.equals("userdebug")) {
                        rz5Var = defpackage.l.b;
                    } else if (str2.contains("dev-keys") || str2.contains("test-keys")) {
                        Context contextCreateDeviceProtectedStorageContext = (!zzky.zza() || context.isDeviceProtectedStorage()) ? context : context.createDeviceProtectedStorageContext();
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            StrictMode.allowThreadDiskWrites();
                            char c = 0;
                            try {
                                File file = new File(contextCreateDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                                nf6Var = file.exists() ? new nf6(file) : defpackage.l.b;
                            } catch (RuntimeException e) {
                                Log.e("HermeticFileOverrides", "no data dir", e);
                                nf6Var = defpackage.l.b;
                            }
                            if (nf6Var.b()) {
                                File file2 = (File) nf6Var.a();
                                try {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                    try {
                                        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
                                        HashMap map = new HashMap();
                                        while (true) {
                                            String line = bufferedReader.readLine();
                                            if (line == null) {
                                                break;
                                            }
                                            String[] strArrSplit = line.split(" ", 3);
                                            if (strArrSplit.length != 3) {
                                                StringBuilder sb = new StringBuilder(line.length() + 9);
                                                sb.append("Invalid: ");
                                                sb.append(line);
                                                Log.e("HermeticFileOverrides", sb.toString());
                                            } else {
                                                String str3 = new String(strArrSplit[c]);
                                                String strDecode = Uri.decode(new String(strArrSplit[1]));
                                                String strDecode2 = (String) map.get(strArrSplit[2]);
                                                if (strDecode2 == null) {
                                                    String str4 = new String(strArrSplit[2]);
                                                    strDecode2 = Uri.decode(str4);
                                                    if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                        map.put(str4, strDecode2);
                                                    }
                                                }
                                                SimpleArrayMap simpleArrayMap2 = (SimpleArrayMap) simpleArrayMap.get(str3);
                                                if (simpleArrayMap2 == null) {
                                                    simpleArrayMap2 = new SimpleArrayMap();
                                                    simpleArrayMap.put(str3, simpleArrayMap2);
                                                }
                                                simpleArrayMap2.put(strDecode, strDecode2);
                                                c = 0;
                                            }
                                        }
                                        String string = file2.toString();
                                        String packageName = contextCreateDeviceProtectedStorageContext.getPackageName();
                                        StringBuilder sb2 = new StringBuilder(string.length() + 28 + String.valueOf(packageName).length());
                                        sb2.append("Parsed ");
                                        sb2.append(string);
                                        sb2.append(" for Android package ");
                                        sb2.append(packageName);
                                        Log.w("HermeticFileOverrides", sb2.toString());
                                        zzle zzleVar = new zzle(simpleArrayMap);
                                        bufferedReader.close();
                                        nf6Var2 = new nf6(zzleVar);
                                    } catch (Throwable th) {
                                        try {
                                            bufferedReader.close();
                                            throw th;
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                            throw th;
                                        }
                                    }
                                } catch (IOException e2) {
                                    throw new RuntimeException(e2);
                                }
                            } else {
                                nf6Var2 = defpackage.l.b;
                            }
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            rz5Var = nf6Var2;
                        } catch (Throwable th3) {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            throw th3;
                        }
                    } else {
                        rz5Var = defpackage.l.b;
                    }
                    a = rz5Var;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        return rz5Var;
    }
}

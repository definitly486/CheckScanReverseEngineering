package com.tapjoy;

import android.content.Context;
import androidx.webkit.ProxyConfig;
import com.tapjoy.TapjoyCache;
import com.tapjoy.internal.r2;
import com.tapjoy.internal.s2;
import defpackage.al5;
import defpackage.cl4;
import defpackage.ex0;
import defpackage.fh8;
import defpackage.ha1;
import defpackage.j59;
import defpackage.jg;
import defpackage.jr;
import defpackage.kk8;
import defpackage.m96;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.ra8;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class TapjoyCache {
    public final Context a;
    public final File b;
    public final Vector c;
    public final ExecutorService d;
    public final cl4 e;
    public final r2 f;

    public TapjoyCache(Context context) {
        context.getClass();
        this.a = context;
        File file = new File(context.getFilesDir(), TapjoyCacheKt.CACHE_DIRECTORY_NAME);
        this.b = file;
        this.c = new Vector();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        executorServiceNewSingleThreadExecutor.getClass();
        this.d = executorServiceNewSingleThreadExecutor;
        this.e = new fh8(new al5(this, 1));
        this.f = new r2();
        file.mkdirs();
        a();
    }

    public static final void a(TapjoyCache tapjoyCache, String str, nl3 nl3Var, long j, String str2) {
        File file = new File(tapjoyCache.b, UUID.randomUUID() + ".txt");
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                jg.f("Failed to create new cache file: ", e.getMessage());
            }
        }
        try {
            try {
                TapjoyLog.d("Downloading URL to cache: " + str);
                r2 r2Var = tapjoyCache.f;
                mx2 mx2Var = mx2.b;
                r2Var.getClass();
                str.getClass();
                s2 s2VarA = r2.a(str, r2.a(mx2Var), null, null, null);
                if (s2VarA.a != 200) {
                    tapjoyCache.c.remove(str);
                    if (nl3Var != null) {
                        nl3Var.invoke(Boolean.FALSE);
                    }
                    tapjoyCache.c.remove(str);
                    return;
                }
                String str3 = s2VarA.b;
                if (str3 != null) {
                    byte[] bytes = str3.getBytes(ha1.b);
                    bytes.getClass();
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            ex0.a(byteArrayInputStream, fileOutputStream);
                            fileOutputStream.close();
                            byteArrayInputStream.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                m96.c(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        try {
                            throw th3;
                        } catch (Throwable th4) {
                            m96.c(byteArrayInputStream, th3);
                            throw th4;
                        }
                    }
                }
                long jCurrentTimeMillis = ((j == 0 ? TapjoyCacheKt.DEFAULT_TIME_TO_LIVE : j) * 1000) + System.currentTimeMillis();
                String absolutePath = file.getAbsolutePath();
                absolutePath.getClass();
                ((TJKeyValueStorage) tapjoyCache.e.getValue()).setValue(str, new TapjoyCacheData(str, absolutePath, jCurrentTimeMillis, str2).toJson());
                TapjoyLog.d("Successfully cached URL: " + str + " with offerId: " + str2);
                if (nl3Var != null) {
                    nl3Var.invoke(Boolean.TRUE);
                }
                tapjoyCache.c.remove(str);
            } catch (Exception e2) {
                TapjoyLog.e("Failed to cache URL: " + str + " " + e2.getMessage());
                file.delete();
                if (nl3Var != null) {
                    nl3Var.invoke(Boolean.FALSE);
                }
            }
        } catch (Throwable th5) {
            tapjoyCache.c.remove(str);
            throw th5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void cacheUrl$default(TapjoyCache tapjoyCache, String str, String str2, long j, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            j = TapjoyCacheKt.DEFAULT_TIME_TO_LIVE;
        }
        if ((i & 8) != 0) {
            nl3Var = null;
        }
        tapjoyCache.cacheUrl(str, str2, j, nl3Var);
    }

    public final void cacheUrl(String str, String str2, long j, nl3<? super Boolean, j59> nl3Var) {
        if (str == null || str.length() == 0) {
            if (nl3Var != null) {
                nl3Var.invoke(Boolean.FALSE);
            }
        } else {
            if (this.c.contains(str)) {
                TapjoyLog.d("URL is already being downloaded: ".concat(str));
                if (nl3Var != null) {
                    nl3Var.invoke(Boolean.TRUE);
                    return;
                }
                return;
            }
            if (a(str) == null) {
                this.c.add(str);
                this.d.submit(new kk8(this, str, nl3Var, j, str2));
            } else {
                TapjoyLog.d("URL is already cached and valid: ".concat(str));
                if (nl3Var != null) {
                    nl3Var.invoke(Boolean.TRUE);
                }
            }
        }
    }

    public final void cacheUrlGroup(final JSONArray jSONArray, final TJTaskHandler<Boolean> tJTaskHandler) {
        tJTaskHandler.getClass();
        if (jSONArray == null || jSONArray.length() == 0) {
            tJTaskHandler.onComplete(Boolean.FALSE);
        } else {
            this.d.submit(new Runnable() { // from class: jk8
                @Override // java.lang.Runnable
                public final void run() {
                    TapjoyCache.a(jSONArray, this, tJTaskHandler);
                }
            });
        }
    }

    public final String cachedAssetsToJSON() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Map<String, ?> all = ((TJKeyValueStorage) this.e.getValue()).getAll();
        if (all != null) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                TapjoyCacheData tapjoyCacheDataFromJson = TapjoyCacheData.Companion.fromJson(String.valueOf(value));
                if (tapjoyCacheDataFromJson != null && !tapjoyCacheDataFromJson.isExpired() && new File(tapjoyCacheDataFromJson.getLocalFilePath()).exists()) {
                    jSONObject.put(key, new JSONObject(String.valueOf(value)));
                }
            }
        }
        String string = jSONObject.toString();
        string.getClass();
        return string;
    }

    public final void clearUrlCache() {
        TapjoyLog.d("Cleaning Tapjoy cache!");
        a(this.b);
        if (this.b.mkdirs()) {
            jg.f("Created new cache directory at: ", this.b.getPath());
        }
        ((TJKeyValueStorage) this.e.getValue()).reset();
    }

    public final TapjoyCacheData getCachedDataForURL(String str) {
        str.getClass();
        return a(str);
    }

    public final String getPathOfCachedURL(String str) {
        String localFilePath;
        str.getClass();
        TapjoyLog.d("getPathOfCachedURL -- key: ".concat(str));
        TapjoyCacheData tapjoyCacheDataA = a(str);
        if (tapjoyCacheDataA == null || (localFilePath = tapjoyCacheDataA.getLocalFilePath()) == null) {
            return null;
        }
        return "file://".concat(localFilePath);
    }

    public final boolean removeUrlCache(String str) {
        str.getClass();
        if (str.length() == 0 || !((TJKeyValueStorage) this.e.getValue()).contains(str)) {
            return false;
        }
        String string = ((TJKeyValueStorage) this.e.getValue()).getString(str, "");
        if (string != null && string.length() != 0) {
            a(new File(string));
        }
        ((TJKeyValueStorage) this.e.getValue()).remove(str);
        TapjoyLog.d("removeUrlCache -- key: ".concat(str));
        return true;
    }

    public final void a() {
        String localFilePath;
        Map<String, ?> all = ((TJKeyValueStorage) this.e.getValue()).getAll();
        if (all != null) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                TapjoyCacheData tapjoyCacheDataFromJson = TapjoyCacheData.Companion.fromJson(String.valueOf(entry.getValue()));
                File file = (tapjoyCacheDataFromJson == null || (localFilePath = tapjoyCacheDataFromJson.getLocalFilePath()) == null) ? null : new File(localFilePath);
                if (tapjoyCacheDataFromJson == null || file == null || !file.exists() || tapjoyCacheDataFromJson.isExpired() || !ra8.C(key, ProxyConfig.MATCH_HTTP, false)) {
                    if (file != null) {
                        file.delete();
                    }
                    ((TJKeyValueStorage) this.e.getValue()).remove(key);
                    TapjoyLog.d("Removed invalid or expired cache entry for key: " + key);
                }
            }
        }
    }

    public static final TJKeyValueStorage a(TapjoyCache tapjoyCache) {
        return new TJKeyValueStorage(tapjoyCache.a, TapjoyCacheKt.PREF_TAPJOY_CACHE);
    }

    public static final void a(JSONArray jSONArray, TapjoyCache tapjoyCache, TJTaskHandler tJTaskHandler) {
        TapjoyCache tapjoyCache2;
        try {
            TapjoyLog.d("Starting to cache asset group size of " + jSONArray.length());
            int length = jSONArray.length();
            int i = 0;
            while (i < length) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    tapjoyCache2 = tapjoyCache;
                    try {
                        cacheUrl$default(tapjoyCache2, jSONObject.getString("url"), jSONObject.optString(TapjoyConstants.TJC_PLACEMENT_OFFER_ID, null), jSONObject.optLong("ttl", TapjoyCacheKt.DEFAULT_TIME_TO_LIVE), null, 8, null);
                    } catch (Exception e) {
                        e = e;
                        TapjoyLog.w("Failed to parse asset at index " + i + " in group - " + e.getMessage());
                    }
                } catch (Exception e2) {
                    e = e2;
                    tapjoyCache2 = tapjoyCache;
                }
                i++;
                tapjoyCache = tapjoyCache2;
            }
            tJTaskHandler.onComplete(Boolean.TRUE);
        } catch (Exception e3) {
            TapjoyLog.w("Invalid JSON array string for group caching. - " + e3.getMessage());
            tJTaskHandler.onComplete(Boolean.FALSE);
        }
    }

    public final TapjoyCacheData a(String str) {
        String string = ((TJKeyValueStorage) this.e.getValue()).getString(str, null);
        if (string == null) {
            return null;
        }
        TapjoyCacheData tapjoyCacheDataFromJson = TapjoyCacheData.Companion.fromJson(string);
        if (tapjoyCacheDataFromJson != null && !tapjoyCacheDataFromJson.isExpired() && new File(tapjoyCacheDataFromJson.getLocalFilePath()).exists()) {
            return tapjoyCacheDataFromJson;
        }
        removeUrlCache(str);
        return null;
    }

    public static void a(File file) {
        File[] fileArrListFiles;
        if (file == null) {
            return;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length != 0) {
            jr jrVar = new jr(fileArrListFiles);
            while (jrVar.hasNext()) {
                a((File) jrVar.next());
            }
        }
        TapjoyLog.d("deleteFileOrDirectory: " + file.getAbsolutePath());
        file.delete();
    }
}

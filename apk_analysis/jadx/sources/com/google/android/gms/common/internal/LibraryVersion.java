package com.google.android.gms.common.internal;

import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class LibraryVersion {
    public static final GmsLogger b = new GmsLogger("LibraryVersion", "");
    public static final LibraryVersion c = new LibraryVersion();
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    public static LibraryVersion getInstance() {
        return c;
    }

    @Deprecated
    public String getVersion(String str) throws Throwable {
        IOException e;
        String str2;
        InputStream resourceAsStream;
        GmsLogger gmsLogger = b;
        Preconditions.checkNotEmpty(str, "Please provide a valid libraryName");
        ConcurrentHashMap concurrentHashMap = this.a;
        if (concurrentHashMap.containsKey(str)) {
            return (String) concurrentHashMap.get(str);
        }
        Properties properties = new Properties();
        InputStream inputStream = null;
        property = null;
        String property = null;
        inputStream = null;
        try {
            try {
                resourceAsStream = LibraryVersion.class.getResourceAsStream("/" + str + ".properties");
                try {
                    if (resourceAsStream != null) {
                        properties.load(resourceAsStream);
                        property = properties.getProperty("version", null);
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(property).length());
                        sb.append(str);
                        sb.append(" version is ");
                        sb.append(property);
                        gmsLogger.v("LibraryVersion", sb.toString());
                    } else {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 43);
                        sb2.append("Failed to get app version for libraryName: ");
                        sb2.append(str);
                        gmsLogger.w("LibraryVersion", sb2.toString());
                    }
                } catch (IOException e2) {
                    e = e2;
                    String str3 = property;
                    inputStream = resourceAsStream;
                    str2 = str3;
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 43);
                    sb3.append("Failed to get app version for libraryName: ");
                    sb3.append(str);
                    gmsLogger.e("LibraryVersion", sb3.toString(), e);
                    InputStream inputStream2 = inputStream;
                    property = str2;
                    resourceAsStream = inputStream2;
                } catch (Throwable th) {
                    th = th;
                    inputStream = resourceAsStream;
                    if (inputStream != null) {
                        IOUtils.closeQuietly(inputStream);
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                str2 = null;
            }
            if (resourceAsStream != null) {
                IOUtils.closeQuietly(resourceAsStream);
            }
            if (property == null) {
                gmsLogger.d("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
                property = "UNKNOWN";
            }
            concurrentHashMap.put(str, property);
            return property;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}

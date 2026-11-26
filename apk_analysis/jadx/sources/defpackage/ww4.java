package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import androidx.media3.muxer.WebmConstants;
import iy6.a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class ww4 {
    public static final HashMap a = new HashMap();
    public static final HashSet b = new HashSet();
    public static final byte[] c = {80, 75, 3, 4};
    public static final byte[] d = {31, -117, 8};

    public static xx4<nw4> a(final String str, Callable<wx4<nw4>> callable, Runnable runnable) {
        nw4 nw4VarA = str == null ? null : ow4.b.a(str);
        xx4<nw4> xx4Var = nw4VarA != null ? new xx4<>(nw4VarA) : null;
        HashMap map = a;
        if (str != null && map.containsKey(str)) {
            xx4Var = (xx4) map.get(str);
        }
        if (xx4Var != null) {
            if (runnable != null) {
                runnable.run();
            }
            return xx4Var;
        }
        xx4<nw4> xx4Var2 = new xx4<>(callable, false);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            xx4Var2.b(new tx4() { // from class: tw4
                @Override // defpackage.tx4
                public final void onResult(Object obj) {
                    HashMap map2 = ww4.a;
                    map2.remove(str);
                    atomicBoolean.set(true);
                    if (map2.size() == 0) {
                        ww4.j(true);
                    }
                }
            });
            xx4Var2.a(new tx4() { // from class: uw4
                @Override // defpackage.tx4
                public final void onResult(Object obj) {
                    HashMap map2 = ww4.a;
                    map2.remove(str);
                    atomicBoolean.set(true);
                    if (map2.size() == 0) {
                        ww4.j(true);
                    }
                }
            });
            if (!atomicBoolean.get()) {
                map.put(str, xx4Var2);
                if (map.size() == 1) {
                    j(false);
                }
            }
        }
        return xx4Var2;
    }

    public static wx4<nw4> b(Context context, String str, String str2) {
        nw4 nw4VarA = str2 == null ? null : ow4.b.a(str2);
        if (nw4VarA != null) {
            return new wx4<>(nw4VarA);
        }
        try {
            return c(context, context.getAssets().open(str), str2);
        } catch (IOException e) {
            return new wx4<>(e);
        }
    }

    public static wx4<nw4> c(Context context, InputStream inputStream, String str) {
        nw4 nw4VarA = str == null ? null : ow4.b.a(str);
        if (nw4VarA != null) {
            return new wx4<>(nw4VarA);
        }
        try {
            iy6 iy6Var = new iy6(vp3.g(inputStream));
            if (i(iy6Var, c).booleanValue()) {
                return g(context, new ZipInputStream(iy6Var.new a()), str);
            }
            if (i(iy6Var, d).booleanValue()) {
                return d(new GZIPInputStream(iy6Var.new a()), str);
            }
            String[] strArr = td4.f;
            return e(new he4(iy6Var), str, true);
        } catch (IOException e) {
            return new wx4<>(e);
        }
    }

    public static wx4<nw4> d(InputStream inputStream, String str) {
        iy6 iy6Var = new iy6(vp3.g(inputStream));
        String[] strArr = td4.f;
        return e(new he4(iy6Var), str, true);
    }

    public static wx4 e(he4 he4Var, String str, boolean z) {
        try {
            nw4 nw4VarA = str == null ? null : ow4.b.a(str);
            if (nw4VarA != null) {
                return new wx4(nw4VarA);
            }
            nw4 nw4VarA2 = xw4.a(he4Var);
            if (str != null) {
                ow4.b.a.put(str, nw4VarA2);
            }
            return new wx4(nw4VarA2);
        } catch (Exception e) {
            return new wx4(e);
        } finally {
            if (z) {
                ib9.b(he4Var);
            }
        }
    }

    public static wx4<nw4> f(Context context, int i, String str) {
        nw4 nw4VarA = str == null ? null : ow4.b.a(str);
        if (nw4VarA != null) {
            return new wx4<>(nw4VarA);
        }
        try {
            iy6 iy6Var = new iy6(vp3.g(context.getResources().openRawResource(i)));
            if (i(iy6Var, c).booleanValue()) {
                return g(context, new ZipInputStream(iy6Var.new a()), str);
            }
            if (!i(iy6Var, d).booleanValue()) {
                String[] strArr = td4.f;
                return e(new he4(iy6Var), str, true);
            }
            try {
                return d(new GZIPInputStream(iy6Var.new a()), str);
            } catch (IOException e) {
                return new wx4<>(e);
            }
        } catch (Resources.NotFoundException e2) {
            return new wx4<>(e2);
        }
    }

    public static wx4<nw4> g(Context context, ZipInputStream zipInputStream, String str) {
        try {
            return h(context, zipInputStream, str);
        } finally {
            ib9.b(zipInputStream);
        }
    }

    public static wx4<nw4> h(Context context, ZipInputStream zipInputStream, String str) {
        nw4 nw4VarA;
        sx4 sx4Var;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        if (str == null) {
            nw4VarA = null;
        } else {
            try {
                nw4VarA = ow4.b.a(str);
            } catch (IOException e) {
                return new wx4<>(e);
            }
        }
        if (nw4VarA != null) {
            return new wx4<>(nw4VarA);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        nw4 nw4Var = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                iy6 iy6Var = new iy6(vp3.g(zipInputStream));
                String[] strArr = td4.f;
                nw4Var = e(new he4(iy6Var), null, false).a;
            } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                String[] strArrSplit = name.split("/");
                map.put(strArrSplit[strArrSplit.length - 1], BitmapFactory.decodeStream(zipInputStream));
            } else if (name.contains(".ttf") || name.contains(".otf")) {
                String[] strArrSplit2 = name.split("/");
                String str2 = strArrSplit2[strArrSplit2.length - 1];
                String str3 = str2.split("\\.")[0];
                if (context == null) {
                    return new wx4<>(new IllegalStateException("Unable to extract font " + str3 + " please pass a non-null Context parameter"));
                }
                File file = new File(context.getCacheDir(), str2);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i = zipInputStream.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i);
                            }
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileOutputStream2.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                } catch (Throwable th5) {
                    gv4.c("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th5);
                }
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                if (!file.delete()) {
                    gv4.b("Failed to delete temp font file " + file.getAbsolutePath() + ".");
                }
                map2.put(str3, typefaceCreateFromFile);
            } else {
                zipInputStream.closeEntry();
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (nw4Var == null) {
            return new wx4<>(new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : map.entrySet()) {
            String str4 = (String) entry.getKey();
            Iterator it = ((HashMap) nw4Var.c()).values().iterator();
            do {
                if (!it.hasNext()) {
                    sx4Var = null;
                    break;
                }
                sx4Var = (sx4) it.next();
            } while (!sx4Var.d.equals(str4));
            if (sx4Var != null) {
                sx4Var.f = ib9.d((Bitmap) entry.getValue(), sx4Var.a, sx4Var.b);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            boolean z = false;
            for (di3 di3Var : nw4Var.f.values()) {
                if (di3Var.a.equals(entry2.getKey())) {
                    di3Var.d = (Typeface) entry2.getValue();
                    z = true;
                }
            }
            if (!z) {
                gv4.b("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (map.isEmpty()) {
            Iterator it2 = ((HashMap) nw4Var.c()).entrySet().iterator();
            while (it2.hasNext()) {
                sx4 sx4Var2 = (sx4) ((Map.Entry) it2.next()).getValue();
                if (sx4Var2 == null) {
                    return null;
                }
                String str5 = sx4Var2.d;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = WebmConstants.MkvEbmlElement.BLOCK_GROUP;
                if (str5.startsWith("data:") && str5.indexOf("base64,") > 0) {
                    try {
                        byte[] bArrDecode = Base64.decode(str5.substring(str5.indexOf(44) + 1), 0);
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                        if (bitmapDecodeByteArray != null) {
                            sx4Var2.f = ib9.d(bitmapDecodeByteArray, sx4Var2.a, sx4Var2.b);
                        }
                    } catch (IllegalArgumentException e2) {
                        gv4.c("data URL did not have correct base64 format.", e2);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            ow4.b.a.put(str, nw4Var);
        }
        return new wx4<>(nw4Var);
    }

    public static Boolean i(iy6 iy6Var, byte[] bArr) {
        try {
            iy6 iy6VarO = iy6Var.o();
            for (byte b2 : bArr) {
                if (iy6VarO.readByte() != b2) {
                    return Boolean.FALSE;
                }
            }
            iy6VarO.close();
            return Boolean.TRUE;
        } catch (Exception unused) {
            gv4.a.getClass();
            dt dtVar = ah4.a;
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused2) {
            return Boolean.FALSE;
        }
    }

    public static void j(boolean z) {
        ArrayList arrayList = new ArrayList(b);
        for (int i = 0; i < arrayList.size(); i++) {
            ((yx4) arrayList.get(i)).a();
        }
    }

    public static String k(int i, Context context) {
        return ag.d(new StringBuilder("rawRes"), (context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_", i);
    }
}

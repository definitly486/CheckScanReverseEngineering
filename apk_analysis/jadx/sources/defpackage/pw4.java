package defpackage;

import android.content.Context;
import android.util.Pair;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pw4 implements Callable {
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;

    public /* synthetic */ pw4(Context context, String str, String str2) {
        this.b = context;
        this.c = str;
        this.d = str2;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2, types: [th2] */
    /* JADX WARN: Type inference failed for: r5v5 */
    @Override // java.util.concurrent.Callable
    public final Object call() throws Throwable {
        nw4 nw4Var;
        Exception exc;
        Throwable th;
        ?? r5;
        wx4<nw4> wx4Var;
        boolean z;
        nw4 nw4Var2;
        Pair pair;
        wx4<nw4> wx4VarG;
        l93 l93Var;
        fm5 fm5Var;
        Context context = this.b;
        String str = this.c;
        String str2 = this.d;
        om5 om5Var = ah4.b;
        if (om5Var == null) {
            synchronized (om5.class) {
                try {
                    om5Var = ah4.b;
                    if (om5Var == null) {
                        Context applicationContext = context.getApplicationContext();
                        fm5 fm5Var2 = ah4.c;
                        if (fm5Var2 == null) {
                            synchronized (fm5.class) {
                                try {
                                    fm5Var = ah4.c;
                                    if (fm5Var == null) {
                                        fm5Var = new fm5(new ym2(applicationContext));
                                        ah4.c = fm5Var;
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            fm5Var2 = fm5Var;
                        }
                        om5Var = new om5(fm5Var2, new uh2());
                        ah4.b = om5Var;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        om5 om5Var2 = om5Var;
        Object obj = null;
        String str3 = null;
        th2 th2Var = null;
        if (str2 != null) {
            try {
                File fileB = om5Var2.a.b(str);
                if (fileB == null) {
                    pair = null;
                } else {
                    FileInputStream fileInputStream = new FileInputStream(fileB);
                    if (fileB.getAbsolutePath().endsWith(".zip")) {
                        l93Var = l93.ZIP;
                    } else {
                        l93Var = fileB.getAbsolutePath().endsWith(".gz") ? l93.GZIP : l93.JSON;
                    }
                    fileB.getAbsolutePath();
                    gv4.a();
                    pair = new Pair(l93Var, fileInputStream);
                }
            } catch (FileNotFoundException unused) {
            }
            if (pair == null) {
                nw4Var = null;
            } else {
                l93 l93Var2 = (l93) pair.first;
                InputStream inputStream = (InputStream) pair.second;
                int i = om5.a.a[l93Var2.ordinal()];
                if (i == 1) {
                    wx4VarG = ww4.g(context, new ZipInputStream(inputStream), str2);
                } else if (i != 2) {
                    wx4VarG = ww4.d(inputStream, str2);
                } else {
                    try {
                        wx4VarG = ww4.d(new GZIPInputStream(inputStream), str2);
                    } catch (IOException e) {
                        wx4VarG = new wx4<>(e);
                    }
                }
                nw4Var = wx4VarG.a;
                if (nw4Var == null) {
                    nw4Var = null;
                }
            }
        } else {
            nw4Var = null;
        }
        if (nw4Var != null) {
            wx4Var = new wx4<>(nw4Var);
        } else {
            gv4.a();
            gv4.a();
            try {
                try {
                    th2 th2VarA = om5Var2.b.a(str);
                    try {
                        try {
                            z = th2VarA.b.getResponseCode() / 100 == 2;
                        } catch (IOException unused2) {
                        }
                        if (z) {
                            InputStream inputStream2 = th2VarA.b.getInputStream();
                            String contentType = th2VarA.b.getContentType();
                            wx4Var = om5Var2.a(context, str, inputStream2, contentType, str2);
                            nw4 nw4Var3 = wx4Var.a;
                            gv4.a();
                            str3 = contentType;
                        } else {
                            wx4Var = new wx4<>(new IllegalArgumentException(th2VarA.m()));
                        }
                        try {
                            th2VarA.close();
                            obj = str3;
                        } catch (IOException e2) {
                            gv4.c("LottieFetchResult close failed ", e2);
                            obj = str3;
                        }
                    } catch (Exception e3) {
                        exc = e3;
                        th2Var = th2VarA;
                        wx4<nw4> wx4Var2 = new wx4<>(exc);
                        if (th2Var != null) {
                            try {
                                th2Var.close();
                            } catch (IOException e4) {
                                gv4.c("LottieFetchResult close failed ", e4);
                            }
                        }
                        wx4Var = wx4Var2;
                        obj = th2Var;
                    } catch (Throwable th4) {
                        th = th4;
                        r5 = th2VarA;
                        if (r5 == 0) {
                            throw th;
                        }
                        try {
                            r5.close();
                            throw th;
                        } catch (IOException e5) {
                            gv4.c("LottieFetchResult close failed ", e5);
                            throw th;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    r5 = obj;
                }
            } catch (Exception e6) {
                exc = e6;
            }
        }
        if (str2 != null && (nw4Var2 = wx4Var.a) != null) {
            ow4.b.a.put(str2, nw4Var2);
        }
        return wx4Var;
    }
}

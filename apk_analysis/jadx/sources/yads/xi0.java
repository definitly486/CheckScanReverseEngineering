package yads;

import android.content.Context;
import android.os.SystemClock;
import android.webkit.URLUtil;
import defpackage.ra8;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class xi0 implements gv5 {
    public final e4 a;
    public final d9 b;
    public final h9 c;
    public final v2 d;
    public final wn2 e;
    public final boolean f;
    public final WeakReference g;

    public xi0(Context context, bf5 bf5Var, e4 e4Var, d9 d9Var, h9 h9Var, boolean z) {
        wn2 wn2Var;
        v2 v2Var = new v2(bf5Var);
        wn2 wn2Var2 = wn2.c;
        if (wn2Var2 == null) {
            synchronized (wn2.d) {
                wn2Var = wn2.c;
                if (wn2Var == null) {
                    wn2Var = new wn2(context.getApplicationContext());
                    wn2.c = wn2Var;
                }
            }
            wn2Var2 = wn2Var;
        }
        this.a = e4Var;
        this.b = d9Var;
        this.c = h9Var;
        this.d = v2Var;
        this.e = wn2Var2;
        this.f = z;
        this.g = new WeakReference(context);
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:52:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:54:0x010d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0113  */
    /* JADX WARN: Code duplicated, block: B:57:0x0119  */
    @Override // yads.gv5
    public final fv5 a(String str) {
        d00 d00Var;
        zz zzVar;
        String strA;
        String str2;
        zg5 zg5Var;
        this.e.a.getClass();
        boolean z = this.b.C;
        v2 v2Var = this.d;
        Context context = (Context) this.g.get();
        e4 e4Var = this.a;
        d9 d9Var = this.b;
        h9 h9Var = this.c;
        boolean z2 = this.f;
        v2Var.getClass();
        if (context != null) {
            AtomicLong atomicLong = u2.a;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long andSet = jElapsedRealtime - u2.a.getAndSet(jElapsedRealtime);
            if (0 > andSet || andSet >= 1001) {
                zg5 zg5Var2 = zg5.l;
                if (zg5Var2 == null) {
                    synchronized (zg5.k) {
                        zg5Var = zg5.l;
                        if (zg5Var == null) {
                            zg5Var = new zg5();
                            zg5.l = zg5Var;
                        }
                    }
                    zg5Var2 = zg5Var;
                }
                fe5 fe5VarA = zg5Var2.a(context);
                v2Var.d.getClass();
                boolean zA = false;
                if (fe5VarA != null && (str2 = fe5VarA.W) != null) {
                    d00.c.getClass();
                    d00[] d00VarArrValues = d00.values();
                    int length = d00VarArrValues.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            d00Var = null;
                            break;
                        }
                        d00Var = d00VarArrValues[i];
                        if (defpackage.aa4.e(d00Var.b, str2)) {
                            break;
                        }
                        i++;
                    }
                } else {
                    d00Var = null;
                    break;
                }
                if (!z2 && ((!z || d00Var != null) && d00.WEBVIEW != d00Var)) {
                    zzVar = xz.a;
                    v2Var.a.getClass();
                    Map mapSingletonMap = Collections.singletonMap("{CLICK_DEST}", a00.a(zzVar));
                    mapSingletonMap.getClass();
                    strA = v2Var.b.a(str, mapSingletonMap);
                    if (v2Var.e.a(context, strA)) {
                        h9Var.a(7, null);
                        zA = true;
                    } else if (URLUtil.isNetworkUrl(strA)) {
                        zA = v2Var.c.a(context, e4Var, d9Var, h9Var, strA);
                    }
                } else if (str.length() != 0) {
                    Pattern patternCompile = Pattern.compile("http(s?)://");
                    patternCompile.getClass();
                    String strReplaceFirst = patternCompile.matcher(str).replaceFirst("");
                    strReplaceFirst.getClass();
                    d56[] d56VarArrValues = d56.values();
                    int length2 = d56VarArrValues.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length2) {
                            if (!ra8.C(strReplaceFirst, d56VarArrValues[i2].b, false)) {
                                i2++;
                            }
                        } else if (URLUtil.isNetworkUrl(str)) {
                            zzVar = yz.a;
                            v2Var.a.getClass();
                            Map mapSingletonMap2 = Collections.singletonMap("{CLICK_DEST}", a00.a(zzVar));
                            mapSingletonMap2.getClass();
                            strA = v2Var.b.a(str, mapSingletonMap2);
                            zA = v2Var.c.a(context, e4Var, d9Var, h9Var, strA);
                        }
                        zzVar = xz.a;
                        v2Var.a.getClass();
                        Map mapSingletonMap3 = Collections.singletonMap("{CLICK_DEST}", a00.a(zzVar));
                        mapSingletonMap3.getClass();
                        strA = v2Var.b.a(str, mapSingletonMap3);
                        if (v2Var.e.a(context, strA)) {
                            h9Var.a(7, null);
                            zA = true;
                        } else if (URLUtil.isNetworkUrl(strA)) {
                            zA = v2Var.c.a(context, e4Var, d9Var, h9Var, strA);
                        }
                    }
                } else if (URLUtil.isNetworkUrl(str)) {
                    zzVar = yz.a;
                    v2Var.a.getClass();
                    Map mapSingletonMap4 = Collections.singletonMap("{CLICK_DEST}", a00.a(zzVar));
                    mapSingletonMap4.getClass();
                    strA = v2Var.b.a(str, mapSingletonMap4);
                    zA = v2Var.c.a(context, e4Var, d9Var, h9Var, strA);
                } else {
                    zzVar = xz.a;
                    v2Var.a.getClass();
                    Map mapSingletonMap5 = Collections.singletonMap("{CLICK_DEST}", a00.a(zzVar));
                    mapSingletonMap5.getClass();
                    strA = v2Var.b.a(str, mapSingletonMap5);
                    if (v2Var.e.a(context, strA)) {
                        h9Var.a(7, null);
                        zA = true;
                    } else if (URLUtil.isNetworkUrl(strA)) {
                        zA = v2Var.c.a(context, e4Var, d9Var, h9Var, strA);
                    }
                }
                h9Var.a(9, null);
                return zA ? new ev5(d75.DEFAULT, zzVar, strA) : new dv5(d75.DEFAULT);
            }
        }
        return new dv5(d75.DEFAULT);
    }
}

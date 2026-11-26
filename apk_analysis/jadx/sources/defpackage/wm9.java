package defpackage;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import com.my.target.b1;
import com.my.target.t0;
import com.my.target.v2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class wm9 {

    public static class a extends wm9 {
        /* JADX WARN: Code duplicated, block: B:102:0x029e  */
        /* JADX WARN: Code duplicated, block: B:104:0x02de  */
        /* JADX WARN: Code duplicated, block: B:105:0x02e0  */
        /* JADX WARN: Code duplicated, block: B:118:0x01d5 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:120:0x01e2 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:121:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:64:0x01d9  */
        /* JADX WARN: Code duplicated, block: B:66:0x01df  */
        /* JADX WARN: Code duplicated, block: B:72:0x0207 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:73:0x0209  */
        /* JADX WARN: Code duplicated, block: B:75:0x0224  */
        /* JADX WARN: Code duplicated, block: B:78:0x0237  */
        /* JADX WARN: Code duplicated, block: B:79:0x0246  */
        /* JADX WARN: Code duplicated, block: B:81:0x0262  */
        /* JADX WARN: Code duplicated, block: B:83:0x0266  */
        /* JADX WARN: Code duplicated, block: B:85:0x026a  */
        /* JADX WARN: Code duplicated, block: B:87:0x026e  */
        /* JADX WARN: Code duplicated, block: B:89:0x0272  */
        /* JADX WARN: Code duplicated, block: B:91:0x0276  */
        /* JADX WARN: Code duplicated, block: B:92:0x0279  */
        /* JADX WARN: Code duplicated, block: B:93:0x0280  */
        /* JADX WARN: Code duplicated, block: B:94:0x0283  */
        /* JADX WARN: Code duplicated, block: B:95:0x0286  */
        /* JADX WARN: Code duplicated, block: B:96:0x0289  */
        /* JADX WARN: Code duplicated, block: B:99:0x0298  */
        /* JADX WARN: Instruction removed from duplicated block: B:79:0x0246, please report this as an issue */
        public static void a(String str, z2a z2aVar, Map map, t0 t0Var, kt9 kt9Var, v4a v4aVar) {
            z8a z8aVar;
            String strA;
            String strE;
            b1 b1Var;
            t0 t0Var2;
            ArrayList arrayList;
            n6a n6aVar;
            z2a z2aVar2;
            long jCurrentTimeMillis;
            StringBuilder sb;
            HashMap map2;
            int size;
            int i;
            vda vdaVar;
            long j;
            String str2;
            vda vdaVar2;
            String str3;
            String str4;
            ArrayList arrayList2;
            String strJoin;
            String strC;
            int i2;
            String str5;
            l6a l6aVar;
            yn9 yn9Var;
            String str6;
            HashMap map3 = new HashMap(map);
            Context context = kt9Var.a;
            HashMap map4 = new HashMap();
            map4.put("formats", z2aVar.f);
            String str7 = sh5.a;
            map4.put("adman_ver", "5.52.5");
            map4.put("sdk_ver_int", sh5.a);
            tk2 tk2Var = new tk2(1);
            map4.put("preloadvideo", "1");
            String str8 = z2aVar.d;
            if (str8 != null) {
                map4.put("bid_id", str8);
            }
            f72 f72Var = z2aVar.a;
            if (tk2Var.g()) {
                rh5.b.getClass();
                if (!TextUtils.isEmpty(null)) {
                    map4.put("vk_id", null);
                }
                synchronized (f72Var) {
                    map4.putAll(f72Var.a);
                }
            } else {
                map4.putAll(f72Var.b);
            }
            nh5 nh5Var = rh5.b;
            try {
                try {
                    map4.putAll(at9.l.b(nh5Var, tk2Var, t0Var, context));
                    while (true) {
                        if (i <= size) {
                            String str9 = (String) arrayList.get(i);
                            ArrayList arrayList3 = arrayList;
                            j = jCurrentTimeMillis;
                            String strE2 = l2.e(n7.d("https://", str9, "/mobile/"), "/", z2aVar2.e);
                            new ArrayList();
                            new ArrayList();
                            new n4a(pp9.d);
                            vda vdaVarU = new g5a(z2aVar2.g).U(strE2, strA, map2);
                            if (vdaVarU.a) {
                                yn9Var = new yn9(vdaVarU, (String) vdaVarU.c);
                                str6 = null;
                            } else {
                                str6 = null;
                                yn9Var = new yn9(vdaVarU, null);
                            }
                            vda vdaVar3 = yn9Var.a;
                            String str10 = (String) yn9Var.b;
                            if (str10 != null) {
                                String strTrim = str10.trim();
                                if (strTrim.length() == 0) {
                                    y14.r(str6, "AdResponseParser: Empty data");
                                } else {
                                    String strTrim2 = strTrim.trim();
                                    vdaVar = vdaVar3;
                                    if (strTrim2.startsWith("<VAST") || strTrim2.startsWith("<?xml")) {
                                        y14.r(null, "AdResponseParser: Vast is received");
                                    } else if (strTrim.startsWith("{") && strTrim.endsWith("}")) {
                                        y14.r(null, "AdResponseParser: JSON is received");
                                    } else {
                                        y14.r(null, "AdResponseParser: Unsupported data is received");
                                        if (i == size) {
                                            if (sb.length() != 0) {
                                                sb.append(StringUtils.COMMA);
                                            }
                                            sb.append(str9);
                                            map2.put("X-Failed-Hosts", sb.toString());
                                            i++;
                                            jCurrentTimeMillis = j;
                                            arrayList = arrayList3;
                                        }
                                    }
                                    str2 = str10;
                                    vdaVar2 = vdaVar;
                                }
                                if (str2 == null) {
                                    if (vdaVar2 != null) {
                                        StringBuilder sb2 = new StringBuilder("response: code=");
                                        sb2.append(vdaVar2.b);
                                        sb2.append(", error=");
                                        strC = kh.c(sb2, vdaVar2.d, ", dataForService=", strA);
                                    } else {
                                        strC = bj.c("response==null, dataForService=", strA);
                                    }
                                    z2aVar2.g.a(strC, 0, 1, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, null);
                                    if (vdaVar2 == null) {
                                        l6a l6aVar2 = l6a.c;
                                        j8a j8aVar = new j8a();
                                        j8aVar.a = l6aVar2;
                                        b1Var.c(null, j8aVar, t0Var2);
                                        str3 = null;
                                    } else {
                                        i2 = vdaVar2.b;
                                        str5 = i2 + " – " + vdaVar2.d;
                                        if (i2 != 403) {
                                            l6aVar = l6a.f;
                                        } else if (i2 != 404) {
                                            l6aVar = l6a.g;
                                        } else if (i2 == 408) {
                                            l6aVar = l6a.e;
                                        } else if (i2 != 500) {
                                            l6aVar = l6a.h;
                                        } else if (i2 != 504) {
                                            l6aVar = l6a.e;
                                        } else if (i2 == 200) {
                                            l6aVar = l6a.j;
                                        } else {
                                            l6aVar = new l6a(str5);
                                        }
                                        j8a j8aVar2 = new j8a();
                                        j8aVar2.a = l6aVar;
                                        str3 = null;
                                        b1Var.c(null, j8aVar2, t0Var2);
                                    }
                                    str4 = str3;
                                } else {
                                    str3 = null;
                                    str4 = str2;
                                }
                                if (str4 == null) {
                                    return;
                                }
                                t0Var2.a(1, System.currentTimeMillis() - j);
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                arrayList2 = new ArrayList();
                                v2 v2Var = new v2();
                                j8a j8aVar3 = new j8a();
                                lia liaVar = new lia(strE, strA);
                                kia kiaVarD = v2Var.d(str4, liaVar, null, b1Var.a, b1Var.b, t0Var2, arrayList2, j8aVar3);
                                t0Var2.a(2, System.currentTimeMillis() - jCurrentTimeMillis2);
                                if (arrayList2.isEmpty()) {
                                    strJoin = str3;
                                } else {
                                    strJoin = TextUtils.join(StringUtils.COMMA, arrayList2);
                                }
                                n6aVar.b("hosts", strJoin);
                                vha vhaVarA = b1Var.a(liaVar.b, kiaVarD, v2Var, t0Var2, j8aVar3);
                                long jCurrentTimeMillis3 = System.currentTimeMillis();
                                vha vhaVarD = b1Var.d(vhaVarA, j8aVar3);
                                t0Var2.a(3, System.currentTimeMillis() - jCurrentTimeMillis3);
                                b1Var.c(vhaVarD, j8aVar3, t0Var2);
                                return;
                            }
                            y14.r(str6, "AdResponseParser: Null data");
                            vdaVar = vdaVar3;
                            if (i == size) {
                                if (sb.length() != 0) {
                                    sb.append(StringUtils.COMMA);
                                }
                                sb.append(str9);
                                map2.put("X-Failed-Hosts", sb.toString());
                                i++;
                                jCurrentTimeMillis = j;
                                arrayList = arrayList3;
                            }
                        } else {
                            j = jCurrentTimeMillis;
                        }
                        vdaVar2 = vdaVar;
                        str2 = null;
                        if (str2 == null) {
                            if (vdaVar2 != null) {
                                StringBuilder sb3 = new StringBuilder("response: code=");
                                sb3.append(vdaVar2.b);
                                sb3.append(", error=");
                                strC = kh.c(sb3, vdaVar2.d, ", dataForService=", strA);
                            } else {
                                strC = bj.c("response==null, dataForService=", strA);
                            }
                            z2aVar2.g.a(strC, 0, 1, PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT, null);
                            if (vdaVar2 == null) {
                                l6a l6aVar3 = l6a.c;
                                j8a j8aVar4 = new j8a();
                                j8aVar4.a = l6aVar3;
                                b1Var.c(null, j8aVar4, t0Var2);
                                str3 = null;
                            } else {
                                i2 = vdaVar2.b;
                                str5 = i2 + " – " + vdaVar2.d;
                                if (i2 != 403) {
                                    l6aVar = l6a.f;
                                } else if (i2 != 404) {
                                    l6aVar = l6a.g;
                                } else if (i2 == 408) {
                                    l6aVar = l6a.e;
                                } else if (i2 != 500) {
                                    l6aVar = l6a.h;
                                } else if (i2 != 504) {
                                    l6aVar = l6a.e;
                                } else if (i2 == 200) {
                                    l6aVar = l6a.j;
                                } else {
                                    l6aVar = new l6a(str5);
                                }
                                j8a j8aVar5 = new j8a();
                                j8aVar5.a = l6aVar;
                                str3 = null;
                                b1Var.c(null, j8aVar5, t0Var2);
                            }
                            str4 = str3;
                        } else {
                            str3 = null;
                            str4 = str2;
                        }
                        if (str4 == null) {
                            return;
                        }
                        t0Var2.a(1, System.currentTimeMillis() - j);
                        long jCurrentTimeMillis4 = System.currentTimeMillis();
                        arrayList2 = new ArrayList();
                        v2 v2Var2 = new v2();
                        j8a j8aVar6 = new j8a();
                        lia liaVar2 = new lia(strE, strA);
                        kia kiaVarD2 = v2Var2.d(str4, liaVar2, null, b1Var.a, b1Var.b, t0Var2, arrayList2, j8aVar6);
                        t0Var2.a(2, System.currentTimeMillis() - jCurrentTimeMillis4);
                        if (arrayList2.isEmpty()) {
                            strJoin = str3;
                        } else {
                            strJoin = TextUtils.join(StringUtils.COMMA, arrayList2);
                        }
                        n6aVar.b("hosts", strJoin);
                        vha vhaVarA2 = b1Var.a(liaVar2.b, kiaVarD2, v2Var2, t0Var2, j8aVar6);
                        long jCurrentTimeMillis5 = System.currentTimeMillis();
                        vha vhaVarD2 = b1Var.d(vhaVarA2, j8aVar6);
                        t0Var2.a(3, System.currentTimeMillis() - jCurrentTimeMillis5);
                        b1Var.c(vhaVarD2, j8aVar6, t0Var2);
                        return;
                    }
                } catch (Throwable th) {
                    y14.r(null, "AdServiceBuilder: Error collecting data - " + th);
                }
                strA = uha.a(map3);
            } catch (Throwable th2) {
                z8aVar.a("exception: " + y14.p(th2), 0, 1, 1001, null);
                strA = "";
            }
            String strA2 = f72Var.a("lang");
            if (strA2 != null) {
                map4.put("lang", strA2);
            }
            int i3 = mu9.a;
            if (i3 >= 0) {
                map4.put("sdk_flags", String.valueOf(i3));
            }
            nh5Var.getClass();
            String str11 = (String) map4.get("instance_id");
            if (str11 != null) {
                y14.r(null, "AdServiceBuilder: Device instanceId is " + str11 + ". Use this value in adInstance.withTestDevices() to enable test mode on this device.");
            }
            map3.putAll(map4);
            z8aVar = z2aVar.g;
            strE = l2.e(ad2.c(str), "/", z2aVar.e);
            b1Var = v4aVar.a;
            t0Var2 = v4aVar.b;
            arrayList = v4aVar.c;
            n6aVar = v4aVar.d;
            z2aVar2 = b1Var.a;
            t0Var2.a(t0Var2.d, System.currentTimeMillis() - t0Var2.c);
            jCurrentTimeMillis = System.currentTimeMillis();
            sb = new StringBuilder();
            map2 = new HashMap();
            z2aVar2.g.b(2000);
            size = arrayList.size() - 1;
            i = 0;
            vdaVar = null;
        }
    }
}

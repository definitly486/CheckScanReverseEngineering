package yads;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.ta8;
import defpackage.ua8;
import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes6.dex */
public final class bv4 implements ds {
    public final String a;
    public final fe5 b;
    public final d16 c;
    public final i16 d;
    public final h75 e;

    public bv4(String str, fe5 fe5Var, d16 d16Var, i16 i16Var, h75 h75Var) {
        this.a = str;
        this.b = fe5Var;
        this.c = d16Var;
        this.d = i16Var;
        this.e = h75Var;
    }

    /* JADX WARN: Code duplicated, block: B:220:0x0301  */
    /* JADX WARN: Code duplicated, block: B:222:0x0305  */
    /* JADX WARN: Code duplicated, block: B:223:0x030c  */
    /* JADX WARN: Code duplicated, block: B:225:0x030f  */
    /* JADX WARN: Code duplicated, block: B:226:0x0318  */
    /* JADX WARN: Code duplicated, block: B:228:0x031c  */
    /* JADX WARN: Code duplicated, block: B:229:0x0357  */
    @Override // yads.x85
    public final void a(hi6 hi6Var) {
        Throwable cause;
        en4 en4Var;
        Integer numValueOf;
        t06 t06Var;
        t06 t06Var2;
        Integer numValueOf2;
        String str;
        t06 t06Var3;
        String str2;
        String str3;
        String str4;
        String message;
        Throwable cause2;
        hi6Var.getClass();
        if (hi6Var instanceof mx5) {
            t06Var = nx5.a((mx5) hi6Var);
        } else if (hi6Var instanceof do4) {
            t06Var = dn4.a((do4) hi6Var);
        } else {
            if (hi6Var instanceof cn4) {
                cn4 cn4Var = (cn4) hi6Var;
                Throwable cause3 = cn4Var.getCause();
                if (cause3 == null || (message = cause3.getMessage()) == null) {
                    message = cn4Var.getMessage();
                }
                if (cause3 instanceof SSLException) {
                    t06Var = bq5.a((SSLException) cause3);
                } else if (cause3 instanceof IOException) {
                    t06Var = dn4.a((IOException) cause3);
                    if (t06Var == null) {
                        u06 u06Var = u06.NETWORK;
                        if (message == null) {
                            message = "I/O error";
                        }
                        t06Var = new t06(u06Var, "io_error", message, null);
                    }
                } else {
                    u06 u06Var2 = u06.NETWORK;
                    if (message == null) {
                        message = "Network error";
                    }
                    t06Var = new t06(u06Var2, "network_error", message, null);
                }
            } else {
                if (hi6Var instanceof o00) {
                    o00 o00Var = (o00) hi6Var;
                    en4 en4Var2 = o00Var.b;
                    numValueOf2 = en4Var2 != null ? Integer.valueOf(en4Var2.a) : null;
                    String message2 = o00Var.getMessage();
                    if (numValueOf2 != null && numValueOf2.intValue() == 400) {
                        str3 = "Bad request";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 401) {
                        str3 = "Unauthorized";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 403) {
                        str3 = "Forbidden";
                    } else {
                        str3 = (numValueOf2 != null && numValueOf2.intValue() == 404) ? "Not found" : "Client error";
                    }
                    u06 u06Var3 = u06.CLIENT;
                    if (numValueOf2 != null && numValueOf2.intValue() == 400) {
                        str4 = "client_bad_request";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 401) {
                        str4 = "client_unauthorized";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 403) {
                        str4 = "client_forbidden";
                    } else {
                        str4 = (numValueOf2 != null && numValueOf2.intValue() == 404) ? "client_not_found" : "client_error";
                    }
                    if (message2 == null) {
                        message2 = str3;
                    }
                    t06Var3 = new t06(u06Var3, str4, message2, numValueOf2);
                } else if (hi6Var instanceof vi5) {
                    vi5 vi5Var = (vi5) hi6Var;
                    en4 en4Var3 = vi5Var.b;
                    numValueOf2 = en4Var3 != null ? Integer.valueOf(en4Var3.a) : null;
                    String message3 = vi5Var.getMessage();
                    if (numValueOf2 != null && numValueOf2.intValue() == 500) {
                        str = "Internal server error";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 502) {
                        str = "Bad gateway";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 503) {
                        str = "Service unavailable";
                    } else {
                        str = (numValueOf2 != null && numValueOf2.intValue() == 504) ? "Gateway timeout" : "Server error";
                    }
                    u06 u06Var4 = u06.SERVER;
                    if (numValueOf2 != null && numValueOf2.intValue() == 500) {
                        str2 = "server_internal_error";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 502) {
                        str2 = "server_bad_gateway";
                    } else if (numValueOf2 != null && numValueOf2.intValue() == 503) {
                        str2 = "server_unavailable";
                    } else {
                        str2 = (numValueOf2 != null && numValueOf2.intValue() == 504) ? "server_gateway_timeout" : "server_error";
                    }
                    if (message3 == null) {
                        message3 = str;
                    }
                    t06Var3 = new t06(u06Var4, str2, message3, numValueOf2);
                } else if (hi6Var instanceof rs4) {
                    u06 u06Var5 = u06.PARSE;
                    String message4 = hi6Var.getMessage();
                    if (message4 == null) {
                        message4 = "Response parsing error";
                    }
                    t06Var = new t06(u06Var5, "parse_error", message4, null);
                } else if (hi6Var instanceof ym) {
                    u06 u06Var6 = u06.AUTH;
                    String message5 = hi6Var.getMessage();
                    if (message5 == null) {
                        message5 = "Authentication failure";
                    }
                    t06Var = new t06(u06Var6, "auth_failure", message5, null);
                } else {
                    Throwable cause4 = hi6Var.getCause();
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    linkedHashSet.add(hi6Var);
                    Throwable th = hi6Var;
                    while (true) {
                        if (cause == null || cause.equals(th) || linkedHashSet.contains(cause)) {
                            cause = cause4;
                            break;
                        }
                        cause = cause4;
                        linkedHashSet.add(cause);
                        th = cause;
                        cause = cause.getCause();
                    }
                    boolean zEquals = th.equals(hi6Var);
                    Throwable th2 = th;
                    if (zEquals) {
                        th2 = null;
                    }
                    if (th2 instanceof UnknownHostException) {
                        t06Var = dn4.a(new do4((IOException) th2));
                    } else if (th2 instanceof SSLException) {
                        t06Var = bq5.a((SSLException) th2);
                    } else if (th2 instanceof SocketTimeoutException) {
                        t06Var = nx5.a(new mx5());
                    } else if (th2 instanceof ConnectException) {
                        t06Var = dn4.a(new do4((IOException) th2));
                    } else if (!(th2 instanceof IOException) || (t06Var = dn4.a((IOException) th2)) == null) {
                        String message6 = hi6Var.getMessage();
                        if (message6 == null) {
                            message6 = th2 != null ? th2.getMessage() : null;
                        }
                        if (message6 != null) {
                            String lowerCase = message6.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            if (ta8.D(lowerCase, "unable to resolve host", false) || ta8.D(lowerCase, "nodename nor servname provided", false) || ta8.D(lowerCase, "temporary failure in name resolution", false)) {
                                t06Var2 = new t06(u06.NETWORK, "unknown_host", message6, null);
                            } else if (ta8.D(lowerCase, "timeout", false) || ta8.D(lowerCase, "timed out", false)) {
                                t06Var2 = new t06(u06.TIMEOUT, "timeout", message6, null);
                            } else if (ta8.D(lowerCase, "connection refused", false)) {
                                t06Var2 = new t06(u06.NETWORK, "connection_refused", message6, null);
                            } else if (ta8.D(lowerCase, "network is unreachable", false)) {
                                t06Var2 = new t06(u06.NETWORK, "network_unreachable", message6, null);
                            } else if (ta8.D(lowerCase, "no route to host", false)) {
                                t06Var2 = new t06(u06.NETWORK, "no_route", message6, null);
                            } else if (ta8.D(lowerCase, "host is down", false)) {
                                t06Var2 = new t06(u06.NETWORK, "host_down", message6, null);
                            } else if (ta8.D(lowerCase, "ssl", false) || ta8.D(lowerCase, "tls", false)) {
                                t06Var2 = new t06(u06.SSL, "ssl_error", message6, null);
                            } else {
                                t06Var2 = ta8.D(lowerCase, "interrupted", false) ? new t06(u06.NETWORK, "interrupted", message6, null) : null;
                            }
                            if (t06Var2 != null) {
                                t06Var = t06Var2;
                            } else {
                                en4Var = hi6Var.b;
                                if (en4Var != null) {
                                    numValueOf = Integer.valueOf(en4Var.a);
                                } else {
                                    numValueOf = null;
                                }
                                if (numValueOf != null) {
                                    t06Var = na3.a(numValueOf.intValue(), message6);
                                } else if (message6 != null) {
                                    u06 u06Var7 = u06.UNKNOWN;
                                    Pattern patternCompile = Pattern.compile("https?://[^\\s]+");
                                    patternCompile.getClass();
                                    String strReplaceAll = patternCompile.matcher(message6).replaceAll("[url]");
                                    strReplaceAll.getClass();
                                    Pattern patternCompile2 = Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d+)?");
                                    patternCompile2.getClass();
                                    String strReplaceAll2 = patternCompile2.matcher(strReplaceAll).replaceAll("[ip]");
                                    strReplaceAll2.getClass();
                                    t06Var = new t06(u06Var7, "unknown", ua8.l0(100, strReplaceAll2), null);
                                } else {
                                    t06Var = new t06(u06.UNKNOWN, "unknown", "Unknown error", null);
                                }
                            }
                        } else {
                            en4Var = hi6Var.b;
                            if (en4Var != null) {
                                numValueOf = Integer.valueOf(en4Var.a);
                            } else {
                                numValueOf = null;
                            }
                            if (numValueOf != null) {
                                t06Var = na3.a(numValueOf.intValue(), message6);
                            } else if (message6 != null) {
                                u06 u06Var8 = u06.UNKNOWN;
                                Pattern patternCompile3 = Pattern.compile("https?://[^\\s]+");
                                patternCompile3.getClass();
                                String strReplaceAll3 = patternCompile3.matcher(message6).replaceAll("[url]");
                                strReplaceAll3.getClass();
                                Pattern patternCompile4 = Pattern.compile("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}(:\\d+)?");
                                patternCompile4.getClass();
                                String strReplaceAll4 = patternCompile4.matcher(strReplaceAll3).replaceAll("[ip]");
                                strReplaceAll4.getClass();
                                t06Var = new t06(u06Var8, "unknown", ua8.l0(100, strReplaceAll4), null);
                            } else {
                                t06Var = new t06(u06.UNKNOWN, "unknown", "Unknown error", null);
                            }
                        }
                    }
                }
                t06Var = t06Var3;
            }
        }
        if (t06Var.a == u06.UNKNOWN) {
            Throwable cause5 = hi6Var.getCause();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            linkedHashSet2.add(hi6Var);
            Object obj = hi6Var;
            while (true) {
                if (cause2 == null || cause2.equals(obj) || linkedHashSet2.contains(cause2)) {
                    cause2 = cause5;
                    break;
                }
                cause2 = cause5;
                linkedHashSet2.add(cause2);
                obj = cause2;
                cause2 = cause2.getCause();
            }
            obj.equals(hi6Var);
        }
        Map map = this.e.a;
        String lowerCase2 = this.d.name().toLowerCase(Locale.ROOT);
        lowerCase2.getClass();
        Map mapE = defpackage.n05.e(new defpackage.b36("tracking_url_type", lowerCase2), new defpackage.b36("tracking_url", a56.a(this.a)));
        LinkedHashMap linkedHashMapF = defpackage.n05.f(new defpackage.b36("tracking_result", "failure"), new defpackage.b36("error_description", t06Var.a.b), new defpackage.b36("error_code", t06Var.b), new defpackage.b36("error_message", t06Var.c));
        linkedHashMapF.putAll(map);
        linkedHashMapF.putAll(mapE);
        Integer num = t06Var.d;
        if (num != null) {
            linkedHashMapF.put("code", Integer.valueOf(num.intValue()));
        }
        d16 d16Var = this.c;
        e75 e75Var = e75.AD_LOADING_RESULT;
        d16Var.a(linkedHashMapF, this.b);
    }

    @Override // yads.y85
    public final void a(Object obj) {
        int i = ((en4) obj).a;
        Map map = this.e.a;
        String lowerCase = this.d.name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        LinkedHashMap linkedHashMapG = defpackage.n05.g(defpackage.n05.g(defpackage.n05.f(new defpackage.b36("tracking_result", FirebaseAnalytics.Param.SUCCESS), new defpackage.b36("code", Integer.valueOf(i))), map), defpackage.n05.e(new defpackage.b36("tracking_url_type", lowerCase), new defpackage.b36("tracking_url", a56.a(this.a))));
        d16 d16Var = this.c;
        e75 e75Var = e75.AD_LOADING_RESULT;
        d16Var.a(linkedHashMapG, this.b);
    }
}

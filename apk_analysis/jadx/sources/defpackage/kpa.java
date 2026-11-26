package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfl;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzpk;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class kpa {
    public final String a;
    public final int b;
    public Boolean c;
    public Boolean d;
    public Long e;
    public Long f;

    public kpa(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public static Boolean d(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Boolean e(String str, zzfr zzfrVar, zzgu zzguVar) {
        List listZzf;
        Preconditions.checkNotNull(zzfrVar);
        if (str != null && zzfrVar.zza() && zzfrVar.zzk() != 1 && (zzfrVar.zzk() != 7 ? zzfrVar.zzb() : zzfrVar.zzh() != 0)) {
            int iZzk = zzfrVar.zzk();
            boolean zZze = zzfrVar.zze();
            String strZzc = (zZze || iZzk == 2 || iZzk == 7) ? zzfrVar.zzc() : zzfrVar.zzc().toUpperCase(Locale.ENGLISH);
            if (zzfrVar.zzh() == 0) {
                listZzf = null;
            } else {
                listZzf = zzfrVar.zzf();
                if (!zZze) {
                    ArrayList arrayList = new ArrayList(listZzf.size());
                    Iterator it = listZzf.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                    }
                    listZzf = Collections.unmodifiableList(arrayList);
                }
            }
            String str2 = iZzk == 2 ? strZzc : null;
            if (iZzk != 7 ? strZzc != null : listZzf != null && !listZzf.isEmpty()) {
                if (!zZze && iZzk != 2) {
                    str = str.toUpperCase(Locale.ENGLISH);
                }
                switch (iZzk - 1) {
                    case 1:
                        if (str2 != null) {
                            try {
                                return Boolean.valueOf(Pattern.compile(str2, true != zZze ? 66 : 0).matcher(str).matches());
                            } catch (PatternSyntaxException unused) {
                                if (zzguVar != null) {
                                    zzguVar.zze().zzb("Invalid regular expression in REGEXP audience filter. expression", str2);
                                }
                            }
                        }
                        break;
                    case 2:
                        return Boolean.valueOf(str.startsWith(strZzc));
                    case 3:
                        return Boolean.valueOf(str.endsWith(strZzc));
                    case 4:
                        return Boolean.valueOf(str.contains(strZzc));
                    case 5:
                        return Boolean.valueOf(str.equals(strZzc));
                    case 6:
                        if (listZzf != null) {
                            return Boolean.valueOf(listZzf.contains(str));
                        }
                        break;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008a  */
    /* JADX WARN: Code duplicated, block: B:40:0x008d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0090  */
    /* JADX WARN: Code duplicated, block: B:45:0x0095 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:48:0x009d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:63:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:77:0x0102  */
    /* JADX WARN: Code duplicated, block: B:80:0x0108 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x010b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0112  */
    public static Boolean f(BigDecimal bigDecimal, zzfl zzflVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        int i;
        Preconditions.checkNotNull(zzflVar);
        if (zzflVar.zza()) {
            if (zzflVar.zzm() != 1 && (zzflVar.zzm() != 5 ? zzflVar.zzd() : zzflVar.zzf() && zzflVar.zzi())) {
                int iZzm = zzflVar.zzm();
                try {
                    if (zzflVar.zzm() == 5) {
                        if (zzpk.A(zzflVar.zzh()) && zzpk.A(zzflVar.zzj())) {
                            BigDecimal bigDecimal5 = new BigDecimal(zzflVar.zzh());
                            bigDecimal4 = new BigDecimal(zzflVar.zzj());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                            if (iZzm == 5 ? bigDecimal2 != null : bigDecimal3 != null) {
                                i = iZzm - 1;
                                if (i != 1) {
                                    if (i != 2) {
                                        if (i != 3) {
                                            if (i == 4 && bigDecimal3 != null) {
                                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) < 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                            }
                                        } else if (bigDecimal2 != null) {
                                            if (d != 0.0d) {
                                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) <= 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                                            }
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                        }
                                    } else if (bigDecimal2 != null) {
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                                }
                            }
                        }
                    } else if (zzpk.A(zzflVar.zze())) {
                        bigDecimal2 = new BigDecimal(zzflVar.zze());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                        if (iZzm == 5) {
                            i = iZzm - 1;
                            if (i != 1) {
                                if (i != 2) {
                                    if (i != 3) {
                                        if (i == 4) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) < 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                        }
                                    } else if (bigDecimal2 != null) {
                                        if (d != 0.0d) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) <= 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                                        }
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                                }
                            } else if (bigDecimal2 != null) {
                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                            }
                        } else {
                            i = iZzm - 1;
                            if (i != 1) {
                                if (i != 2) {
                                    if (i != 3) {
                                        if (i == 4) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) < 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                        }
                                    } else if (bigDecimal2 != null) {
                                        if (d != 0.0d) {
                                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) <= 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                                        }
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                                }
                            } else if (bigDecimal2 != null) {
                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                            }
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    public abstract int a();

    public abstract boolean b();

    public abstract boolean c();
}

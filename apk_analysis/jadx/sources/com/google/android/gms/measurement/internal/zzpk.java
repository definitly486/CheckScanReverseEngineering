package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.zzaa;
import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzadp;
import com.google.android.gms.internal.measurement.zzafb;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.measurement.zzair;
import com.google.android.gms.internal.measurement.zzfh;
import com.google.android.gms.internal.measurement.zzfl;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzha;
import com.google.android.gms.internal.measurement.zzho;
import com.google.android.gms.internal.measurement.zzhq;
import com.google.android.gms.internal.measurement.zzhr;
import com.google.android.gms.internal.measurement.zzhs;
import com.google.android.gms.internal.measurement.zzhv;
import com.google.android.gms.internal.measurement.zzhw;
import com.google.android.gms.internal.measurement.zzib;
import com.google.android.gms.internal.measurement.zzid;
import com.google.android.gms.internal.measurement.zzii;
import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzis;
import com.google.android.gms.internal.measurement.zzit;
import com.google.android.gms.internal.measurement.zziu;
import com.tapjoy.TJVerifierKt;
import defpackage.ad2;
import defpackage.lac;
import defpackage.u4;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.security.MessageDigest;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpk extends lac {
    public long d;
    public long e;

    public static boolean A(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static boolean B(int i, List list) {
        if (i < list.size() * 64) {
            return ((1 << (i % 64)) & ((Long) list.get(i / 64)).longValue()) != 0;
        }
        return false;
    }

    public static ArrayList C(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i * 64) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    j |= 1 << i2;
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static zzafb H(zzadp zzadpVar, byte[] bArr) {
        zzadf zzadfVarZzb = zzadf.zzb();
        return zzadfVarZzb != null ? zzadpVar.zzaW(bArr, zzadfVarZzb) : zzadpVar.zzaX(bArr);
    }

    public static int I(com.google.android.gms.internal.measurement.zzic zzicVar, String str) {
        for (int i = 0; i < zzicVar.zzl(); i++) {
            if (str.equals(zzicVar.zzm(i).zzc())) {
                return i;
            }
        }
        return -1;
    }

    public static Bundle[] J(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzhw zzhwVar = (zzhw) it.next();
            if (zzhwVar != null) {
                Bundle bundle = new Bundle();
                for (zzhw zzhwVar2 : zzhwVar.zzl()) {
                    if (zzhwVar2.zzc()) {
                        bundle.putString(zzhwVar2.zzb(), zzhwVar2.zzd());
                    } else if (zzhwVar2.zze()) {
                        bundle.putLong(zzhwVar2.zzb(), zzhwVar2.zzf());
                    } else if (zzhwVar2.zzj()) {
                        bundle.putDouble(zzhwVar2.zzb(), zzhwVar2.zzk());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static HashMap K(Bundle bundle, boolean z) {
        HashMap map = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            boolean z2 = obj instanceof Parcelable[];
            if (z2 || (obj instanceof ArrayList) || (obj instanceof Bundle)) {
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    if (z2) {
                        for (Parcelable parcelable : (Parcelable[]) obj) {
                            if (parcelable instanceof Bundle) {
                                arrayList.add(K((Bundle) parcelable, false));
                            }
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList2 = (ArrayList) obj;
                        int size = arrayList2.size();
                        for (int i = 0; i < size; i++) {
                            Object obj2 = arrayList2.get(i);
                            if (obj2 instanceof Bundle) {
                                arrayList.add(K((Bundle) obj2, false));
                            }
                        }
                    } else if (obj instanceof Bundle) {
                        arrayList.add(K((Bundle) obj, false));
                    }
                    map.put(str, arrayList);
                }
            } else if (obj != null) {
                map.put(str, obj);
            }
        }
        return map;
    }

    public static zzbh c(zzaa zzaaVar) {
        Object obj;
        Bundle bundleD = d(zzaaVar.zzf(), true);
        String string = (!bundleD.containsKey("_o") || (obj = bundleD.get("_o")) == null) ? "app" : obj.toString();
        String strZzb = zzjm.zzb(zzaaVar.zzb());
        if (strZzb == null) {
            strZzb = zzaaVar.zzb();
        }
        return new zzbh(strZzb, new zzbf(bundleD), string, zzaaVar.zza(), 0L);
    }

    public static Bundle d(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    arrayList2.add(d((Map) arrayList.get(i), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public static final void e(zzhr zzhrVar, String str, Long l) {
        List listZza = zzhrVar.zza();
        int i = 0;
        while (true) {
            if (i >= listZza.size()) {
                i = -1;
                break;
            } else if (str.equals(((zzhw) listZza.get(i)).zzb())) {
                break;
            } else {
                i++;
            }
        }
        zzhv zzhvVarZzn = zzhw.zzn();
        zzhvVarZzn.zzb(str);
        zzhvVarZzn.zzf(l.longValue());
        if (i >= 0) {
            zzhrVar.zze(i, zzhvVarZzn);
        } else {
            zzhrVar.zzg(zzhvVarZzn);
        }
    }

    public static final Bundle f(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzhw zzhwVar = (zzhw) it.next();
            String strZzb = zzhwVar.zzb();
            if (zzhwVar.zzj()) {
                bundle.putDouble(strZzb, zzhwVar.zzk());
            } else if (zzhwVar.zzh()) {
                bundle.putFloat(strZzb, zzhwVar.zzi());
            } else if (zzhwVar.zzc()) {
                bundle.putString(strZzb, zzhwVar.zzd());
            } else if (zzhwVar.zze()) {
                bundle.putLong(strZzb, zzhwVar.zzf());
            }
        }
        return bundle;
    }

    public static final zzhw g(zzhs zzhsVar, String str) {
        for (zzhw zzhwVar : zzhsVar.zza()) {
            if (zzhwVar.zzb().equals(str)) {
                return zzhwVar;
            }
        }
        return null;
    }

    public static final String h(String str, Map map) {
        if (map == null) {
            return null;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (str.equalsIgnoreCase((String) entry.getKey())) {
                if (entry.getValue() == null || ((List) entry.getValue()).isEmpty()) {
                    return null;
                }
                return (String) ((List) entry.getValue()).get(0);
            }
        }
        return null;
    }

    public static final Serializable i(zzhs zzhsVar, String str) {
        zzhw zzhwVarG = g(zzhsVar, str);
        if (zzhwVarG == null) {
            return null;
        }
        return o(zzhwVarG);
    }

    public static final void l(int i, StringBuilder sb) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    public static final void m(Uri.Builder builder, String str, String str2, HashSet hashSet) {
        if (hashSet.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public static final String n(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [android.os.Bundle[], java.io.Serializable] */
    public static final Serializable o(zzhw zzhwVar) {
        if (zzhwVar.zzc()) {
            return zzhwVar.zzd();
        }
        if (zzhwVar.zze()) {
            return Long.valueOf(zzhwVar.zzf());
        }
        if (zzhwVar.zzj()) {
            return Double.valueOf(zzhwVar.zzk());
        }
        if (zzhwVar.zzm() > 0) {
            return J(zzhwVar.zzl());
        }
        return null;
    }

    public static final void p(Uri.Builder builder, String[] strArr, Bundle bundle, HashSet hashSet) {
        for (String str : strArr) {
            String[] strArrSplit = str.split(StringUtils.COMMA);
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[strArrSplit.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                m(builder, str3, string, hashSet);
            }
        }
    }

    public static final void q(StringBuilder sb, String str, zzii zziiVar) {
        if (zziiVar == null) {
            return;
        }
        l(3, sb);
        sb.append(str);
        sb.append(" {\n");
        if (zziiVar.zzd() != 0) {
            l(4, sb);
            sb.append("results: ");
            int i = 0;
            for (Long l : zziiVar.zzc()) {
                int i2 = i + 1;
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i = i2;
            }
            sb.append('\n');
        }
        if (zziiVar.zzb() != 0) {
            l(4, sb);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : zziiVar.zza()) {
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3 = i4;
            }
            sb.append('\n');
        }
        if (zziiVar.zzf() != 0) {
            l(4, sb);
            sb.append("dynamic_filter_timestamps: {");
            int i5 = 0;
            for (zzhq zzhqVar : zziiVar.zze()) {
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(zzhqVar.zza() ? Integer.valueOf(zzhqVar.zzb()) : null);
                sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                sb.append(zzhqVar.zzc() ? Long.valueOf(zzhqVar.zzd()) : null);
                i5 = i6;
            }
            sb.append("}\n");
        }
        if (zziiVar.zzi() != 0) {
            l(4, sb);
            sb.append("sequence_filter_timestamps: {");
            int i7 = 0;
            for (zzik zzikVar : zziiVar.zzh()) {
                int i8 = i7 + 1;
                if (i7 != 0) {
                    sb.append(", ");
                }
                sb.append(zzikVar.zza() ? Integer.valueOf(zzikVar.zzb()) : null);
                sb.append(": [");
                Iterator it = zzikVar.zzc().iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    long jLongValue = ((Long) it.next()).longValue();
                    int i10 = i9 + 1;
                    if (i9 != 0) {
                        sb.append(", ");
                    }
                    sb.append(jLongValue);
                    i9 = i10;
                }
                sb.append("]");
                i7 = i8;
            }
            sb.append("}\n");
        }
        l(3, sb);
        sb.append("}\n");
    }

    public static final void r(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        l(i + 1, sb);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    public static final void s(StringBuilder sb, int i, String str, zzfl zzflVar) {
        String str2;
        if (zzflVar == null) {
            return;
        }
        l(i, sb);
        sb.append(str);
        sb.append(" {\n");
        if (zzflVar.zza()) {
            int iZzm = zzflVar.zzm();
            if (iZzm == 1) {
                str2 = "UNKNOWN_COMPARISON_TYPE";
            } else if (iZzm == 2) {
                str2 = "LESS_THAN";
            } else if (iZzm != 3) {
                str2 = iZzm != 4 ? "BETWEEN" : "EQUAL";
            } else {
                str2 = "GREATER_THAN";
            }
            r(sb, i, "comparison_type", str2);
        }
        if (zzflVar.zzb()) {
            r(sb, i, "match_as_float", Boolean.valueOf(zzflVar.zzc()));
        }
        if (zzflVar.zzd()) {
            r(sb, i, "comparison_value", zzflVar.zze());
        }
        if (zzflVar.zzf()) {
            r(sb, i, "min_comparison_value", zzflVar.zzh());
        }
        if (zzflVar.zzi()) {
            r(sb, i, "max_comparison_value", zzflVar.zzj());
        }
        l(i, sb);
        sb.append("}\n");
    }

    public final List D(List list, List list2) {
        int i;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int iIntValue = num.intValue();
            zzic zzicVar = this.a;
            if (iIntValue < 0) {
                zzicVar.zzaW().zze().zzb("Ignoring negative bit index to be cleared", num);
            } else {
                int iIntValue2 = num.intValue() / 64;
                if (iIntValue2 >= arrayList.size()) {
                    zzicVar.zzaW().zze().zzc("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(iIntValue2, Long.valueOf(((Long) arrayList.get(iIntValue2)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    public final boolean E(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(this.a.zzba().currentTimeMillis() - j) > j2;
    }

    public final long F(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        zzic zzicVar = this.a;
        zzicVar.zzk().zzg();
        MessageDigest messageDigestQ = zzpp.q();
        if (messageDigestQ != null) {
            return zzpp.r(messageDigestQ.digest(bArr));
        }
        u4.e(zzicVar, "Failed to get MD5");
        return 0L;
    }

    public final byte[] G(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.a.zzaW().zzb().zzb("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // defpackage.lac
    public final void b() {
    }

    public final void j(StringBuilder sb, int i, List list) {
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzhw zzhwVar = (zzhw) it.next();
            if (zzhwVar != null) {
                l(i2, sb);
                sb.append("param {\n");
                r(sb, i2, "name", zzhwVar.zza() ? this.a.zzl().b(zzhwVar.zzb()) : null);
                r(sb, i2, "string_value", zzhwVar.zzc() ? zzhwVar.zzd() : null);
                r(sb, i2, "int_value", zzhwVar.zze() ? Long.valueOf(zzhwVar.zzf()) : null);
                r(sb, i2, "double_value", zzhwVar.zzj() ? Double.valueOf(zzhwVar.zzk()) : null);
                if (zzhwVar.zzm() > 0) {
                    j(sb, i2, zzhwVar.zzl());
                }
                l(i2, sb);
                sb.append("}\n");
            }
        }
    }

    public final void k(StringBuilder sb, int i, zzfh zzfhVar) {
        String str;
        if (zzfhVar == null) {
            return;
        }
        l(i, sb);
        sb.append("filter {\n");
        if (zzfhVar.zze()) {
            r(sb, i, "complement", Boolean.valueOf(zzfhVar.zzf()));
        }
        if (zzfhVar.zzh()) {
            r(sb, i, "param_name", this.a.zzl().b(zzfhVar.zzi()));
        }
        if (zzfhVar.zza()) {
            int i2 = i + 1;
            zzfr zzfrVarZzb = zzfhVar.zzb();
            if (zzfrVarZzb != null) {
                l(i2, sb);
                sb.append("string_filter {\n");
                if (zzfrVarZzb.zza()) {
                    switch (zzfrVarZzb.zzk()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    r(sb, i2, "match_type", str);
                }
                if (zzfrVarZzb.zzb()) {
                    r(sb, i2, "expression", zzfrVarZzb.zzc());
                }
                if (zzfrVarZzb.zzd()) {
                    r(sb, i2, "case_sensitive", Boolean.valueOf(zzfrVarZzb.zze()));
                }
                if (zzfrVarZzb.zzh() > 0) {
                    l(i + 2, sb);
                    sb.append("expression_list {\n");
                    for (String str2 : zzfrVarZzb.zzf()) {
                        l(i + 3, sb);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                l(i2, sb);
                sb.append("}\n");
            }
        }
        if (zzfhVar.zzc()) {
            s(sb, i + 1, "number_filter", zzfhVar.zzd());
        }
        l(i, sb);
        sb.append("}\n");
    }

    public final void t(zzit zzitVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzitVar.zzd();
        zzitVar.zzf();
        zzitVar.zzh();
        if (obj instanceof String) {
            zzitVar.zzc((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzitVar.zze(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            zzitVar.zzg(((Double) obj).doubleValue());
        } else {
            this.a.zzaW().zzb().zzb("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void u(zzhv zzhvVar, Object obj) {
        Preconditions.checkNotNull(obj);
        zzhvVar.zze();
        zzhvVar.zzg();
        zzhvVar.zzi();
        zzhvVar.zzm();
        if (obj instanceof String) {
            zzhvVar.zzd((String) obj);
            return;
        }
        if (obj instanceof Long) {
            zzhvVar.zzf(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            zzhvVar.zzh(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            this.a.zzaW().zzb().zzb("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                zzhv zzhvVarZzn = zzhw.zzn();
                for (String str : bundle.keySet()) {
                    zzhv zzhvVarZzn2 = zzhw.zzn();
                    zzhvVarZzn2.zzb(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        zzhvVarZzn2.zzf(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        zzhvVarZzn2.zzd((String) obj2);
                    } else if (obj2 instanceof Double) {
                        zzhvVarZzn2.zzh(((Double) obj2).doubleValue());
                    }
                    zzhvVarZzn.zzk(zzhvVarZzn2);
                }
                if (zzhvVarZzn.zzj() > 0) {
                    arrayList.add((zzhw) zzhvVarZzn.zzbd());
                }
            }
        }
        zzhvVar.zzl(arrayList);
    }

    public final zzoh v(String str, com.google.android.gms.internal.measurement.zzic zzicVar, zzhr zzhrVar, String str2) {
        int iIndexOf;
        zzaif.zza();
        zzic zzicVar2 = this.a;
        if (!zzicVar2.zzc().zzp(str, zzfy.zzaO)) {
            return null;
        }
        long jCurrentTimeMillis = zzicVar2.zzba().currentTimeMillis();
        HashSet hashSet = new HashSet(Arrays.asList(zzicVar2.zzc().zzk(str, zzfy.zzat).split(StringUtils.COMMA)));
        zzpg zzpgVar = this.b;
        zzou zzouVarZzf = zzpgVar.zzf();
        String strK = zzouVarZzf.b.zzh().k(str);
        Uri.Builder builder = new Uri.Builder();
        zzic zzicVar3 = zzouVarZzf.a;
        builder.scheme(zzicVar3.zzc().zzk(str, zzfy.zzam));
        if (TextUtils.isEmpty(strK)) {
            builder.authority(zzicVar3.zzc().zzk(str, zzfy.zzan));
        } else {
            String strZzk = zzicVar3.zzc().zzk(str, zzfy.zzan);
            StringBuilder sb = new StringBuilder(String.valueOf(strK).length() + 1 + String.valueOf(strZzk).length());
            sb.append(strK);
            sb.append(".");
            sb.append(strZzk);
            builder.authority(sb.toString());
        }
        builder.path(zzicVar3.zzc().zzk(str, zzfy.zzao));
        m(builder, "gmp_app_id", zzicVar.zzac(), hashSet);
        zzicVar2.zzc().zzi();
        m(builder, "gmp_version", String.valueOf(161000L), hashSet);
        String strZzV = zzicVar.zzV();
        zzal zzalVarZzc = zzicVar2.zzc();
        zzfx zzfxVar = zzfy.zzaR;
        if (zzalVarZzc.zzp(str, zzfxVar) && zzpgVar.zzh().r(str)) {
            strZzV = "";
        }
        m(builder, "app_instance_id", strZzV, hashSet);
        m(builder, "rdid", zzicVar.zzP(), hashSet);
        m(builder, "bundle_id", zzicVar.zzK(), hashSet);
        String strZzk2 = zzhrVar.zzk();
        String strZza = zzjm.zza(strZzk2);
        if (true != TextUtils.isEmpty(strZza)) {
            strZzk2 = strZza;
        }
        m(builder, "app_event_name", strZzk2, hashSet);
        m(builder, "app_version", String.valueOf(zzicVar.zzai()), hashSet);
        String strZzD = zzicVar.zzD();
        if (zzicVar2.zzc().zzp(str, zzfxVar) && zzpgVar.zzh().q(str) && !TextUtils.isEmpty(strZzD) && (iIndexOf = strZzD.indexOf(".")) != -1) {
            strZzD = strZzD.substring(0, iIndexOf);
        }
        m(builder, CommonUrlParts.OS_VERSION, strZzD, hashSet);
        m(builder, TJVerifierKt.TJC_TIMESTAMP, String.valueOf(zzhrVar.zzn()), hashSet);
        if (zzicVar.zzS()) {
            m(builder, "lat", "1", hashSet);
        }
        m(builder, "privacy_sandbox_version", String.valueOf(zzicVar.zzaG()), hashSet);
        m(builder, "trigger_uri_source", "1", hashSet);
        m(builder, "trigger_uri_timestamp", String.valueOf(jCurrentTimeMillis), hashSet);
        m(builder, "request_uuid", str2, hashSet);
        List<zzhw> listZza = zzhrVar.zza();
        Bundle bundle = new Bundle();
        for (zzhw zzhwVar : listZza) {
            String strZzb = zzhwVar.zzb();
            if (zzhwVar.zzj()) {
                bundle.putString(strZzb, String.valueOf(zzhwVar.zzk()));
            } else if (zzhwVar.zzh()) {
                bundle.putString(strZzb, String.valueOf(zzhwVar.zzi()));
            } else if (zzhwVar.zzc()) {
                bundle.putString(strZzb, zzhwVar.zzd());
            } else if (zzhwVar.zze()) {
                bundle.putString(strZzb, String.valueOf(zzhwVar.zzf()));
            }
        }
        p(builder, zzicVar2.zzc().zzk(str, zzfy.zzas).split("\\|"), bundle, hashSet);
        List<zziu> listZzk = zzicVar.zzk();
        Bundle bundle2 = new Bundle();
        for (zziu zziuVar : listZzk) {
            String strZzc = zziuVar.zzc();
            if (zziuVar.zzk()) {
                bundle2.putString(strZzc, String.valueOf(zziuVar.zzl()));
            } else if (zziuVar.zzi()) {
                bundle2.putString(strZzc, String.valueOf(zziuVar.zzj()));
            } else if (zziuVar.zzd()) {
                bundle2.putString(strZzc, zziuVar.zze());
            } else if (zziuVar.zzf()) {
                bundle2.putString(strZzc, String.valueOf(zziuVar.zzh()));
            }
        }
        p(builder, zzicVar2.zzc().zzk(str, zzfy.zzar).split("\\|"), bundle2, hashSet);
        m(builder, "dma", true != zzicVar.zzaC() ? CommonUrlParts.Values.FALSE_INTEGER : "1", hashSet);
        if (!zzicVar.zzaE().isEmpty()) {
            m(builder, "dma_cps", zzicVar.zzaE(), hashSet);
        }
        if (zzicVar.zzaK()) {
            zzha zzhaVarZzaL = zzicVar.zzaL();
            if (!zzhaVarZzaL.zzb().isEmpty()) {
                m(builder, "dl_gclid", zzhaVarZzaL.zzb(), hashSet);
            }
            if (!zzhaVarZzaL.zzd().isEmpty()) {
                m(builder, "dl_gbraid", zzhaVarZzaL.zzd(), hashSet);
            }
            if (!zzhaVarZzaL.zzf().isEmpty()) {
                m(builder, "dl_gs", zzhaVarZzaL.zzf(), hashSet);
            }
            if (zzhaVarZzaL.zzi() > 0) {
                m(builder, "dl_ss_ts", String.valueOf(zzhaVarZzaL.zzi()), hashSet);
            }
            if (!zzhaVarZzaL.zzk().isEmpty()) {
                m(builder, "mr_gclid", zzhaVarZzaL.zzk(), hashSet);
            }
            if (!zzhaVarZzaL.zzm().isEmpty()) {
                m(builder, "mr_gbraid", zzhaVarZzaL.zzm(), hashSet);
            }
            if (!zzhaVarZzaL.zzo().isEmpty()) {
                m(builder, "mr_gs", zzhaVarZzaL.zzo(), hashSet);
            }
            if (zzhaVarZzaL.zzq() > 0) {
                m(builder, "mr_click_ts", String.valueOf(zzhaVarZzaL.zzq()), hashSet);
            }
        }
        return new zzoh(builder.build().toString(), jCurrentTimeMillis, 1);
    }

    public final zzhs w(zzbc zzbcVar) {
        zzhr zzhrVarZzp = zzhs.zzp();
        zzhrVarZzp.zzq(zzbcVar.f);
        zzhrVarZzp.zzw(zzbcVar.e);
        Bundle bundle = zzbcVar.g.b;
        for (String str : bundle.keySet()) {
            zzhv zzhvVarZzn = zzhw.zzn();
            zzhvVarZzn.zzb(str);
            Object obj = bundle.get(str);
            Preconditions.checkNotNull(obj);
            u(zzhvVarZzn, obj);
            zzhrVarZzp.zzg(zzhvVarZzn);
        }
        String str2 = zzbcVar.c;
        if (!TextUtils.isEmpty(str2) && bundle.get("_o") == null) {
            zzhv zzhvVarZzn2 = zzhw.zzn();
            zzhvVarZzn2.zzb("_o");
            zzhvVarZzn2.zzd(str2);
            zzhrVarZzp.zzf((zzhw) zzhvVarZzn2.zzbd());
        }
        return (zzhs) zzhrVarZzp.zzbd();
    }

    public final String x(zzib zzibVar) {
        String str;
        String str2;
        String str3;
        com.google.android.gms.internal.measurement.zzhe zzheVarZzat;
        if (zzibVar == null) {
            return "";
        }
        StringBuilder sbC = ad2.c("\nbatch {\n");
        if (zzibVar.zzf()) {
            r(sbC, 0, "upload_subdomain", zzibVar.zzh());
        }
        if (zzibVar.zzd()) {
            r(sbC, 0, "sgtm_join_id", zzibVar.zze());
        }
        for (zzid zzidVar : zzibVar.zza()) {
            if (zzidVar != null) {
                l(1, sbC);
                sbC.append("bundle {\n");
                if (zzidVar.zza()) {
                    r(sbC, 1, CommonUrlParts.PROTOCOL_VERSION, Integer.valueOf(zzidVar.zzb()));
                }
                zzair.zza();
                zzic zzicVar = this.a;
                if (zzicVar.zzc().zzp(zzidVar.zzA(), zzfy.zzaM) && zzidVar.zzag()) {
                    r(sbC, 1, "session_stitching_token", zzidVar.zzah());
                }
                r(sbC, 1, "platform", zzidVar.zzt());
                if (zzidVar.zzC()) {
                    r(sbC, 1, "gmp_version", Long.valueOf(zzidVar.zzD()));
                }
                if (zzidVar.zzE()) {
                    r(sbC, 1, "uploading_gmp_version", Long.valueOf(zzidVar.zzF()));
                }
                if (zzidVar.zzac()) {
                    r(sbC, 1, "dynamite_version", Long.valueOf(zzidVar.zzad()));
                }
                if (zzidVar.zzW()) {
                    r(sbC, 1, "config_version", Long.valueOf(zzidVar.zzX()));
                }
                r(sbC, 1, "gmp_app_id", zzidVar.zzP());
                r(sbC, 1, CommonUrlParts.APP_ID, zzidVar.zzA());
                r(sbC, 1, "app_version", zzidVar.zzB());
                if (zzidVar.zzU()) {
                    r(sbC, 1, "app_version_major", Integer.valueOf(zzidVar.zzV()));
                }
                r(sbC, 1, "firebase_instance_id", zzidVar.zzT());
                if (zzidVar.zzK()) {
                    r(sbC, 1, "dev_cert_hash", Long.valueOf(zzidVar.zzL()));
                }
                r(sbC, 1, "app_store", zzidVar.zzz());
                if (zzidVar.zzj()) {
                    r(sbC, 1, "upload_timestamp_millis", Long.valueOf(zzidVar.zzk()));
                }
                if (zzidVar.zzl()) {
                    r(sbC, 1, "start_timestamp_millis", Long.valueOf(zzidVar.zzm()));
                }
                if (zzidVar.zzn()) {
                    r(sbC, 1, "end_timestamp_millis", Long.valueOf(zzidVar.zzo()));
                }
                if (zzidVar.zzp()) {
                    r(sbC, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(zzidVar.zzq()));
                }
                if (zzidVar.zzr()) {
                    r(sbC, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(zzidVar.zzs()));
                }
                r(sbC, 1, "app_instance_id", zzidVar.zzJ());
                r(sbC, 1, "resettable_device_id", zzidVar.zzG());
                r(sbC, 1, "ds_id", zzidVar.zzZ());
                if (zzidVar.zzH()) {
                    r(sbC, 1, "limited_ad_tracking", Boolean.valueOf(zzidVar.zzI()));
                }
                r(sbC, 1, CommonUrlParts.OS_VERSION, zzidVar.zzu());
                r(sbC, 1, "device_model", zzidVar.zzv());
                r(sbC, 1, "user_default_language", zzidVar.zzw());
                if (zzidVar.zzx()) {
                    r(sbC, 1, "time_zone_offset_minutes", Integer.valueOf(zzidVar.zzy()));
                }
                if (zzidVar.zzM()) {
                    r(sbC, 1, "bundle_sequential_index", Integer.valueOf(zzidVar.zzN()));
                }
                if (zzidVar.zzau()) {
                    r(sbC, 1, "delivery_index", Integer.valueOf(zzidVar.zzav()));
                }
                if (zzidVar.zzQ()) {
                    r(sbC, 1, "service_upload", Boolean.valueOf(zzidVar.zzR()));
                }
                r(sbC, 1, "health_monitor", zzidVar.zzO());
                if (zzidVar.zzaa()) {
                    r(sbC, 1, "retry_counter", Integer.valueOf(zzidVar.zzab()));
                }
                if (zzidVar.zzae()) {
                    r(sbC, 1, "consent_signals", zzidVar.zzaf());
                }
                if (zzidVar.zzan()) {
                    r(sbC, 1, "is_dma_region", Boolean.valueOf(zzidVar.zzao()));
                }
                if (zzidVar.zzap()) {
                    r(sbC, 1, "core_platform_services", zzidVar.zzaq());
                }
                if (zzidVar.zzal()) {
                    r(sbC, 1, "consent_diagnostics", zzidVar.zzam());
                }
                if (zzidVar.zzai()) {
                    r(sbC, 1, "target_os_version", Long.valueOf(zzidVar.zzaj()));
                }
                zzaif.zza();
                if (zzicVar.zzc().zzp(zzidVar.zzA(), zzfy.zzaO)) {
                    r(sbC, 1, "ad_services_version", Integer.valueOf(zzidVar.zzar()));
                    if (zzidVar.zzas() && (zzheVarZzat = zzidVar.zzat()) != null) {
                        l(2, sbC);
                        sbC.append("attribution_eligibility_status {\n");
                        r(sbC, 2, "eligible", Boolean.valueOf(zzheVarZzat.zza()));
                        r(sbC, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(zzheVarZzat.zzb()));
                        r(sbC, 2, "pre_r", Boolean.valueOf(zzheVarZzat.zzc()));
                        r(sbC, 2, "r_extensions_too_old", Boolean.valueOf(zzheVarZzat.zzd()));
                        r(sbC, 2, "adservices_extension_too_old", Boolean.valueOf(zzheVarZzat.zze()));
                        r(sbC, 2, "ad_storage_not_allowed", Boolean.valueOf(zzheVarZzat.zzf()));
                        r(sbC, 2, "measurement_manager_disabled", Boolean.valueOf(zzheVarZzat.zzh()));
                        l(2, sbC);
                        sbC.append("}\n");
                    }
                }
                if (zzidVar.zzaw()) {
                    zzha zzhaVarZzax = zzidVar.zzax();
                    l(2, sbC);
                    sbC.append("ad_campaign_info {\n");
                    if (zzhaVarZzax.zza()) {
                        r(sbC, 2, "deep_link_gclid", zzhaVarZzax.zzb());
                    }
                    if (zzhaVarZzax.zzc()) {
                        r(sbC, 2, "deep_link_gbraid", zzhaVarZzax.zzd());
                    }
                    if (zzhaVarZzax.zze()) {
                        r(sbC, 2, "deep_link_gad_source", zzhaVarZzax.zzf());
                    }
                    if (zzhaVarZzax.zzr()) {
                        r(sbC, 2, "deep_link_url", zzhaVarZzax.zzs());
                    }
                    if (zzhaVarZzax.zzh()) {
                        r(sbC, 2, "deep_link_session_millis", Long.valueOf(zzhaVarZzax.zzi()));
                    }
                    if (zzhaVarZzax.zzj()) {
                        r(sbC, 2, "market_referrer_gclid", zzhaVarZzax.zzk());
                    }
                    if (zzhaVarZzax.zzl()) {
                        r(sbC, 2, "market_referrer_gbraid", zzhaVarZzax.zzm());
                    }
                    if (zzhaVarZzax.zzn()) {
                        r(sbC, 2, "market_referrer_gad_source", zzhaVarZzax.zzo());
                    }
                    if (zzhaVarZzax.zzp()) {
                        r(sbC, 2, "market_referrer_click_millis", Long.valueOf(zzhaVarZzax.zzq()));
                    }
                    l(2, sbC);
                    sbC.append("}\n");
                }
                if (zzidVar.zzaA()) {
                    r(sbC, 1, "batching_timestamp_millis", Long.valueOf(zzidVar.zzaB()));
                }
                if (zzidVar.zzay()) {
                    zzis zzisVarZzaz = zzidVar.zzaz();
                    l(2, sbC);
                    sbC.append("sgtm_diagnostics {\n");
                    int iZzf = zzisVarZzaz.zzf();
                    if (iZzf == 1) {
                        str2 = "UPLOAD_TYPE_UNKNOWN";
                    } else if (iZzf == 2) {
                        str2 = "GA_UPLOAD";
                    } else if (iZzf != 3) {
                        str2 = iZzf != 4 ? "SDK_SERVICE_UPLOAD" : "PACKAGE_SERVICE_UPLOAD";
                    } else {
                        str2 = "SDK_CLIENT_UPLOAD";
                    }
                    r(sbC, 2, "upload_type", str2);
                    r(sbC, 2, "client_upload_eligibility", zzisVarZzaz.zza().name());
                    int iZzh = zzisVarZzaz.zzh();
                    if (iZzh == 1) {
                        str3 = "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN";
                    } else if (iZzh == 2) {
                        str3 = "SERVICE_UPLOAD_ELIGIBLE";
                    } else if (iZzh == 3) {
                        str3 = "NOT_IN_ROLLOUT";
                    } else if (iZzh != 4) {
                        str3 = iZzh != 5 ? "NON_PLAY_MISSING_SGTM_SERVER_URL" : "MISSING_SGTM_PROXY_INFO";
                    } else {
                        str3 = "MISSING_SGTM_SETTINGS";
                    }
                    r(sbC, 2, "service_upload_eligibility", str3);
                    l(2, sbC);
                    sbC.append("}\n");
                }
                if (zzidVar.zzaC()) {
                    zzho zzhoVarZzaD = zzidVar.zzaD();
                    l(2, sbC);
                    sbC.append("consent_info_extra {\n");
                    for (com.google.android.gms.internal.measurement.zzhl zzhlVar : zzhoVarZzaD.zza()) {
                        l(3, sbC);
                        sbC.append("limited_data_modes {\n");
                        int iZzc = zzhlVar.zzc();
                        if (iZzc == 1) {
                            str = "CONSENT_TYPE_UNSPECIFIED";
                        } else if (iZzc == 2) {
                            str = "AD_STORAGE";
                        } else if (iZzc != 3) {
                            str = iZzc != 4 ? "AD_PERSONALIZATION" : "AD_USER_DATA";
                        } else {
                            str = "ANALYTICS_STORAGE";
                        }
                        r(sbC, 3, ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, str);
                        int iZzd = zzhlVar.zzd();
                        r(sbC, 3, "mode", iZzd != 1 ? iZzd != 2 ? "NO_DATA_MODE" : "LIMITED_MODE" : "NOT_LIMITED");
                        l(3, sbC);
                        sbC.append("}\n");
                    }
                    l(2, sbC);
                    sbC.append("}\n");
                }
                List<zziu> listZzf = zzidVar.zzf();
                if (listZzf != null) {
                    for (zziu zziuVar : listZzf) {
                        if (zziuVar != null) {
                            l(2, sbC);
                            sbC.append("user_property {\n");
                            r(sbC, 2, "set_timestamp_millis", zziuVar.zza() ? Long.valueOf(zziuVar.zzb()) : null);
                            r(sbC, 2, "name", zzicVar.zzl().c(zziuVar.zzc()));
                            r(sbC, 2, "string_value", zziuVar.zze());
                            r(sbC, 2, "int_value", zziuVar.zzf() ? Long.valueOf(zziuVar.zzh()) : null);
                            r(sbC, 2, "double_value", zziuVar.zzk() ? Double.valueOf(zziuVar.zzl()) : null);
                            l(2, sbC);
                            sbC.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.zzhg> listZzS = zzidVar.zzS();
                if (listZzS != null) {
                    for (com.google.android.gms.internal.measurement.zzhg zzhgVar : listZzS) {
                        if (zzhgVar != null) {
                            l(2, sbC);
                            sbC.append("audience_membership {\n");
                            if (zzhgVar.zza()) {
                                r(sbC, 2, "audience_id", Integer.valueOf(zzhgVar.zzb()));
                            }
                            if (zzhgVar.zzf()) {
                                r(sbC, 2, "new_audience", Boolean.valueOf(zzhgVar.zzh()));
                            }
                            q(sbC, "current_data", zzhgVar.zzc());
                            if (zzhgVar.zzd()) {
                                q(sbC, "previous_data", zzhgVar.zze());
                            }
                            l(2, sbC);
                            sbC.append("}\n");
                        }
                    }
                }
                List<zzhs> listZzc = zzidVar.zzc();
                if (listZzc != null) {
                    for (zzhs zzhsVar : listZzc) {
                        if (zzhsVar != null) {
                            l(2, sbC);
                            sbC.append("event {\n");
                            r(sbC, 2, "name", zzicVar.zzl().a(zzhsVar.zzd()));
                            if (zzhsVar.zze()) {
                                r(sbC, 2, "timestamp_millis", Long.valueOf(zzhsVar.zzf()));
                            }
                            if (zzicVar.zzc().zzp(null, zzfy.zzbe) && zzhsVar.zzl()) {
                                r(sbC, 2, "corrected_timestamp_millis", Long.valueOf(zzhsVar.zzm()));
                            }
                            if (zzhsVar.zzh()) {
                                r(sbC, 2, "previous_timestamp_millis", Long.valueOf(zzhsVar.zzi()));
                            }
                            if (zzhsVar.zzj()) {
                                r(sbC, 2, "count", Integer.valueOf(zzhsVar.zzk()));
                            }
                            if (zzhsVar.zzb() != 0) {
                                j(sbC, 2, zzhsVar.zza());
                            }
                            l(2, sbC);
                            sbC.append("}\n");
                        }
                    }
                }
                l(1, sbC);
                sbC.append("}\n");
            }
        }
        sbC.append("} // End-of-batch\n");
        return sbC.toString();
    }

    public final String y(zzfn zzfnVar) {
        StringBuilder sbC = ad2.c("\nproperty_filter {\n");
        if (zzfnVar.zza()) {
            r(sbC, 0, "filter_id", Integer.valueOf(zzfnVar.zzb()));
        }
        r(sbC, 0, "property_name", this.a.zzl().c(zzfnVar.zzc()));
        String strN = n(zzfnVar.zze(), zzfnVar.zzf(), zzfnVar.zzi());
        if (!strN.isEmpty()) {
            r(sbC, 0, "filter_type", strN);
        }
        k(sbC, 1, zzfnVar.zzd());
        sbC.append("}\n");
        return sbC.toString();
    }

    public final Parcelable z(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            parcelable = (Parcelable) creator.createFromParcel(parcelObtain);
        } catch (SafeParcelReader.ParseException unused) {
            this.a.zzaW().zzb().zza("Failed to load parcelable from buffer");
        } finally {
            parcelObtain.recycle();
        }
        return parcelable;
    }

    public final void zzD(Map map) {
        long epochMilli;
        zzic zzicVar = this.a;
        String strH = h("Date", map);
        if (TextUtils.isEmpty(strH)) {
            return;
        }
        try {
            epochMilli = ZonedDateTime.parse(strH, DateTimeFormatter.RFC_1123_DATE_TIME).toInstant().toEpochMilli();
        } catch (DateTimeParseException unused) {
            zzicVar.zzaW().zze().zzb("Unable to parse header time, time", strH);
            epochMilli = 0;
        }
        if (epochMilli > 0) {
            long jElapsedRealtime = zzicVar.zzba().elapsedRealtime();
            zzg();
            if (this.e == 0) {
                this.d = jElapsedRealtime;
                this.e = epochMilli;
            }
        }
    }

    public final long zzE(long j) {
        zzg();
        long j2 = this.e;
        if (j2 == 0 || j == 0) {
            return 0L;
        }
        return (j2 - this.d) + j;
    }
}

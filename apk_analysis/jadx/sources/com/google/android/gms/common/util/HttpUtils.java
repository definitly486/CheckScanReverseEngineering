package com.google.android.gms.common.util;

import com.google.android.gms.internal.common.zzp;
import com.google.android.gms.internal.common.zzw;
import defpackage.cg;
import defpackage.fg;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class HttpUtils {
    static {
        Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
        Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
        Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashMap] */
    public static Map<String, String> parse(URI uri, String str) {
        ?? map = Collections.EMPTY_MAP;
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            map = new HashMap();
            zzw zzwVarZza = zzw.zza(zzp.zzb('='));
            Iterator it = zzw.zza(zzp.zzb('&')).zzb().zzc(rawQuery).iterator();
            while (it.hasNext()) {
                List listZzd = zzwVarZza.zzd((String) it.next());
                String strDecode = null;
                if (listZzd.isEmpty() || listZzd.size() > 2) {
                    fg.c("bad parameter");
                    return null;
                }
                try {
                    String strDecode2 = URLDecoder.decode((String) listZzd.get(0), str == null ? "ISO-8859-1" : str);
                    if (listZzd.size() == 2) {
                        try {
                            strDecode = URLDecoder.decode((String) listZzd.get(1), str != null ? str : "ISO-8859-1");
                        } catch (UnsupportedEncodingException e) {
                            cg.h(e);
                            return null;
                        }
                    }
                    map.put(strDecode2, strDecode);
                } catch (UnsupportedEncodingException e2) {
                    cg.h(e2);
                    return null;
                }
            }
        }
        return map;
    }
}

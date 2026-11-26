package com.google.android.gms.internal.measurement;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import defpackage.dg;
import defpackage.kh;
import defpackage.kv2;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrz {
    public final String a;
    public String b = "files";
    public String c = "common";
    public final Account d = zzsa.b;
    public String e = "";
    public final com.google.common.collect.j.a f;

    public zzrz(Context context) {
        com.google.common.collect.j.b bVar = com.google.common.collect.j.c;
        this.f = new com.google.common.collect.j.a();
        zzsq.zza(context != null, "Context cannot be null", new Object[0]);
        this.a = context.getPackageName();
    }

    public final zzrz zza() {
        Set set = zzsa.d;
        zzsq.zza(set.contains("directboot-files"), "The only supported locations are %s: %s", set, "directboot-files");
        this.b = "directboot-files";
        return this;
    }

    public final zzrz zzb(String str) {
        zzsq.zza(zzsa.a.matcher(str).matches(), "Module must match [a-z]+(_[a-z]+)*: %s", str);
        zzsq.zza(!zzsa.c.contains(str), "Module name is reserved and cannot be used: %s", str);
        this.c = str;
        return this;
    }

    public final zzrz zzc(String str) {
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        Pattern pattern = zzsa.a;
        this.e = str;
        return this;
    }

    public final Uri zzd() {
        String strC;
        String str = this.b;
        String str2 = this.c;
        Account account = zzrv.zza;
        Account account2 = this.d;
        zzsq.zza(account2.type.indexOf(58) == -1, "Account type contains ':'.", new Object[0]);
        zzsq.zza(account2.type.indexOf(47) == -1, "Account type contains '/'.", new Object[0]);
        zzsq.zza(account2.name.indexOf(47) == -1, "Account name contains '/'.", new Object[0]);
        if (zzrv.zza.equals(account2)) {
            strC = "shared";
        } else {
            String str3 = account2.type;
            String str4 = account2.name;
            strC = kh.c(new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length()), str3, StringUtils.PROCESS_POSTFIX_DELIMITER, str4);
        }
        String str5 = this.e;
        StringBuilder sb = new StringBuilder(strC.length() + String.valueOf(str2).length() + str.length() + 2 + 1 + 1 + str5.length());
        kv2.c(sb, "/", str, "/", str2);
        return new Uri.Builder().scheme("android").authority(this.a).path(dg.c(sb, "/", strC, "/", str5)).encodedFragment(zzsp.zzb(this.f.g())).build();
    }
}

package defpackage;

import android.os.Bundle;
import androidx.media3.common.audio.DefaultGainProvider;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.google.android.gms.internal.mlkit_vision_barcode.zzfa;
import com.google.firebase.encoders.FieldDescriptor;
import com.my.target.m1;
import com.my.tracker.obfuscated.q0;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import yads.e91;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.m06;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class eh implements DefaultGainProvider.FadeProvider, l66, m1.b, jv, PurchasesUpdatedListener {
    public static FieldDescriptor b(int i, FieldDescriptor.Builder builder) {
        zzfa zzfaVar = new zzfa();
        zzfaVar.zza(i);
        return builder.withProperty(zzfaVar.zzb()).build();
    }

    public static String c(Object[] objArr, int i, Locale locale, String str, StringBuilder sb) {
        sb.append(String.format(locale, str, Arrays.copyOf(objArr, i)));
        return sb.toString();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return e91.c(((Long) obj).longValue());
    }

    @Override // androidx.media3.common.audio.DefaultGainProvider.FadeProvider
    public float getGainFactorAt(long j, long j2) {
        return DefaultGainProvider.lambda$static$3(j, j2);
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult billingResult, List list) {
        q0.a(billingResult, list);
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return m06.a(bundle);
    }
}

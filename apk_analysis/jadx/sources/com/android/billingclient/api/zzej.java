package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class zzej extends BroadcastReceiver {
    private BillingResult zza;
    private boolean zzb = false;
    private final zzdd zzc;

    public zzej(zzdd zzddVar) {
        this.zzc = zzddVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingReceiver", "Null intent!");
            return;
        }
        com.google.android.gms.internal.play_billing.zzc.zzm("ProxyBillingReceiver", "Received intent action: ".concat(String.valueOf(intent.getAction())));
        if (!Objects.equals(intent.getAction(), "com.android.vending.billing.IN_APP_BILLING_RESULT_UPDATE_ACTION")) {
            if (!Objects.equals(intent.getAction(), "com.android.vending.billing.PLAY_BILLING_ACTIVITY_CREATED_ACTION")) {
                com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingReceiver", "Unexpected broadcast action: ".concat(String.valueOf(intent.getAction())));
                return;
            }
            this.zzb = true;
            zzdd zzddVar = this.zzc;
            if (zzddVar != null) {
                zzddVar.zzk(intent.getLongExtra("billingClientTransactionId", 0L));
                return;
            }
            return;
        }
        if (!intent.hasExtra("RESPONSE_CODE")) {
            com.google.android.gms.internal.play_billing.zzc.zzn("ProxyBillingReceiver", "Missing RESPONSE_CODE in intent.");
            zzdd zzddVar2 = this.zzc;
            if (zzddVar2 != null) {
                zzddVar2.zzj(null, intent.getLongExtra("billingClientTransactionId", 0L));
                return;
            }
            return;
        }
        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
        builderNewBuilder.setResponseCode(intent.getIntExtra("RESPONSE_CODE", 0));
        builderNewBuilder.setDebugMessage(com.google.android.gms.internal.play_billing.zzbo.zzc(intent.getStringExtra("DEBUG_MESSAGE")));
        BillingResult billingResultBuild = builderNewBuilder.build();
        this.zza = billingResultBuild;
        zzdd zzddVar3 = this.zzc;
        if (zzddVar3 != null) {
            zzddVar3.zzj(billingResultBuild, intent.getLongExtra("billingClientTransactionId", 0L));
        }
    }

    public final BillingResult zza() {
        return this.zza;
    }

    public final void zzb() {
        this.zza = null;
    }

    public final boolean zzc() {
        return this.zzb;
    }
}

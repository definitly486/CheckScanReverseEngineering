package com.warefly.checkscan.auth.services.sms;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.phone.SmsRetriever;
import com.google.android.gms.common.api.Status;
import defpackage.h06;
import defpackage.j59;
import defpackage.tz;
import defpackage.ua8;

/* JADX INFO: loaded from: classes5.dex */
public final class SmsReceiverImpl extends BroadcastReceiver {
    public final tz a = new tz();
    public h06 b;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        h06 h06Var;
        intent.getClass();
        if (SmsRetriever.SMS_RETRIEVED_ACTION.equals(intent.getAction())) {
            try {
                Bundle extras = intent.getExtras();
                String strL0 = null;
                Object obj = extras != null ? extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS") : null;
                Status status = obj instanceof Status ? (Status) obj : null;
                if (status != null && status.getStatusCode() == 0) {
                    Object obj2 = extras.get(SmsRetriever.EXTRA_SMS_MESSAGE);
                    String str = obj2 instanceof String ? (String) obj2 : null;
                    this.a.getClass();
                    if (str != null) {
                        StringBuilder sb = new StringBuilder();
                        int length = str.length();
                        for (int i = 0; i < length; i++) {
                            char cCharAt = str.charAt(i);
                            if (Character.isDigit(cCharAt)) {
                                sb.append(cCharAt);
                            }
                        }
                        strL0 = ua8.l0(4, sb.toString());
                    }
                    if (strL0 == null || (h06Var = this.b) == null) {
                        return;
                    }
                    h06Var.c(strL0);
                    j59 j59Var = j59.a;
                }
            } catch (Exception unused) {
            }
        }
    }
}

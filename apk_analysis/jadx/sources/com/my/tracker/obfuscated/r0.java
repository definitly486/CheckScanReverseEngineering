package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import defpackage.eu3;
import defpackage.ll0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class r0 {
    final Context a;
    final i0 b;
    final i0.c c = new ll0(this, 4);

    private r0(i0 i0Var, Context context) {
        this.b = i0Var;
        this.a = context.getApplicationContext();
    }

    public void a(int i, Intent intent) {
        if (!q0.g.booleanValue()) {
            b3.b("GooglePlayPurchaseHandler error: classes com.android.billingclient:billing aren't found");
            return;
        }
        if (i != -1) {
            b3.a("GooglePlayPurchaseHandler: result code isn't equal to RESULT_OK");
            return;
        }
        if (intent == null) {
            b3.a("GooglePlayPurchaseHandler: empty intent has been received");
            return;
        }
        final String stringExtra = intent.getStringExtra("INAPP_PURCHASE_DATA");
        if (TextUtils.isEmpty(stringExtra)) {
            b3.a("GooglePlayPurchaseHandler: empty purchase data in intent");
            return;
        }
        final String stringExtra2 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        if (stringExtra2 == null) {
            b3.a("GooglePlayPurchaseHandler: null data signature in intent");
        } else {
            m.a(new Runnable() { // from class: k7a
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(stringExtra, stringExtra2);
                }
            });
        }
    }

    public void b(List list) {
        b3.a("GooglePlayPurchaseHandler: processing raw purchases");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s0 s0Var = (s0) it.next();
            String strC = s0Var.c();
            if (s0Var.g()) {
                b3.a("GooglePlayPurchaseHandler: inapp raw purchase, product id: " + strC);
                arrayList2.add(s0Var);
            } else {
                b3.a("GooglePlayPurchaseHandler: subs raw purchase, product id: " + strC);
                arrayList.add(s0Var);
            }
        }
        a((List) arrayList, false);
        a((List) arrayList2, true);
    }

    public final class a implements q0.b {
        private final List a;

        public a(List list) {
            this.a = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Map map) {
            for (s0 s0Var : this.a) {
                s0Var.a((JSONObject) map.get(s0Var.c()));
            }
            r0.this.b.d(this.a);
        }

        @Override // com.my.tracker.obfuscated.q0.b
        public void a(int i, final Map map) {
            if (i == 1) {
                b3.b("GooglePlayPurchaseHandler error: can't retrieve information about products");
            } else {
                m.a(new Runnable() { // from class: com.my.tracker.obfuscated.j3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.b.a(map);
                    }
                });
            }
        }
    }

    public static r0 a(i0 i0Var, Context context) {
        return new r0(i0Var, context);
    }

    public void a() {
        this.b.a(this.c);
    }

    public void a(JSONObject jSONObject, JSONObject jSONObject2, String str, Map map) {
        this.b.a(jSONObject, jSONObject2, str, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2) {
        s0 s0VarA = s0.a(str, str2, z2.a());
        if (s0VarA == null) {
            return;
        }
        this.b.a(Collections.singletonList(s0VarA), this.c);
    }

    public void a(int i, List list) {
        if (i != 0) {
            b3.a("GooglePlayPurchaseHandler: response code isn't equal to BILLING_OK_RESPONSE_CODE");
            return;
        }
        if (list != null && !list.isEmpty()) {
            if (!q0.g.booleanValue()) {
                b3.b("GooglePlayPurchaseHandler error: classes com.android.billingclient:billing aren't found");
                return;
            } else {
                m.a(new eu3(4, this, list));
                return;
            }
        }
        b3.a("GooglePlayPurchaseHandler: null or empty purchases list has been received");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        b3.a("GooglePlayPurchaseHandler: iterating over unchecked list of objects");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            s0 s0VarA = q0.a(it.next());
            if (s0VarA == null) {
                b3.a("GooglePlayPurchaseHandler: null purchase data after processing");
            } else {
                arrayList.add(s0VarA);
            }
        }
        if (arrayList.isEmpty()) {
            b3.a("GooglePlayPurchaseHandler: skip empty purchases list");
        } else {
            this.b.a(arrayList, this.c);
        }
    }

    public void a(List list, boolean z) {
        if (!list.isEmpty()) {
            q0.a(list, z, new a(list), this.a);
        } else if (z) {
            b3.a("GooglePlayPurchaseHandler: empty inapp raw purchases list");
        } else {
            b3.a("GooglePlayPurchaseHandler: empty subs raw purchases list");
        }
    }
}

package com.my.tracker.obfuscated;

import android.content.Context;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.my.tracker.obfuscated.q0;
import com.tapjoy.TJAdUnitConstants;
import defpackage.eh;
import defpackage.ve1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class q0 {
    public static final Boolean g;
    private static final Set h;
    final BillingClientStateListener a;
    private final AtomicBoolean b = new AtomicBoolean();
    private final List c;
    private final String d;
    private final b e;
    private final BillingClient f;

    public class a implements BillingClientStateListener {
        final AtomicInteger a = new AtomicInteger(0);
        final /* synthetic */ b b;

        public a(b bVar) {
            this.b = bVar;
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingServiceDisconnected() {
            if (this.a.incrementAndGet() >= 3 || !q0.this.c()) {
                b3.a("GooglePlayProductHelper: exceeded numbers of billing client connection attempts");
                this.b.a(1, Collections.EMPTY_MAP);
                q0.this.a();
            }
        }

        @Override // com.android.billingclient.api.BillingClientStateListener
        public void onBillingSetupFinished(BillingResult billingResult) {
            if (billingResult == null || billingResult.getResponseCode() != 0) {
                b3.a("GooglePlayProductHelper: error while connecting with billing client");
                onBillingServiceDisconnected();
            } else {
                b3.a("GooglePlayProductHelper: connection with billing client has been established");
                this.a.set(0);
                q0.this.b();
            }
        }
    }

    public interface b {
        void a(int i, Map map);
    }

    static {
        boolean z;
        try {
            z = Purchase.class.equals(Purchase.class) && BillingClient.class.equals(BillingClient.class);
        } catch (Throwable unused) {
        }
        g = Boolean.valueOf(z);
        if (z) {
            h = new HashSet();
        } else {
            h = Collections.EMPTY_SET;
        }
    }

    private q0(List list, String str, b bVar, Context context) {
        this.c = list;
        this.e = bVar;
        this.f = BillingClient.newBuilder(context).setListener(new eh()).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
        this.d = str;
        this.a = new a(bVar);
    }

    private static JSONObject a(ProductDetails productDetails) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("productId", productDetails.getProductId());
        jSONObject.put(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, productDetails.getProductType());
        jSONObject.put(TJAdUnitConstants.String.TITLE, productDetails.getTitle());
        jSONObject.put("name", productDetails.getName());
        jSONObject.put("description", productDetails.getDescription());
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
        if (oneTimePurchaseOfferDetails != null) {
            jSONObject.put(FirebaseAnalytics.Param.PRICE, oneTimePurchaseOfferDetails.getFormattedPrice());
            jSONObject.put("price_amount_micros", oneTimePurchaseOfferDetails.getPriceAmountMicros());
            jSONObject.put("price_currency_code", oneTimePurchaseOfferDetails.getPriceCurrencyCode());
            return jSONObject;
        }
        List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = productDetails.getSubscriptionOfferDetails();
        if (subscriptionOfferDetails != null && !subscriptionOfferDetails.isEmpty()) {
            List<ProductDetails.PricingPhase> pricingPhaseList = subscriptionOfferDetails.get(0).getPricingPhases().getPricingPhaseList();
            if (!pricingPhaseList.isEmpty()) {
                ProductDetails.PricingPhase pricingPhase = pricingPhaseList.get(0);
                jSONObject.put(FirebaseAnalytics.Param.PRICE, pricingPhase.getFormattedPrice());
                jSONObject.put("price_amount_micros", pricingPhase.getPriceAmountMicros());
                jSONObject.put("price_currency_code", pricingPhase.getPriceCurrencyCode());
            }
        }
        return jSONObject;
    }

    public void b() {
        try {
            b3.a("GooglePlayProductHelper: querying for " + this.d);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId((String) it.next()).setProductType(this.d).build());
            }
            this.f.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(arrayList).build(), new ve1(this));
        } catch (Throwable th) {
            b3.b("GooglePlayProductHelper error: exception while querying details for " + this.d, th);
            a();
        }
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void a(BillingResult billingResult, QueryProductDetailsResult queryProductDetailsResult) {
        if (!this.b.compareAndSet(false, true)) {
            b3.a("GooglePlayProductHelper: productDetails has already been received");
            return;
        }
        int responseCode = billingResult != null ? billingResult.getResponseCode() : 6;
        if (responseCode != 0) {
            b3.a("GooglePlayProductHelper: getProductDetails completed with errorCode: " + responseCode + ", message: " + (billingResult != null ? billingResult.getDebugMessage() : "{empty message}"));
            this.e.a(1, Collections.EMPTY_MAP);
            return;
        }
        List<ProductDetails> productDetailsList = queryProductDetailsResult != null ? queryProductDetailsResult.getProductDetailsList() : null;
        if (productDetailsList == null || productDetailsList.isEmpty()) {
            b3.a("GooglePlayProductHelper: null list of productDetails has been received");
            this.e.a(0, Collections.EMPTY_MAP);
            return;
        }
        HashMap map = new HashMap();
        b3.a("GooglePlayProductHelper: populating map of productDetails data");
        for (ProductDetails productDetails : productDetailsList) {
            try {
                map.put(productDetails.getProductId(), a(productDetails));
            } catch (Throwable th) {
                b3.b("GooglePlayProductHelper error: exception while parsing productDetails", th);
            }
        }
        this.e.a(0, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final BillingResult billingResult, final QueryProductDetailsResult queryProductDetailsResult) {
        m.a(new Runnable() { // from class: a6a
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(billingResult, queryProductDetailsResult);
            }
        });
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(BillingResult billingResult, List list) {
    }

    public static s0 a(Object obj) {
        if (!g.booleanValue()) {
            b3.b("GooglePlayProductHelper: purchase helper is disabled");
            return null;
        }
        try {
            if (obj instanceof Purchase) {
                Purchase purchase = (Purchase) obj;
                return s0.a(purchase.getOriginalJson(), purchase.getSignature(), z2.a());
            }
        } catch (Throwable th) {
            b3.b("GooglePlayProductHelper error: exception occurred while processing uncasted object", th);
        }
        return null;
    }

    public boolean c() {
        try {
            b3.a("GooglePlayProductHelper: start connection with billing client");
            this.f.startConnection(this.a);
            h.add(this);
            return true;
        } catch (Throwable th) {
            b3.b("GooglePlayProductHelper error: exception while start connection:", th);
            return false;
        }
    }

    public static void a(List list, boolean z, final b bVar, final Context context) {
        if (list.isEmpty()) {
            b3.a("GooglePlayProductHelper: empty purchases list");
            bVar.a(0, Collections.EMPTY_MAP);
            return;
        }
        final String str = z ? BillingClient.ProductType.SUBS : BillingClient.ProductType.INAPP;
        final ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String strC = ((s0) it.next()).c();
            if (!arrayList.contains(strC)) {
                arrayList.add(strC);
            }
        }
        m.f(new Runnable() { // from class: z5a
            @Override // java.lang.Runnable
            public final void run() {
                q0.a(arrayList, str, bVar, context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list, String str, b bVar, Context context) {
        try {
            q0 q0Var = new q0(list, str, bVar, context);
            if (q0Var.c()) {
                return;
            } else {
                q0Var.a();
            }
        } catch (Throwable th) {
            b3.b("GooglePlayProductHelper error: error while creating ProductHelper", th);
        }
        bVar.a(1, Collections.EMPTY_MAP);
    }

    public void a() {
        try {
            b3.a("GooglePlayProductHelper: end connection with billing client");
            h.remove(this);
            this.f.endConnection();
        } catch (Throwable th) {
            b3.b("GooglePlayProductHelper error: exception while end connection:", th);
        }
    }
}

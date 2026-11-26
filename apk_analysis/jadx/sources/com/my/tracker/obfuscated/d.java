package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.huawei.hmf.tasks.OnFailureListener;
import com.huawei.hmf.tasks.OnSuccessListener;
import com.huawei.hmf.tasks.Task;
import com.huawei.hms.iap.Iap;
import com.huawei.hms.iap.IapClient;
import com.huawei.hms.iap.entity.OwnedPurchasesReq;
import com.huawei.hms.iap.entity.OwnedPurchasesResult;
import com.huawei.hms.iap.entity.ProductInfo;
import com.huawei.hms.iap.entity.ProductInfoReq;
import com.huawei.hms.iap.entity.ProductInfoResult;
import com.huawei.hms.iap.entity.PurchaseResultInfo;
import defpackage.ds9;
import defpackage.hs9;
import defpackage.w89;
import defpackage.yu;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class d {
    final IapClient a;
    final Context b;
    final b c;
    Set d;

    public static final class a {
        final IapClient a;
        final Context b;

        public a(IapClient iapClient, Context context) {
            this.a = iapClient;
            this.b = context;
        }

        public d a(b bVar) {
            return new d(this.a, bVar, this.b);
        }
    }

    public interface b {
        void a(List list);

        void c(List list);
    }

    public d(IapClient iapClient, b bVar, Context context) {
        this.a = iapClient;
        this.c = bVar;
        this.b = context;
        b3.a("AppGalleryHelper AppGalleryHelper created");
    }

    public static JSONObject a(Object obj) {
        b3.a("AppGalleryHelper: start parseProductInfoToJson");
        try {
            ProductInfo productInfo = (ProductInfo) obj;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("productId", productInfo.getProductId());
            jSONObject.put("productName", productInfo.getProductName());
            jSONObject.put("productDesc", productInfo.getProductDesc());
            jSONObject.put(FirebaseAnalytics.Param.CURRENCY, productInfo.getCurrency());
            jSONObject.put(FirebaseAnalytics.Param.PRICE, productInfo.getPrice());
            jSONObject.put("microsPrice", productInfo.getMicrosPrice());
            jSONObject.put("priceType", productInfo.getPriceType());
            jSONObject.put("originalMicroPrice", productInfo.getOriginalMicroPrice());
            jSONObject.put("originalLocalPrice", productInfo.getOriginalLocalPrice());
            jSONObject.put("subPeriod", productInfo.getSubPeriod());
            jSONObject.put("subSpecialPrice", productInfo.getSubSpecialPrice());
            jSONObject.put("subSpecialPriceMicros", productInfo.getSubSpecialPriceMicros());
            jSONObject.put("subSpecialPeriod", productInfo.getSubSpecialPeriod());
            jSONObject.put("subSpecialPeriodCycles", productInfo.getSubSpecialPeriodCycles());
            jSONObject.put("subFreeTrialPeriod", productInfo.getSubFreeTrialPeriod());
            jSONObject.put("subGroupId", productInfo.getSubGroupId());
            jSONObject.put("subGroupTitle", productInfo.getSubGroupTitle());
            jSONObject.put("subProductLevel", productInfo.getSubProductLevel());
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, productInfo.getStatus());
            return jSONObject;
        } catch (NoClassDefFoundError e) {
            b3.b("AppGalleryHelper: ", e);
            return null;
        } catch (Throwable th) {
            b3.b("AppGalleryHelper: ", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Intent intent) {
        PurchaseResultInfo purchaseResultInfoFromIntent = this.a.parsePurchaseResultInfoFromIntent(intent);
        int returnCode = purchaseResultInfoFromIntent.getReturnCode();
        if (returnCode == 0) {
            this.c.a(Collections.singletonList(f.a(purchaseResultInfoFromIntent.getInAppPurchaseData(), purchaseResultInfoFromIntent.getInAppDataSignature(), purchaseResultInfoFromIntent.getSignatureAlgorithm(), 1, z2.a())));
        } else {
            b3.b("AppGalleryHelper error: can not getting PurchaseResultInfo. resultCode " + returnCode);
        }
    }

    public final class c implements OnSuccessListener {
        final int a;
        final int b;
        final List c = Collections.synchronizedList(new ArrayList());
        final List d = Collections.synchronizedList(new ArrayList());
        String e;

        public c(int i, int i2) {
            this.a = i;
            this.b = i2;
            b3.a("OwnedPurchaseLoader: loader created");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(OwnedPurchasesResult ownedPurchasesResult) {
            this.c.addAll(ownedPurchasesResult.getInAppPurchaseDataList());
            this.d.addAll(ownedPurchasesResult.getInAppSignature());
            String continuationToken = ownedPurchasesResult.getContinuationToken();
            if (!TextUtils.isEmpty(continuationToken)) {
                b3.a("OwnedPurchaseLoader: loading more obtainOwnedPurchasesRecord by continuationToken");
                b(continuationToken);
                return;
            }
            if (this.c.isEmpty()) {
                b3.a("OwnedPurchaseLoader: failure load obtain owned purchases. Purchases is null. source is " + this.b + " priceType is " + this.a);
                d.this.b(this);
                return;
            }
            if (!this.d.isEmpty()) {
                this.e = ownedPurchasesResult.getSignatureAlgorithm();
                d.this.a(this);
                return;
            }
            b3.a("OwnedPurchaseLoader: failure load obtain owned purchases. Signatures is null. source is " + this.b + " priceType is " + this.a);
            d.this.b(this);
        }

        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(final OwnedPurchasesResult ownedPurchasesResult) {
            m.a(new Runnable() { // from class: com.my.tracker.obfuscated.i3
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(ownedPurchasesResult);
                }
            });
        }

        public void b(final String str) {
            m.f(new Runnable() { // from class: com.my.tracker.obfuscated.h3
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(String str) {
            Task taskObtainOwnedPurchaseRecord;
            b3.a("OwnedPurchaseLoader: start loadPurchases");
            OwnedPurchasesReq ownedPurchasesReq = new OwnedPurchasesReq();
            ownedPurchasesReq.setPriceType(this.a);
            ownedPurchasesReq.setContinuationToken(str);
            int i = this.b;
            if (i == 2) {
                taskObtainOwnedPurchaseRecord = d.this.a.obtainOwnedPurchases(ownedPurchasesReq);
            } else if (i == 3) {
                taskObtainOwnedPurchaseRecord = d.this.a.obtainOwnedPurchaseRecord(ownedPurchasesReq);
            } else {
                b3.a("OwnedPurchaseLoader: invalid source to load purchases");
                d.this.b(this);
                return;
            }
            taskObtainOwnedPurchaseRecord.addOnFailureListener(new hs9());
            taskObtainOwnedPurchaseRecord.addOnSuccessListener(this);
        }

        private /* synthetic */ void a(Exception exc) {
            b3.a("AppGalleryHelper: onLoadingPurchasesFailure ", exc);
            d.this.b(this);
        }
    }

    public void b(c cVar) {
        Set set = this.d;
        if (set == null) {
            b3.a("AppGalleryHelper: can't remove OwnedPurchaseLoader, purchaseLoaders list is null");
            return;
        }
        set.remove(cVar);
        if (set.isEmpty()) {
            this.d = null;
        }
    }

    public static a a(Context context) {
        try {
            return new a(Iap.getIapClient(context), context);
        } catch (Throwable th) {
            b3.b("AppGalleryHelper: creating AppGalleryHelperBuilder failed", th);
            return null;
        }
    }

    public static ArrayList a(List list, List list2, String str, int i) {
        ArrayList arrayList = new ArrayList();
        long jA = z2.a();
        int i2 = 0;
        while (i2 < list.size()) {
            String str2 = str;
            int i3 = i;
            f fVarA = f.a((String) list.get(i2), (String) list2.get(i2), str2, i3, jA);
            if (fVarA == null) {
                b3.a("AppGalleryHelper: failed to create AppGalleryRawPurchase");
            } else {
                arrayList.add(fVarA);
            }
            i2++;
            str = str2;
            i = i3;
        }
        return arrayList;
    }

    public void a(Intent intent) {
        b3.a("AppGalleryHelper: starting getAppGalleryPurchaseByIntent");
        m.f(new w89(1, this, intent));
    }

    public void a() {
        HashSet hashSet = new HashSet();
        hashSet.add(new c(0, 2));
        hashSet.add(new c(1, 2));
        hashSet.add(new c(2, 2));
        hashSet.add(new c(0, 3));
        hashSet.add(new c(2, 3));
        this.d = Collections.synchronizedSet(hashSet);
        b3.a("AppGalleryHelper: purchase loaders created");
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).b((String) null);
        }
    }

    public void a(List list) {
        b3.a("AppGalleryHelper: start loading all products");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            try {
                int i = fVar.e().getInt("kind");
                if (i == 0) {
                    arrayList.add(fVar);
                } else if (i == 1) {
                    arrayList2.add(fVar);
                } else if (i == 2) {
                    arrayList3.add(fVar);
                }
            } catch (Throwable th) {
                b3.b("AppGalleryHelper: can not getting price type ", th);
            }
        }
        if (arrayList.size() > 0) {
            a(arrayList, 0);
        }
        if (arrayList2.size() > 0) {
            a(arrayList2, 1);
        }
        if (arrayList3.size() > 0) {
            a(arrayList3, 2);
        }
    }

    public JSONObject a(List list, String str) {
        if (str == null) {
            b3.a("AppGalleryHelper: can't get product by id, id is null");
            return null;
        }
        if (list == null) {
            b3.a("AppGalleryHelper: can't get product by id, productInfoListJson is null");
            return null;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            JSONObject jSONObject = (JSONObject) it.next();
            try {
                if (jSONObject.getString("productId").equals(str)) {
                    return jSONObject;
                }
            } catch (Throwable th) {
                b3.a("AppGalleryHelper: error while reading product_id", th);
            }
        }
        return null;
    }

    public void a(List list, int i) {
        b3.a("AppGalleryHelper: start loading products by price");
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext() && hashSet.size() < 200) {
            f fVar = (f) it.next();
            hashSet.add(fVar.c());
            arrayList.add(fVar);
            it.remove();
        }
        b3.a("AppGalleryHelper: product id's have been detected");
        while (it.hasNext()) {
            f fVar2 = (f) it.next();
            if (hashSet.contains(fVar2.c())) {
                arrayList.add(fVar2);
                it.remove();
            }
        }
        b3.a("AppGalleryHelper: products deduplication done");
        if (list.size() > 0) {
            b3.a("AppGalleryHelper: there are still unloaded products, we are loading more");
            a(list, i);
        }
        ProductInfoReq productInfoReq = new ProductInfoReq();
        productInfoReq.setPriceType(i);
        productInfoReq.setProductIds(new ArrayList(hashSet));
        m.f(new ds9(this, productInfoReq, arrayList, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ProductInfoReq productInfoReq, final List list) {
        Task taskObtainProductInfo = this.a.obtainProductInfo(productInfoReq);
        taskObtainProductInfo.addOnFailureListener(new OnFailureListener() { // from class: fs9
        });
        taskObtainProductInfo.addOnSuccessListener(new OnSuccessListener() { // from class: gs9
        });
    }

    private /* synthetic */ void a(List list, Exception exc) {
        m.a(new yu(this, exc, list, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Exception exc, List list) {
        b3.a("AppGalleryHelper: error while loading products ", exc);
        this.c.c(list);
    }

    private /* synthetic */ void a(final List list, final ProductInfoResult productInfoResult) {
        m.a(new Runnable() { // from class: es9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(productInfoResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ProductInfoResult productInfoResult, List list) {
        List productInfoList = productInfoResult.getProductInfoList();
        if (productInfoList == null) {
            b3.a("AppGalleryHelper: productInfoList is null, finish products loading");
            this.c.c(list);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = productInfoList.iterator();
        while (it.hasNext()) {
            arrayList.add(a((ProductInfo) it.next()));
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            f fVar = (f) it2.next();
            fVar.a(a(arrayList, fVar.c()));
        }
        this.c.c(list);
    }

    public void a(c cVar) {
        this.c.a(a(cVar.c, cVar.d, cVar.e, cVar.b));
        b(cVar);
    }
}

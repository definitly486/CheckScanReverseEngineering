package com.google.firebase.inappmessaging.internal;

import com.google.firebase.inappmessaging.internal.injection.qualifiers.ImpressionStore;
import defpackage.a75;
import defpackage.d34;
import defpackage.f73;
import defpackage.g75;
import defpackage.h6;
import defpackage.i21;
import defpackage.j21;
import defpackage.j75;
import defpackage.k75;
import defpackage.ki0;
import defpackage.kv2;
import defpackage.m21;
import defpackage.mz7;
import defpackage.ni0;
import defpackage.nq5;
import defpackage.pr5;
import defpackage.qe2;
import defpackage.qp1;
import defpackage.qq1;
import defpackage.qx1;
import defpackage.r75;
import defpackage.rm3;
import defpackage.vq5;
import defpackage.w75;
import defpackage.yd0;
import defpackage.z75;
import java.util.HashSet;

/* JADX INFO: loaded from: classes4.dex */
public class ImpressionStorageClient {
    private static final j21 EMPTY_IMPRESSIONS = j21.d();
    private a75<j21> cachedImpressionsMaybe = g75.b;
    private final ProtoStorageClient storageClient;

    public ImpressionStorageClient(@ImpressionStore ProtoStorageClient protoStorageClient) {
        this.storageClient = protoStorageClient;
    }

    private static j21 appendImpression(j21 j21Var, i21 i21Var) {
        j21.b bVarF = j21.f(j21Var);
        bVarF.b(i21Var);
        return bVarF.build();
    }

    private void clearInMemCache() {
        this.cachedImpressionsMaybe = g75.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initInMemCache, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$storeImpression$0(j21 j21Var) {
        this.cachedImpressionsMaybe = a75.b(j21Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ qq1 lambda$clearImpressions$4(HashSet hashSet, j21 j21Var) {
        Logging.logd("Existing impressions: " + j21Var.toString());
        j21.b bVarE = j21.e();
        for (i21 i21Var : j21Var.c()) {
            if (!hashSet.contains(i21Var.getCampaignId())) {
                bVarE.b(i21Var);
            }
        }
        final j21 j21VarBuild = bVarE.build();
        Logging.logd("New cleared impression list: " + j21VarBuild.toString());
        return this.storageClient.write(j21VarBuild).e(new h6() { // from class: b34
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$clearImpressions$3(j21VarBuild);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAllImpressions$2(Throwable th) {
        clearInMemCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ qq1 lambda$storeImpression$1(i21 i21Var, j21 j21Var) {
        final j21 j21VarAppendImpression = appendImpression(j21Var, i21Var);
        return this.storageClient.write(j21VarAppendImpression).e(new h6() { // from class: e34
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$storeImpression$0(j21VarAppendImpression);
            }
        });
    }

    public qp1 clearImpressions(f73 f73Var) {
        HashSet hashSet = new HashSet();
        for (m21 m21Var : f73Var.d()) {
            hashSet.add(m21Var.e().equals(m21.c.VANILLA_PAYLOAD) ? m21Var.h().getCampaignId() : m21Var.c().getCampaignId());
        }
        Logging.logd("Potential impressions to clear: " + hashSet.toString());
        a75<j21> allImpressions = getAllImpressions();
        j21 j21Var = EMPTY_IMPRESSIONS;
        allImpressions.getClass();
        nq5.a(j21Var, "defaultItem is null");
        return new j75(new z75(allImpressions, a75.b(j21Var)), new d34(this, hashSet));
    }

    public a75<j21> getAllImpressions() {
        a75<j21> a75Var = this.cachedImpressionsMaybe;
        a75 a75Var2 = this.storageClient.read(j21.parser());
        qx1 qx1Var = new qx1() { // from class: c34
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                this.b.lambda$storeImpression$0((j21) obj);
            }
        };
        a75Var2.getClass();
        rm3.e eVar = rm3.d;
        w75 w75Var = new w75(a75Var2, qx1Var, eVar);
        a75Var.getClass();
        return new w75(new z75(a75Var, w75Var), eVar, new yd0(this, 1));
    }

    public mz7<Boolean> isImpressed(m21 m21Var) {
        String campaignId = m21Var.e().equals(m21.c.VANILLA_PAYLOAD) ? m21Var.h().getCampaignId() : m21Var.c().getCampaignId();
        a75<j21> allImpressions = getAllImpressions();
        kv2 kv2Var = new kv2(1);
        allImpressions.getClass();
        r75 r75Var = new r75(allImpressions, kv2Var);
        int i = 2;
        pr5 pr5Var = new pr5(new k75(r75Var, new ki0(i)), new ni0(i));
        nq5.a(campaignId, "element is null");
        return new vq5(pr5Var, new rm3.g(campaignId));
    }

    public qp1 storeImpression(i21 i21Var) {
        a75<j21> allImpressions = getAllImpressions();
        j21 j21Var = EMPTY_IMPRESSIONS;
        allImpressions.getClass();
        nq5.a(j21Var, "defaultItem is null");
        return new j75(new z75(allImpressions, a75.b(j21Var)), new qe2(1, this, i21Var));
    }
}

package com.google.firebase.inappmessaging.internal;

import com.google.firebase.inappmessaging.internal.RateLimitProto;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.RateLimit;
import com.google.firebase.inappmessaging.internal.time.Clock;
import defpackage.a75;
import defpackage.bf2;
import defpackage.er5;
import defpackage.g75;
import defpackage.h6;
import defpackage.h75;
import defpackage.hr5;
import defpackage.hv;
import defpackage.j75;
import defpackage.mz7;
import defpackage.nq5;
import defpackage.nx6;
import defpackage.or5;
import defpackage.p75;
import defpackage.pr5;
import defpackage.q31;
import defpackage.q75;
import defpackage.qp1;
import defpackage.qq1;
import defpackage.r75;
import defpackage.rm3;
import defpackage.vq;
import defpackage.w75;
import defpackage.we2;
import defpackage.yr5;
import defpackage.z75;
import defpackage.zd0;
import defpackage.ze6;

/* JADX INFO: loaded from: classes4.dex */
public class RateLimiterClient {
    private static final RateLimitProto.RateLimit EMPTY_RATE_LIMITS = RateLimitProto.RateLimit.getDefaultInstance();
    private a75<RateLimitProto.RateLimit> cachedRateLimts = g75.b;
    private final Clock clock;
    private final ProtoStorageClient storageClient;

    public RateLimiterClient(@RateLimit ProtoStorageClient protoStorageClient, Clock clock) {
        this.storageClient = protoStorageClient;
        this.clock = clock;
    }

    private void clearInMemCache() {
        this.cachedRateLimts = g75.b;
    }

    private a75<RateLimitProto.RateLimit> getRateLimits() {
        a75<RateLimitProto.RateLimit> a75Var = this.cachedRateLimts;
        a75 a75Var2 = this.storageClient.read(RateLimitProto.RateLimit.parser());
        int i = 2;
        zd0 zd0Var = new zd0(this, i);
        a75Var2.getClass();
        rm3.e eVar = rm3.d;
        w75 w75Var = new w75(a75Var2, zd0Var, eVar);
        a75Var.getClass();
        return new w75(new z75(a75Var, w75Var), eVar, new hv(this, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initInMemCache, reason: merged with bridge method [inline-methods] */
    public void lambda$increment$2(RateLimitProto.RateLimit rateLimit) {
        this.cachedRateLimts = a75.b(rateLimit);
    }

    private boolean isLimitExpired(RateLimitProto.Counter counter, com.google.firebase.inappmessaging.model.RateLimit rateLimit) {
        return this.clock.now() - counter.getStartTimeEpoch() > rateLimit.timeToLiveMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getRateLimits$7(Throwable th) {
        clearInMemCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$increment$0(com.google.firebase.inappmessaging.model.RateLimit rateLimit, RateLimitProto.Counter counter) {
        return !isLimitExpired(counter, rateLimit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ RateLimitProto.RateLimit lambda$increment$1(RateLimitProto.RateLimit rateLimit, com.google.firebase.inappmessaging.model.RateLimit rateLimit2, RateLimitProto.Counter counter) {
        return RateLimitProto.RateLimit.newBuilder(rateLimit).putLimits(rateLimit2.limiterKey(), increment(counter)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ qq1 lambda$increment$3(final RateLimitProto.RateLimit rateLimit) {
        return this.storageClient.write(rateLimit).e(new h6() { // from class: lx6
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$increment$2(rateLimit);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public qq1 lambda$increment$4(final com.google.firebase.inappmessaging.model.RateLimit rateLimit, RateLimitProto.RateLimit rateLimit2) {
        RateLimitProto.Counter limitsOrDefault = rateLimit2.getLimitsOrDefault(rateLimit.limiterKey(), newCounter());
        nq5.a(limitsOrDefault, "item is null");
        er5 er5Var = new er5(new or5(limitsOrDefault), new ze6() { // from class: mx6
            @Override // defpackage.ze6
            public final boolean test(Object obj) {
                return this.b.lambda$increment$0(rateLimit, (RateLimitProto.Counter) obj);
            }
        });
        RateLimitProto.Counter counterNewCounter = newCounter();
        nq5.a(counterNewCounter, "item is null");
        return new hr5(new pr5(new yr5(er5Var, new or5(counterNewCounter)), new q31(rateLimit2, rateLimit)), new vq(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ RateLimitProto.Counter lambda$isRateLimited$5(com.google.firebase.inappmessaging.model.RateLimit rateLimit, RateLimitProto.RateLimit rateLimit2) {
        return rateLimit2.getLimitsOrDefault(rateLimit.limiterKey(), newCounter());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$isRateLimited$6(com.google.firebase.inappmessaging.model.RateLimit rateLimit, RateLimitProto.Counter counter) {
        return isLimitExpired(counter, rateLimit) || counter.getValue() < rateLimit.limit();
    }

    private RateLimitProto.Counter newCounter() {
        return RateLimitProto.Counter.newBuilder().setValue(0L).setStartTimeEpoch(this.clock.now()).build();
    }

    public qp1 increment(com.google.firebase.inappmessaging.model.RateLimit rateLimit) {
        a75<RateLimitProto.RateLimit> rateLimits = getRateLimits();
        RateLimitProto.RateLimit rateLimit2 = EMPTY_RATE_LIMITS;
        rateLimits.getClass();
        nq5.a(rateLimit2, "defaultItem is null");
        return new j75(new z75(rateLimits, a75.b(rateLimit2)), new we2(this, rateLimit));
    }

    public mz7<Boolean> isRateLimited(com.google.firebase.inappmessaging.model.RateLimit rateLimit) {
        a75<RateLimitProto.RateLimit> rateLimits = getRateLimits();
        q75 q75VarB = a75.b(RateLimitProto.RateLimit.getDefaultInstance());
        rateLimits.getClass();
        return new p75(new h75(new r75(new z75(rateLimits, q75VarB), new nx6(this, rateLimit)), new bf2(this, rateLimit)));
    }

    private static RateLimitProto.Counter increment(RateLimitProto.Counter counter) {
        return RateLimitProto.Counter.newBuilder(counter).clearValue().setValue(counter.getValue() + 1).build();
    }
}

.class public final Lio/appmetrica/analytics/impl/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Qm;

.field public final b:Lio/appmetrica/analytics/impl/X;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/impl/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/h4;->a:Lio/appmetrica/analytics/impl/Qm;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/h4;->b:Lio/appmetrica/analytics/impl/X;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)Lio/appmetrica/analytics/impl/g4;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lio/appmetrica/analytics/impl/g4;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/h4;->a:Lio/appmetrica/analytics/impl/Qm;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Qm;->e()Lio/appmetrica/analytics/impl/vm;

    move-result-object v2

    iget-object v0, v0, Lio/appmetrica/analytics/impl/h4;->b:Lio/appmetrica/analytics/impl/X;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/X;->getIdentifiers()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;

    move-result-object v0

    iget-object v3, v2, Lio/appmetrica/analytics/impl/vm;->d:Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v3

    iget-object v4, v2, Lio/appmetrica/analytics/impl/vm;->a:Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v4

    iget-object v5, v2, Lio/appmetrica/analytics/impl/vm;->b:Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v5

    iget-object v6, v2, Lio/appmetrica/analytics/impl/vm;->j:Ljava/lang/String;

    invoke-static {v6}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v6

    iget-object v7, v2, Lio/appmetrica/analytics/impl/vm;->i:Ljava/lang/String;

    invoke-static {v7}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v7

    iget-object v8, v2, Lio/appmetrica/analytics/impl/vm;->k:Ljava/lang/String;

    invoke-static {v8}, Lio/appmetrica/analytics/impl/Vm;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v8}, Lio/appmetrica/analytics/impl/ub;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lio/appmetrica/analytics/impl/ub;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v9

    move-object v10, v4

    move-object v4, v6

    move-object v6, v8

    new-instance v8, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v11

    iget-object v11, v11, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    const/4 v12, 0x0

    if-nez v11, :cond_0

    move-object v11, v12

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v11

    iget-object v11, v11, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v11, v11, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v13

    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getGoogle()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v14

    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v8, v11, v13, v14}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v11, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v9

    new-instance v9, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v13

    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-nez v13, :cond_1

    move-object v13, v12

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v13

    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v13, v13, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v14

    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getHuawei()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v15

    iget-object v15, v15, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v9, v13, v14, v15}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    move-object v13, v10

    new-instance v10, Lio/appmetrica/analytics/internal/IdentifiersResult;

    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v14

    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v12

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    iget-object v12, v12, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    :goto_2
    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v14

    iget-object v14, v14, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mStatus:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    invoke-virtual {v11}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object v11

    iget-object v11, v11, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mErrorExplanation:Ljava/lang/String;

    invoke-direct {v10, v12, v14, v11}, Lio/appmetrica/analytics/internal/IdentifiersResult;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    iget-object v11, v2, Lio/appmetrica/analytics/impl/vm;->h:Ljava/util/Map;

    invoke-static {v11}, Lio/appmetrica/analytics/impl/ub;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/String;)Lio/appmetrica/analytics/internal/IdentifiersResult;

    move-result-object v11

    move-object v14, v13

    invoke-static {}, Lio/appmetrica/analytics/impl/Wn;->a()J

    move-result-wide v12

    move-object/from16 p1, v0

    move-object/from16 p0, v1

    iget-wide v0, v2, Lio/appmetrica/analytics/impl/vm;->o:J

    iget-object v15, v2, Lio/appmetrica/analytics/impl/vm;->z:Lio/appmetrica/analytics/impl/Sm;

    iget v15, v15, Lio/appmetrica/analytics/impl/Sm;->a:I

    move-wide/from16 v16, v0

    int-to-long v0, v15

    add-long v0, v16, v0

    iget-object v2, v2, Lio/appmetrica/analytics/impl/vm;->n:Lio/appmetrica/analytics/impl/z4;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/z4;->f:Ljava/lang/Boolean;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/g4;->a(Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/ia;

    move-result-object v16

    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object v2, v14

    move-wide v14, v0

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {v0 .. v17}, Lio/appmetrica/analytics/impl/g4;-><init>(Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;Lio/appmetrica/analytics/internal/IdentifiersResult;JJLio/appmetrica/analytics/impl/ia;Landroid/os/Bundle;)V

    return-object v0
.end method

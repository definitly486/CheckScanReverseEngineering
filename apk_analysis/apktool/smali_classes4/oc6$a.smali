.class public final Loc6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Loc6$a;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Loc6$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loc6$a;->a:Loc6$a;

    const-string v22, "errorTracking"

    const-string v23, "capturePerformance"

    const-string v1, "groups"

    const-string v2, "anonymousId"

    const-string v3, "distinctId"

    const-string v4, "isIdentified"

    const-string v5, "personProcessingEnabled"

    const-string v6, "opt-out"

    const-string v7, "featureFlags"

    const-string v8, "featureFlagsPayload"

    const-string v9, "sessionReplay"

    const-string v10, "surveys"

    const-string v11, "surveySeen"

    const-string v12, "lastSeenSurveyDate"

    const-string v13, "version"

    const-string v14, "build"

    const-string v15, "deviceId"

    const-string v16, "stringifiedKeys"

    const-string v17, "feature_flag_request_id"

    const-string v18, "feature_flag_evaluated_at"

    const-string v19, "flags"

    const-string v20, "personPropertiesForFlags"

    const-string v21, "groupPropertiesForFlags"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Loc6$a;->b:Ljava/util/Set;

    return-void
.end method

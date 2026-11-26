.class public final Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
.super Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

.field private static final a:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    new-instance v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const-string v1, ""

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->a:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "["

    const/16 v1, 0x5d

    invoke-static {v1, v0, p1}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppMetrica"

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getANONYMOUS_INSTANCE$cp()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->a:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-object v0
.end method

.method public static final getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    invoke-virtual {v0}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    return-object v0
.end method

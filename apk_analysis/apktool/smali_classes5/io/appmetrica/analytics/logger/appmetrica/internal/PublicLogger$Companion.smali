.class public final Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
    .locals 0

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->access$getANONYMOUS_INSTANCE$cp()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p0

    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->init(Landroid/content/Context;)V

    return-void
.end method

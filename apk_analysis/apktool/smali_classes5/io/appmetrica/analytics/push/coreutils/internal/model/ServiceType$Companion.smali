.class public final Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;
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

    invoke-direct {p0}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;
    .locals 4

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->values()[Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;->UNKNOWN:Lio/appmetrica/analytics/push/coreutils/internal/model/ServiceType;

    return-object p0
.end method

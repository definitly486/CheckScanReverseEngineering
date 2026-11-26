.class public abstract Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBytesTruncated()I
.end method

.method public abstract getData()[B
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getType()I
.end method

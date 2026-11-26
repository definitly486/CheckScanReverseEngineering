.class public final Lio/appmetrica/analytics/impl/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/s3;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/s3;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s3;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/t3;-><init>(Lio/appmetrica/analytics/impl/s3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/s3;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/t3;->a:Lio/appmetrica/analytics/impl/s3;

    return-void
.end method

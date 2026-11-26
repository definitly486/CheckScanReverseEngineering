.class public final Lio/appmetrica/analytics/impl/Um;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Tm;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Tm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Tm;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Um;-><init>(Lio/appmetrica/analytics/impl/Tm;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Tm;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Um;->a:Lio/appmetrica/analytics/impl/Tm;

    return-void
.end method

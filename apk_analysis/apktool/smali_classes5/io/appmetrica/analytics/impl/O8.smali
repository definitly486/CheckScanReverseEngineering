.class public final Lio/appmetrica/analytics/impl/O8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Sc;

.field public final b:Lio/appmetrica/analytics/impl/Kl;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Kl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Sc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Sc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/O8;->a:Lio/appmetrica/analytics/impl/Sc;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O8;->b:Lio/appmetrica/analytics/impl/Kl;

    return-void
.end method

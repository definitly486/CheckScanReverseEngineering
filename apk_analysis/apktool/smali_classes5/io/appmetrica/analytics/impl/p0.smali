.class public final Lio/appmetrica/analytics/impl/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/if;

.field public final b:Lio/appmetrica/analytics/impl/z0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/if;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/p0;->a:Lio/appmetrica/analytics/impl/if;

    new-instance p1, Lio/appmetrica/analytics/impl/z0;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/z0;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/p0;->b:Lio/appmetrica/analytics/impl/z0;

    return-void
.end method

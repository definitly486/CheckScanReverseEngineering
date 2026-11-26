.class public final Lio/appmetrica/analytics/impl/T8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Qc;

.field public final b:Lio/appmetrica/analytics/impl/Qc;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    new-instance v0, Lio/appmetrica/analytics/impl/i8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/i8;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Y9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Y9;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/b;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/b;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/T8;-><init>(Lio/appmetrica/analytics/impl/i8;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/b;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i8;Lio/appmetrica/analytics/impl/Y9;Lio/appmetrica/analytics/impl/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Qc;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Qc;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/T8;->a:Lio/appmetrica/analytics/impl/Qc;

    sget-object v1, Lio/appmetrica/analytics/impl/U8;->b:Lio/appmetrica/analytics/impl/U8;

    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lio/appmetrica/analytics/impl/U8;->c:Lio/appmetrica/analytics/impl/U8;

    invoke-virtual {v0, v1, p2}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lio/appmetrica/analytics/impl/U8;->d:Lio/appmetrica/analytics/impl/U8;

    invoke-virtual {v0, p2, p3}, Lio/appmetrica/analytics/impl/Qc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lio/appmetrica/analytics/impl/Qc;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/Qc;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/T8;->b:Lio/appmetrica/analytics/impl/Qc;

    return-void
.end method

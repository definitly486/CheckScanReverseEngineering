.class public final Lio/appmetrica/analytics/impl/Z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/D9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/v5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/H9;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/b5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Y4;

    invoke-direct {v0, p2, p3}, Lio/appmetrica/analytics/impl/Y4;-><init>(Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;)V

    new-instance p2, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Y4;->a()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Y4;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, p3, v0, p4}, Lio/appmetrica/analytics/impl/v5;-><init>(Lio/appmetrica/analytics/impl/H9;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/impl/b5;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Z4;->a:Lio/appmetrica/analytics/impl/v5;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/C9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z4;->a:Lio/appmetrica/analytics/impl/v5;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/v5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z4;->a:Lio/appmetrica/analytics/impl/v5;

    return-object p0
.end method

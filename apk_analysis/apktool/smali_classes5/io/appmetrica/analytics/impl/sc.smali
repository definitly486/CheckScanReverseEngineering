.class public final Lio/appmetrica/analytics/impl/sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/D9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/v5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/H9;Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/jf;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/rc;

    move-object v3, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/rc;-><init>(Lio/appmetrica/analytics/impl/Y6;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/D9;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/jf;)V

    new-instance p0, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/rc;->a()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/rc;->b()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p5}, Lio/appmetrica/analytics/impl/v5;-><init>(Lio/appmetrica/analytics/impl/H9;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/impl/b5;)V

    iput-object p0, v3, Lio/appmetrica/analytics/impl/sc;->a:Lio/appmetrica/analytics/impl/v5;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/C9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sc;->a:Lio/appmetrica/analytics/impl/v5;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/v5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/sc;->a:Lio/appmetrica/analytics/impl/v5;

    return-object p0
.end method

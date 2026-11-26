.class public final Lio/appmetrica/analytics/impl/D;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/s;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/s;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/D;->a:Lio/appmetrica/analytics/impl/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    iget-object p0, p0, Lio/appmetrica/analytics/impl/D;->a:Lio/appmetrica/analytics/impl/s;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/s;->j:[B

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

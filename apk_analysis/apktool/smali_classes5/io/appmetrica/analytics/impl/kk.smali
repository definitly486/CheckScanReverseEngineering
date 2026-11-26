.class public final Lio/appmetrica/analytics/impl/kk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/qg;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/lk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/lk;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/yg;)V
    .locals 3

    const-string v0, ""

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/yg;->a()Lio/appmetrica/analytics/impl/og;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/lk;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/lk;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/impl/a6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/og;->a()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/a6;->setValueBytes([B)V

    sget-object p1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 p1, 0x1001

    iput p1, v1, Lio/appmetrica/analytics/impl/a6;->d:I

    iget-object p1, p0, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/lk;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/i5;->a(Lio/appmetrica/analytics/impl/a6;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kk;->a:Lio/appmetrica/analytics/impl/lk;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/lk;->b(Lio/appmetrica/analytics/impl/lk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

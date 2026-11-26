.class public final Lio/appmetrica/analytics/push/provider/firebase/impl/e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/provider/firebase/impl/n;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/provider/firebase/impl/n;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/e;->a:Lio/appmetrica/analytics/push/provider/firebase/impl/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/e;->a:Lio/appmetrica/analytics/push/provider/firebase/impl/n;

    new-instance v0, Lio/appmetrica/analytics/push/provider/firebase/impl/m;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lio/appmetrica/analytics/push/provider/firebase/impl/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

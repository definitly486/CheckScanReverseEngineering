.class public final Lio/appmetrica/analytics/push/provider/firebase/impl/a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/provider/firebase/impl/b;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/provider/firebase/impl/b;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/a;->a:Lio/appmetrica/analytics/push/provider/firebase/impl/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/a;->a:Lio/appmetrica/analytics/push/provider/firebase/impl/b;

    iget-object v0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/b;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

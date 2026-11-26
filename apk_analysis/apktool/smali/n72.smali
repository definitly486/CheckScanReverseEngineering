.class public final Ln72;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La64;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lru6;


# direct methods
.method public constructor <init>(Lru6;)V
    .locals 0

    iput-object p1, p0, Ln72;->f:Lru6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, La64;

    if-eqz p1, :cond_0

    iget-object p0, p0, Ln72;->f:Lru6;

    iget-object p0, p0, Lru6;->d:Low9;

    iget-object p1, p1, La64;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    const-string v1, "sdkVersion"

    const-string v2, "10.0.0"

    invoke-virtual {v0, v1, v2}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Low9;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "referrer_id"

    invoke-virtual {v0, v1, p1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Low9;->b(Luz4;)V

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p1

    const-string v0, "SDKInstallReferrerRefidResponse"

    invoke-virtual {p0, v0, p1}, Low9;->c(Ljava/lang/String;Luz4;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

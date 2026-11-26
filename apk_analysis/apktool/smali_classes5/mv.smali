.class public final Lmv;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lwc9;",
        "Lc18<",
        "+",
        "Lkv$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lkv;


# direct methods
.method public constructor <init>(Lkv;)V
    .locals 0

    iput-object p1, p0, Lmv;->f:Lkv;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lwc9;

    iget-object p0, p0, Lmv;->f:Lkv;

    iget-object v0, p0, Lkv;->c:Ljf6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lwc9;->Unsupported:Lwc9;

    if-ne p1, v1, :cond_0

    sget-object p0, Lkv$a;->UnsupportedApi:Lkv$a;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Ljf6;->Y()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lix8;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lkv$a;->LoggedIn:Lkv$a;

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object p1, p0, Lkv;->b:Luw;

    invoke-interface {p1}, Luw;->a()Lmz7;

    move-result-object p1

    new-instance v0, Lxv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxv;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Luq;

    invoke-direct {p0, v0}, Luq;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Le08;

    invoke-direct {v0, p1, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance p0, Lxq;

    const/4 p1, 0x1

    sget-object v1, Llv;->f:Llv;

    invoke-direct {p0, v1, p1}, Lxq;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lp08;

    invoke-direct {p1, v0, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

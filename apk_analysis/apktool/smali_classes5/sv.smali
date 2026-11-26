.class public final Lsv;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Lxu4;",
        "+",
        "Lwu4$a;",
        ">;",
        "Lc18<",
        "+",
        "Lb36<",
        "+",
        "Lxu4;",
        "+",
        "Lwu4$a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lkv;


# direct methods
.method public constructor <init>(Lkv;)V
    .locals 0

    iput-object p1, p0, Lsv;->f:Lkv;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lsv;->f:Lkv;

    iget-object p0, p0, Lkv;->d:Lc4;

    iget-object v0, p0, Lc4;->b:Lj5;

    invoke-interface {v0}, Lj5;->f()Lp08;

    move-result-object v0

    new-instance v1, Le4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le4;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lk3;

    invoke-direct {p0, v1, v2}, Lk3;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Le08;

    invoke-direct {v1, v0, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance p0, Lrv;

    invoke-direct {p0, p1}, Lrv;-><init>(Lb36;)V

    new-instance v0, Lar;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lar;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Le08;

    invoke-direct {p0, v1, v0}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lbr;

    invoke-direct {v0, p1}, Lbr;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lu08;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p1
.end method

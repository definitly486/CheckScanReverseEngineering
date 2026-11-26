.class public final Luv;
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

    iput-object p1, p0, Luv;->f:Lkv;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luv;->f:Lkv;

    iget-object p0, p0, Lkv;->d:Lc4;

    invoke-virtual {p0}, Lc4;->a()Lyz7;

    move-result-object p0

    new-instance v0, Ltv;

    invoke-direct {v0, p1}, Ltv;-><init>(Lb36;)V

    new-instance v1, Lj7;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lj7;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Le08;

    invoke-direct {v0, p0, v1}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance p0, Lid;

    invoke-direct {p0, p1}, Lid;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lu08;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lu08;-><init>(Lmz7;Lxl3;Ljava/lang/Object;)V

    return-object p1
.end method

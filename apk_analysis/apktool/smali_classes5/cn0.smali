.class public final Lcn0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lsx5;",
        ">;",
        "Lc18<",
        "+",
        "Lk57<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lbm0;


# direct methods
.method public constructor <init>(Lbm0;)V
    .locals 0

    iput-object p1, p0, Lcn0;->f:Lbm0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lbn0;

    iget-object p0, p0, Lcn0;->f:Lbm0;

    invoke-direct {v0, p0, p1}, Lbn0;-><init>(Lbm0;Ljava/util/List;)V

    new-instance p0, Ll08;

    invoke-direct {p0, v0}, Ll08;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

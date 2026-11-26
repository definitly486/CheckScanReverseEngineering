.class public final Lhp0;
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
        "Liq6;",
        ">;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Llp0;


# direct methods
.method public constructor <init>(Llp0;)V
    .locals 0

    iput-object p1, p0, Lhp0;->f:Llp0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgp0;

    const/4 v1, 0x0

    iget-object p0, p0, Lhp0;->f:Llp0;

    invoke-direct {v0, v1, p0, p1}, Lgp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ldq1;

    invoke-direct {p0, v0}, Ldq1;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

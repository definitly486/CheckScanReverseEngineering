.class public final Lyl0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lrx5;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lbm0;

.field public final synthetic g:I

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lbm0;IZ)V
    .locals 0

    iput-object p1, p0, Lyl0;->f:Lbm0;

    iput p2, p0, Lyl0;->g:I

    iput-boolean p3, p0, Lyl0;->h:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lrx5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lxl0;

    iget-object v1, p0, Lyl0;->f:Lbm0;

    iget v2, p0, Lyl0;->g:I

    iget-boolean p0, p0, Lyl0;->h:Z

    invoke-direct {v0, v1, v2, p1, p0}, Lxl0;-><init>(Lbm0;ILrx5;Z)V

    new-instance p0, Ldq1;

    invoke-direct {p0, v0}, Ldq1;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

.class public final Lpn0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ln32;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lbm0;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lbm0;I)V
    .locals 0

    iput-object p1, p0, Lpn0;->f:Lbm0;

    iput p2, p0, Lpn0;->g:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ln32;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lon0;

    iget-object v1, p0, Lpn0;->f:Lbm0;

    iget p0, p0, Lpn0;->g:I

    invoke-direct {v0, v1, p0, p1}, Lon0;-><init>(Lbm0;ILn32;)V

    new-instance p0, Ldq1;

    invoke-direct {p0, v0}, Ldq1;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

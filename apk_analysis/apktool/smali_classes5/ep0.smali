.class public final Lep0;
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
        "Lc18<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Llp0;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Llp0;I)V
    .locals 0

    iput-object p1, p0, Lep0;->f:Llp0;

    iput p2, p0, Lep0;->g:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lrx5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldp0;

    iget-object v1, p0, Lep0;->f:Llp0;

    iget p0, p0, Lep0;->g:I

    invoke-direct {v0, v1, p0, p1}, Ldp0;-><init>(Llp0;ILrx5;)V

    new-instance p0, Ll08;

    invoke-direct {p0, v0}, Ll08;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0
.end method

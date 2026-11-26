.class public final Lc61;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Lb57;",
        ">;",
        "Lc18<",
        "+",
        "Ll89;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ld61;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Ld61;J)V
    .locals 0

    iput-object p1, p0, Lc61;->f:Ld61;

    iput-wide p2, p0, Lc61;->g:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, La57;->a:Lz47;

    iget p1, p1, Lz47;->e:I

    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lc61;->f:Ld61;

    iget-object v0, p1, Ld61;->b:Lzt6;

    iget-wide v1, p0, Lc61;->g:J

    invoke-interface {v0, v1, v2}, Lzt6;->b(J)Lqp1;

    move-result-object p0

    new-instance v0, Lb61;

    invoke-direct {v0, p1}, Lb61;-><init>(Ld61;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lvq1;

    invoke-direct {p1, p0, v0}, Lvq1;-><init>(Lqp1;Ljava/util/concurrent/Callable;)V

    return-object p1

    :cond_0
    new-instance p0, Llg;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Llg;-><init>(I)V

    new-instance p1, Loz7;

    invoke-direct {p1, p0}, Loz7;-><init>(Lw08;)V

    return-object p1
.end method

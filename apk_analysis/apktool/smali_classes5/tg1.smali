.class public final Ltg1;
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
        "Lhv6;",
        "+",
        "Liv6;",
        ">;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lyg1;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyg1;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltg1;->f:Lyg1;

    iput p2, p0, Ltg1;->g:I

    iput-object p3, p0, Ltg1;->h:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lb36;->b:Ljava/lang/Object;

    check-cast p1, Lhv6;

    iget v0, p0, Ltg1;->g:I

    int-to-long v0, v0

    new-instance v2, Lsg1;

    iget-object v3, p0, Ltg1;->h:Ljava/lang/String;

    iget-object p0, p0, Ltg1;->f:Lyg1;

    invoke-direct {v2, p0, p1, v3}, Lsg1;-><init>(Lyg1;Lhv6;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lyg1;->e(JLhv6;Lnl3;)Lrp1;

    move-result-object p0

    return-object p0
.end method

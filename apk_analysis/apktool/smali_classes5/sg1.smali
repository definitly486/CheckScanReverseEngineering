.class public final Lsg1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lqp1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lyg1;

.field public final synthetic g:Lhv6;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyg1;Lhv6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsg1;->f:Lyg1;

    iput-object p2, p0, Lsg1;->g:Lhv6;

    iput-object p3, p0, Lsg1;->h:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lsg1;->f:Lyg1;

    iget-object v0, v0, Lyg1;->a:Lzg1;

    iget-object v1, p0, Lsg1;->g:Lhv6;

    invoke-virtual {v1}, Lhv6;->b()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lsg1;->h:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lzg1;->b(Ljava/lang/String;Ljava/lang/String;)Lqp1;

    move-result-object p0

    new-instance v0, Lbq1;

    invoke-direct {v0, p1}, Lbq1;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p0

    return-object p0
.end method

.class public final Lvg1;
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

.field public final synthetic g:J

.field public final synthetic h:Lhv6;


# direct methods
.method public constructor <init>(Lyg1;JLhv6;)V
    .locals 0

    iput-object p1, p0, Lvg1;->f:Lyg1;

    iput-wide p2, p0, Lvg1;->g:J

    iput-object p4, p0, Lvg1;->h:Lhv6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lvg1;->g:J

    iget-object p1, p0, Lvg1;->h:Lhv6;

    iget-object p0, p0, Lvg1;->f:Lyg1;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lyg1;->f(JLhv6;La57;)Lqp1;

    move-result-object p0

    return-object p0
.end method

.class public final Lqp;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lkv$a;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/a;

.field public final synthetic g:Lup;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/a;Lup;)V
    .locals 0

    iput-object p1, p0, Lqp;->f:Lcom/warefly/checkscan/presentation/a;

    iput-object p2, p0, Lqp;->g:Lup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkv$a;

    iget-object v0, p0, Lqp;->f:Lcom/warefly/checkscan/presentation/a;

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lqp$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    iget-object p0, p0, Lqp;->g:Lup;

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lup;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lup;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object p0, Lif7;->a:Lif7;

    invoke-virtual {v0, p0}, Lo87;->g(Ldf7;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lup;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object p0, Lmi7;->a:Lmi7;

    invoke-virtual {v0, p0}, Lo87;->g(Ldf7;)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

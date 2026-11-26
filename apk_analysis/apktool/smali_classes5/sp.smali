.class public final Lsp;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsp$a;
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


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/a;)V
    .locals 0

    iput-object p1, p0, Lsp;->f:Lcom/warefly/checkscan/presentation/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkv$a;

    iget-object p0, p0, Lsp;->f:Lcom/warefly/checkscan/presentation/a;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/a;->k:Lhi0;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/a;->c:Lqe;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lhi0;->onNext(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lsp$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    sget-object v3, Lqg7;->a:Lqg7;

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    sget-object v1, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    if-eq p1, v0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    invoke-virtual {v2, v1}, Lo87;->g(Ldf7;)V

    goto :goto_1

    :cond_1
    sget-object p0, Lif7;->a:Lif7;

    invoke-virtual {v2, p0}, Lo87;->g(Ldf7;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljf6;->v()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljf6;->I0()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2, v1}, Lo87;->g(Ldf7;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v3}, Lo87;->g(Ldf7;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p0, v4, v5}, Ljf6;->i(J)V

    invoke-interface {p0}, Ljf6;->h()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lqe;->c(J)V

    invoke-interface {p0}, Ljf6;->O0()I

    move-result p0

    invoke-interface {v1, p0}, Lqe;->d(I)V

    invoke-virtual {v2, v3}, Lo87;->g(Ldf7;)V

    goto :goto_1

    :cond_5
    sget-object p0, Lmi7;->a:Lmi7;

    invoke-virtual {v2, p0}, Lo87;->g(Ldf7;)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

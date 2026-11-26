.class public final Lnv;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
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
.field public final synthetic f:Lkv;


# direct methods
.method public constructor <init>(Lkv;)V
    .locals 0

    iput-object p1, p0, Lnv;->f:Lkv;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkv$a;

    iget-object p0, p0, Lnv;->f:Lkv;

    iget-object p1, p0, Lkv;->e:Lb68;

    invoke-virtual {p1}, Lb68;->b()Lnq1;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-virtual {p1}, Lqp1;->g()Lcp2;

    move-result-object p1

    iget-object v0, p0, Lkv;->f:Lfu1;

    invoke-virtual {v0, p1}, Lfu1;->b(Lcp2;)Z

    invoke-virtual {p0}, Lkv;->e()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

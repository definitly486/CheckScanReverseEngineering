.class public final Lfp0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lcp2;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Llp0;


# direct methods
.method public constructor <init>(Llp0;)V
    .locals 0

    iput-object p1, p0, Lfp0;->f:Llp0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcp2;

    iget-object p0, p0, Lfp0;->f:Llp0;

    iget-object p1, p0, Llp0;->e:Lhi0;

    new-instance v0, Lx68$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx68$c;-><init>(I)V

    invoke-virtual {p1, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object p1, p0, Llp0;->f:Lhi0;

    new-instance v0, Lx68$c;

    invoke-direct {v0, v1}, Lx68$c;-><init>(I)V

    invoke-virtual {p1, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Llp0;->g:Lhi0;

    new-instance p1, Lx68$c;

    invoke-direct {p1, v1}, Lx68$c;-><init>(I)V

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

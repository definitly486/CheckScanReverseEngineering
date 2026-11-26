.class public final Lhn0;
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
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lbm0;


# direct methods
.method public constructor <init>(Lbm0;)V
    .locals 0

    iput-object p1, p0, Lhn0;->f:Lbm0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lhn0;->f:Lbm0;

    iget-object p0, p0, Lbm0;->m:Lhi0;

    new-instance p1, Lx68$b;

    sget-object v0, Lkx2;->b:Lkx2;

    invoke-direct {p1, v0}, Lx68$b;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Lel8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lfr1;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lkl8;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkl8<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lel8;->f:Ljava/lang/Throwable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lfr1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldl8;

    iget-object p0, p0, Lel8;->f:Ljava/lang/Throwable;

    invoke-direct {v0, p1, p0}, Ldl8;-><init>(Lfr1;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkl8;->b(Lll3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

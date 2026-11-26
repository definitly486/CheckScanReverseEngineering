.class public final Lgl8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ltr4<",
        "Ljava/lang/Object;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkl8;La64;)V
    .locals 0

    iput-object p2, p0, Lgl8;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ltr4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Ltr4;->a:Lkk2;

    if-eqz p1, :cond_0

    new-instance v0, Lfl8;

    iget-object p0, p0, Lgl8;->f:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lfl8;-><init>(Lkk2;Ljava/lang/Object;)V

    invoke-static {v0}, Lkl8;->b(Lll3;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

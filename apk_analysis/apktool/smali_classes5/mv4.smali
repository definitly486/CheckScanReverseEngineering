.class public final Lmv4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lxu4;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lqv4;


# direct methods
.method public constructor <init>(Lqv4;)V
    .locals 0

    iput-object p1, p0, Lmv4;->f:Lqv4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lxu4;

    iget-object p0, p0, Lmv4;->f:Lqv4;

    iget-object p0, p0, Lqv4;->b:Lg6;

    sget-object p1, Lg6$a$b;->a:Lg6$a$b;

    iget-object p0, p0, Lg6;->a:Lzs7;

    invoke-virtual {p0, p1}, Lzs7;->e(Ljava/lang/Object;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Ls4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lz79;",
        "Lz79$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lc4;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls4;->f:Lc4;

    iput-object p2, p0, Ls4;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lz79;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ls4;->f:Lc4;

    iget-object v0, v0, Lc4;->a:Ljf6;

    iget-object p1, p1, Lz79;->a:Lz79$a;

    sget-object v1, Lz79$a;->Success:Lz79$a;

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Ls4;->g:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Ljf6;->l0(I)V

    :cond_0
    invoke-interface {v0}, Ljf6;->a0()V

    return-object p1
.end method

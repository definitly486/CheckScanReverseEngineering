.class public final Lf69;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ls59;

.field public final synthetic g:Ls59$c$c;


# direct methods
.method public constructor <init>(Ls59;Ls59$c$c;)V
    .locals 0

    iput-object p1, p0, Lf69;->f:Ls59;

    iput-object p2, p0, Lf69;->g:Ls59$c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lf69;->g:Ls59$c$c;

    iput-boolean v0, v1, Ls59$c$c;->h:Z

    iget-object p0, p0, Lf69;->f:Ls59;

    iget-object v0, p0, Ls59;->f:Ls59$c;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Ls59$c$c;->f:Ls68;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object v0, p0, Ls59;->a:Lsk8;

    invoke-virtual {v0}, Lsk8;->a()V

    iget-object v0, p0, Ls59;->e:Lkz1;

    new-instance v3, Lw59;

    invoke-direct {v3, v2, v1, p0}, Lw59;-><init>(Le02;Ls59$c$c;Ls59;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v3, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    iput-object p0, v1, Ls59$c$c;->e:Ls68;

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

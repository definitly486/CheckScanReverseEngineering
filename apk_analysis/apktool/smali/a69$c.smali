.class public final La69$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La69;->a(Lnu5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

.field public final synthetic g:Lnu5;


# direct methods
.method public constructor <init>(Lnu5;Ls59;)V
    .locals 0

    iput-object p2, p0, La69$c;->f:Ls59;

    iput-object p1, p0, La69$c;->g:Lnu5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, La69$c;->f:Ls59;

    iget-object v1, v0, Ls59;->i:Ljava/util/ArrayList;

    iget-object p0, p0, La69$c;->g:Lnu5;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Ls59;->a:Lsk8;

    invoke-virtual {p0}, Lsk8;->a()V

    goto :goto_2

    :cond_0
    iget-object v1, v0, Ls59;->f:Ls59$c;

    instance-of v2, v1, Ls59$c$c;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Ls59$c$c;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_5

    iget-object v2, v1, Ls59$c$c;->a:Lnu5;

    if-ne v2, p0, :cond_2

    iget-boolean p0, v1, Ls59$c$c;->c:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    iput-boolean p0, v1, Ls59$c$c;->c:Z

    iget-object p0, v1, Ls59$c$c;->d:Ls68;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    iget-object p0, v0, Ls59;->d:Ll69;

    sget-object v2, Li69;->SHOWN:Li69;

    invoke-interface {p0, v2}, Ll69;->a(Li69;)V

    iget-object p0, v1, Ls59$c$c;->b:Lyp1;

    sget-object v2, Lm69$c;->a:Lm69$c;

    invoke-virtual {p0, v2}, Lsb4;->T(Ljava/lang/Object;)Z

    iget-object p0, v0, Ls59;->e:Lkz1;

    new-instance v2, Lz59;

    invoke-direct {v2, v3, v1, v0}, Lz59;-><init>(Le02;Ls59$c$c;Ls59;)V

    const/4 v0, 0x3

    invoke-static {p0, v3, v3, v2, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    iput-object p0, v1, Ls59$c$c;->f:Ls68;

    :cond_5
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

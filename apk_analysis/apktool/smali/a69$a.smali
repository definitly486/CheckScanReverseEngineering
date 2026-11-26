.class public final La69$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La69;->c(Lnu5;)V
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

    iput-object p2, p0, La69$a;->f:Ls59;

    iput-object p1, p0, La69$a;->g:Lnu5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, La69$a;->f:Ls59;

    iget-object v1, v0, Ls59;->i:Ljava/util/ArrayList;

    iget-object p0, p0, La69$a;->g:Lnu5;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

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
    if-eqz v1, :cond_7

    iget-object v2, v1, Ls59$c$c;->a:Lnu5;

    if-ne v2, p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean p0, v1, Ls59$c$c;->c:Z

    if-eqz p0, :cond_4

    invoke-virtual {v0, v1}, Ls59;->d(Ls59$c$c;)V

    goto :goto_2

    :cond_4
    iget-object p0, v1, Ls59$c$c;->d:Ls68;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iget-object p0, v0, Ls59;->f:Ls59$c;

    if-eq p0, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Ls59$c$a;->a:Ls59$c$a;

    iput-object p0, v0, Ls59;->f:Ls59$c;

    iget-object p0, v1, Ls59$c$c;->b:Lyp1;

    new-instance v0, Lm69$b;

    sget-object v1, Lj69;->NOT_SHOWN:Lj69;

    invoke-direct {v0, v1}, Lm69$b;-><init>(Lj69;)V

    invoke-virtual {p0, v0}, Lsb4;->T(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

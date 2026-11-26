.class public final Le69;
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

    iput-object p1, p0, Le69;->f:Ls59;

    iput-object p2, p0, Le69;->g:Ls59$c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Le69;->g:Ls59$c$c;

    iput-boolean v0, v1, Ls59$c$c;->h:Z

    iget-object p0, p0, Le69;->f:Ls59;

    iget-object v0, p0, Ls59;->f:Ls59$c;

    if-ne v0, v1, :cond_0

    iget-boolean v0, v1, Ls59$c$c;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v1, Ls59$c$c;->h:Z

    iget-object v0, p0, Ls59;->c:Lcy8;

    new-instance v2, Le69;

    invoke-direct {v2, p0, v1}, Le69;-><init>(Ls59;Ls59$c$c;)V

    new-instance v3, Lf69;

    invoke-direct {v3, p0, v1}, Lf69;-><init>(Ls59;Ls59$c$c;)V

    new-instance p0, Lcy8$a;

    invoke-direct {p0, v2, v3}, Lcy8$a;-><init>(Le69;Lf69;)V

    iput-object p0, v0, Lcy8;->b:Lcy8$a;

    iget-object p0, v0, Lcy8;->a:Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcy8;->a(Landroid/app/Activity;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

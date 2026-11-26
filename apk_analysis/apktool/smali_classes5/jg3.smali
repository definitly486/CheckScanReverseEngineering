.class public final Ljg3;
.super Lk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljg3$e;,
        Ljg3$f;,
        Ljg3$c;,
        Ljg3$g;,
        Ljg3$d;,
        Ljg3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lk0<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:Lup0;

.field public final e:I

.field public final f:Ls03;


# direct methods
.method public constructor <init>(Leh3;Lup0;Ls03;)V
    .locals 0

    invoke-direct {p0, p1}, Lk0;-><init>(Lgg3;)V

    iput-object p2, p0, Ljg3;->d:Lup0;

    const/4 p1, 0x2

    iput p1, p0, Ljg3;->e:I

    iput-object p3, p0, Ljg3;->f:Ls03;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk0;->c:Lgg3;

    iget-object v1, p0, Ljg3;->d:Lup0;

    invoke-static {v0, p1, v1}, Lnh3;->a(Ldt6;Lwb8;Lxl3;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Ljg3$a;->a:[I

    iget-object v3, p0, Ljg3;->f:Ls03;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    iget p0, p0, Ljg3;->e:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    new-instance v2, Ljg3$d;

    invoke-direct {v2, p1, v1, p0}, Ljg3$d;-><init>(Lwb8;Lup0;I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljg3$c;

    invoke-direct {v2, p1, v1, p0, v3}, Ljg3$c;-><init>(Lwb8;Lup0;IZ)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljg3$c;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, p0, v3}, Ljg3$c;-><init>(Lwb8;Lup0;IZ)V

    :goto_0
    invoke-virtual {v0, v2}, Lgg3;->a(Lwb8;)V

    return-void
.end method

.class public final Ltf3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltf3$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lpz3;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly22;

.field public final c:Ltf3$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf3$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhd3<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Lz68;

.field public f:Z


# direct methods
.method public constructor <init>(Lnl3;Ly22;Ltf3$d;Lhd3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Ly22;",
            "Ltf3$d<",
            "TT;>;",
            "Lhd3<",
            "+",
            "Ljava/util/List<",
            "+TT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltf3;->a:Lnl3;

    iput-object p2, p0, Ltf3;->b:Ly22;

    iput-object p3, p0, Ltf3;->c:Ltf3$d;

    iput-object p4, p0, Ltf3;->d:Lhd3;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Ltf3;->e:Lz68;

    const/4 p3, 0x1

    iput-boolean p3, p0, Ltf3;->f:Z

    new-instance p3, Ltf3$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Ltf3$a;-><init>(Ltf3;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p4, p3}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p3, Ltf3$b;

    invoke-direct {p3, p0, v0}, Ltf3$b;-><init>(Ltf3;Le02;)V

    new-instance p4, Lde3;

    invoke-direct {p4, v1, p3}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-static {p4, p2}, Lpx;->h(Lhd3;Ly22;)Ls68;

    new-instance p3, Ltf3$f;

    invoke-direct {p3, p1}, Ltf3$f;-><init>(Lz68;)V

    new-instance p1, Ltf3$c;

    invoke-direct {p1, p0, v0}, Ltf3$c;-><init>(Ltf3;Le02;)V

    new-instance p0, Ldf3;

    invoke-direct {p0, p3, p1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {p0, p2}, Lpx;->h(Lhd3;Ly22;)Ls68;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Ltf3;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ltf3$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltf3$e;-><init>(Ltf3;Le02;)V

    const/4 v2, 0x3

    iget-object p0, p0, Ltf3;->b:Ly22;

    invoke-static {p0, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltf3;->f:Z

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ltf3;->e:Lz68;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ltf3;->a()V

    return-void
.end method

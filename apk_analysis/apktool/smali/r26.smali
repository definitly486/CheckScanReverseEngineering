.class public final Lr26;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr26$a;
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
.field public final a:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Ljava/lang/Integer;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly22;

.field public final c:Lr26$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr26$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lz68;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lbm3;Ly22;Lr26$a;Lff3;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr26;->a:Lbm3;

    iput-object p2, p0, Lr26;->b:Ly22;

    iput-object p3, p0, Lr26;->c:Lr26$a;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lr26;->d:Lz68;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lr26;->e:Z

    new-instance p3, Ln26;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Ln26;-><init>(Lr26;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p4, p3}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p3, Lo26;

    invoke-direct {p3, p0, v0}, Lo26;-><init>(Lr26;Le02;)V

    new-instance p4, Lde3;

    invoke-direct {p4, v1, p3}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-static {p4, p2}, Lpx;->h(Lhd3;Ly22;)Ls68;

    new-instance p3, Lt26;

    invoke-direct {p3, p1}, Lt26;-><init>(Lz68;)V

    new-instance p1, Lp26;

    invoke-direct {p1, p0, v0}, Lp26;-><init>(Lr26;Le02;)V

    new-instance p4, Ldf3;

    invoke-direct {p4, p3, p1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p1, Lq26;

    invoke-direct {p1, p0, v0}, Lq26;-><init>(Lr26;Le02;)V

    new-instance p0, Lde3;

    invoke-direct {p0, p4, p1}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-static {p0, p2}, Lpx;->h(Lhd3;Ly22;)Ls68;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lr26;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr26;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lr26$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr26$b;-><init>(Lr26;Le02;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lr26;->b:Ly22;

    invoke-static {p0, v1, v1, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method

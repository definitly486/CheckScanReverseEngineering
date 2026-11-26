.class public final Llp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt42;

.field public final b:Lrp0;

.field public final c:Laa;

.field public final d:I

.field public final e:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lx68<",
            "Lpz3;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lx68<",
            "Ler6;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Lx68<",
            "Len1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/ArrayList;

.field public final i:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "Ljava/util/List<",
            "Lcs0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt42;Lrp0;Laa;Ljf6;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llp0;->a:Lt42;

    iput-object p2, p0, Llp0;->b:Lrp0;

    iput-object p3, p0, Llp0;->c:Laa;

    invoke-interface {p4}, Ljf6;->O0()I

    move-result p1

    iput p1, p0, Llp0;->d:I

    new-instance p1, Lx68$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lx68$c;-><init>(I)V

    invoke-static {p1}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p1

    iput-object p1, p0, Llp0;->e:Lhi0;

    new-instance p3, Lx68$c;

    invoke-direct {p3, p2}, Lx68$c;-><init>(I)V

    invoke-static {p3}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p3

    iput-object p3, p0, Llp0;->f:Lhi0;

    new-instance p4, Lx68$c;

    invoke-direct {p4, p2}, Lx68$c;-><init>(I)V

    invoke-static {p4}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p4

    iput-object p4, p0, Llp0;->g:Lhi0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llp0;->h:Ljava/util/ArrayList;

    new-instance v0, Luo0;

    sget-object v1, Llp0$a;->f:Llp0$a;

    invoke-direct {v0, v1}, Luo0;-><init>(Lcm3;)V

    new-instance v1, Lrm3$b;

    invoke-direct {v1, v0}, Lrm3$b;-><init>(Lem3;)V

    sget v0, Lgg3;->b:I

    const/4 v2, 0x3

    new-array v2, v2, [Lwr5;

    aput-object p1, v2, p2

    const/4 p1, 0x1

    aput-object p3, v2, p1

    const/4 p1, 0x2

    aput-object p4, v2, p1

    invoke-static {v2, v1, v0}, Ltq5;->c([Lwr5;Lxl3;I)Ltq5;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llp0;->i:Ltq5;

    return-void
.end method

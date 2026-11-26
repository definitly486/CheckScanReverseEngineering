.class public final Ld82;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld82$a;
    }
.end annotation


# instance fields
.field public final a:Lap8;

.field public final b:Ljf6;

.field public final c:Lo22;

.field public final d:Lkz1;

.field public final e:Li57$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li57$c<",
            "Ll82;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lz68;

.field public final g:Lz68;


# direct methods
.method public constructor <init>(Lap8;Ljf6;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld82;->a:Lap8;

    iput-object p2, p0, Ld82;->b:Ljf6;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p1

    sget-object p2, Lqo2;->a:Loi2;

    sget-object p2, Lsh2;->c:Lsh2;

    invoke-static {p1, p2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p1

    new-instance p2, Ld82$c;

    invoke-direct {p2, p0}, Ld82$c;-><init>(Ld82;)V

    invoke-interface {p1, p2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    iput-object p1, p0, Ld82;->c:Lo22;

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    iput-object p1, p0, Ld82;->d:Lkz1;

    new-instance p1, Ll82$a;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2}, Ljava/lang/String;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ll82$a;-><init>(Ljava/lang/String;Z)V

    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object v2, La82;->a:La82;

    goto :goto_1

    :cond_0
    sget-object v2, Lj82;->a:Lj82;

    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ll82;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, p2}, Ll82;-><init>(Ljava/lang/String;Ll82$a;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskNoAttempts;Ljava/util/ArrayList;)V

    new-instance p1, Li57$c;

    invoke-direct {p1, v0}, Li57$c;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ld82;->e:Li57$c;

    iget-object p2, p0, Ld82;->b:Ljf6;

    invoke-interface {p2}, Ljf6;->l1()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p2

    iput-object p2, p0, Ld82;->f:Lz68;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Ld82;->g:Lz68;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Ld82;->g:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li57;

    iget-object v2, p0, Ld82;->e:Li57$c;

    invoke-virtual {v0, v1, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ld82$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ld82$b;-><init>(Ld82;ILe02;)V

    const/4 p1, 0x3

    iget-object p0, p0, Ld82;->d:Lkz1;

    invoke-static {p0, v1, v1, v0, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

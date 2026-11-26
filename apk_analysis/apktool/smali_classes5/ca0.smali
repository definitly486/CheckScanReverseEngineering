.class public final Lca0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpb0;

.field public final b:Lj5;

.field public final c:Ls47;

.field public final d:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpb0;Lj5;Ls47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca0;->a:Lpb0;

    iput-object p2, p0, Lca0;->b:Lj5;

    iput-object p3, p0, Lca0;->c:Ls47;

    new-instance p1, Lct6;

    invoke-direct {p1}, Lct6;-><init>()V

    iput-object p1, p0, Lca0;->d:Lct6;

    return-void
.end method


# virtual methods
.method public final a()Lp08;
    .locals 3

    iget-object v0, p0, Lca0;->a:Lpb0;

    invoke-interface {v0}, Lpb0;->a()Lmz7;

    move-result-object v0

    new-instance v1, Lhe1;

    invoke-direct {v1, p0}, Lhe1;-><init>(Lca0;)V

    new-instance p0, Lq9;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lq9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;Lcw1;)Le08;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lr76;

    sget-object v1, Lqc9;->ACCOUNT:Lqc9;

    invoke-direct {v0, p2, v1, p1}, Lr76;-><init>(Lcw1;Lqc9;Ljava/lang/String;)V

    iget-object p0, p0, Lca0;->a:Lpb0;

    invoke-interface {p0, v0}, Lpb0;->h(Lr76;)Lmz7;

    move-result-object p0

    new-instance p1, Lw90;

    sget-object p2, Lz90;->f:Lz90;

    invoke-direct {p1, p2}, Lw90;-><init>(Lnl3;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Le08;

    invoke-direct {p2, p0, p1}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lca0;->a:Lpb0;

    invoke-interface {p0}, Lpb0;->f()Lhi0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

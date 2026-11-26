.class public final Lkt4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0;
.implements Lic2$a;
.implements Ly1;
.implements Lic2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0<",
        "Ljava/lang/Object;",
        "Lkt4$a;",
        ">;",
        "Lic2$a;",
        "Ly1;",
        "Lic2$b;"
    }
.end annotation


# instance fields
.field public final a:Lnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt4$a;->a:Lnq;

    return-void
.end method


# virtual methods
.method public final a(Lhc2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc2<",
            "Lct4;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Ldt4;

    if-eqz v0, :cond_0

    check-cast p1, Ldt4;

    iget-object p1, p1, Ldt4;->a:Lyx0;

    invoke-virtual {p0, p1}, Lkt4$a;->v(Lti3;)V

    :cond_0
    return-void
.end method

.method public final b([Lnl3;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnl3<",
            "-",
            "Lkt4$a;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Lkt4$a;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le0$a;->a(Le0;[Lnl3;Lnl3;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-static {p0}, Ly1$a;->a(Ly1;)V

    return-void
.end method

.method public final d(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Lid5;

    invoke-direct {v1, p1}, Lid5;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lkt4$a;->v(Lti3;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Le0$a;->d(Le0;Ljava/lang/String;)V

    return-void
.end method

.method public final h(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Lfx3;

    invoke-direct {v1, p1}, Lfx3;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lkt4$a;->k(Lti3;)V

    return-void
.end method

.method public final i(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Ltk7;

    invoke-direct {v1, p1}, Ltk7;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lkt4$a;->k(Lti3;)V

    return-void
.end method

.method public final j(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Lam9;

    invoke-direct {v1, p1}, Lam9;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lkt4$a;->v(Lti3;)V

    return-void
.end method

.method public final k(Lti3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti3<",
            "-",
            "Lhu8;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkt4$a;->w(Lti3;)V

    return-void
.end method

.method public final l(Lvt4;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lvt4;->a:Lyx0;

    invoke-virtual {p0, p1}, Lkt4$a;->k(Lti3;)V

    return-void
.end method

.method public final m(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Lgb5;

    invoke-direct {v1, p1}, Lgb5;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lkt4$a;->k(Lti3;)V

    return-void
.end method

.method public final o()Lnq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lkt4$a;->a:Lnq;

    return-object p0
.end method

.method public final p(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Lsc2;

    invoke-direct {v1, p1}, Lsc2;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lkt4$a;->v(Lti3;)V

    return-void
.end method

.method public final s()Le0;
    .locals 1

    new-instance p0, Lkt4$a;

    new-instance v0, Lnq;

    invoke-direct {v0}, Lnq;-><init>()V

    invoke-direct {p0, v0}, Lkt4$a;-><init>(Lnq;)V

    return-object p0
.end method

.method public final u(Ljava/lang/String;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Lkt4$a;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le0$a;->b(Le0;Ljava/lang/String;Lnl3;)V

    return-void
.end method

.method public final v(Lti3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti3<",
            "-",
            "Lk92;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lkt4$a;->w(Lti3;)V

    return-void
.end method

.method public final w(Lti3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti3<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lkt4$a;->a:Lnq;

    invoke-virtual {p0, p1}, Lnq;->a(Lti3;)V

    return-void
.end method

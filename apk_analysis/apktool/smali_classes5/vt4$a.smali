.class public final Lvt4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0;
.implements Ly1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0<",
        "Lhu8;",
        "Lvt4$a;",
        ">;",
        "Ly1;"
    }
.end annotation


# instance fields
.field public final a:Lnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnq<",
            "Lhu8;",
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
            "Lhu8;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvt4$a;->a:Lnq;

    return-void
.end method


# virtual methods
.method public final b([Lnl3;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnl3<",
            "-",
            "Lvt4$a;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Lvt4$a;",
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

    invoke-virtual {p0, v0}, Lvt4$a;->k(Lti3;)V

    return-void
.end method

.method public final i(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Ltk7;

    invoke-direct {v1, p1}, Ltk7;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lvt4$a;->k(Lti3;)V

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

    iget-object p0, p0, Lvt4$a;->a:Lnq;

    invoke-virtual {p0, p1}, Lnq;->a(Lti3;)V

    return-void
.end method

.method public final m(Lh16;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lte0;

    new-instance v1, Lgb5;

    invoke-direct {v1, p1}, Lgb5;-><init>(Lh16;)V

    invoke-direct {v0, v1}, Lte0;-><init>(Lx83;)V

    invoke-virtual {p0, v0}, Lvt4$a;->k(Lti3;)V

    return-void
.end method

.method public final o()Lnq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnq<",
            "Lhu8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lvt4$a;->a:Lnq;

    return-object p0
.end method

.method public final s()Le0;
    .locals 1

    new-instance p0, Lvt4$a;

    new-instance v0, Lnq;

    invoke-direct {v0}, Lnq;-><init>()V

    invoke-direct {p0, v0}, Lvt4$a;-><init>(Lnq;)V

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
            "Lvt4$a;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le0$a;->b(Le0;Ljava/lang/String;Lnl3;)V

    return-void
.end method

.class public final Lyads/rg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ek4;


# instance fields
.field public final synthetic a:Lyads/sg5;


# direct methods
.method public constructor <init>(Lyads/sg5;)V
    .locals 0

    iput-object p1, p0, Lyads/rg5;->a:Lyads/sg5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/m4;)V
    .locals 1

    iget-object p0, p0, Lyads/rg5;->a:Lyads/sg5;

    iget-boolean v0, p0, Lyads/sg5;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/sg5;->k:Lyads/pg4;

    iget-object p0, p0, Lyads/sg5;->a:Lyads/s03;

    invoke-virtual {p0, p1}, Lyads/pp;->b(Lyads/m4;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/pg4;)V
    .locals 1

    .line 15
    iget-object p0, p0, Lyads/rg5;->a:Lyads/sg5;

    .line 16
    iget-boolean v0, p0, Lyads/sg5;->l:Z

    if-nez v0, :cond_0

    .line 17
    iput-object p1, p0, Lyads/sg5;->k:Lyads/pg4;

    .line 18
    iget-object p0, p0, Lyads/sg5;->a:Lyads/s03;

    .line 19
    invoke-virtual {p0}, Lyads/pp;->h()V

    :cond_0
    return-void
.end method

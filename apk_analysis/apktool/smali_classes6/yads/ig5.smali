.class public final Lyads/ig5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ek4;


# instance fields
.field public final synthetic a:Lyads/lg5;


# direct methods
.method public constructor <init>(Lyads/lg5;)V
    .locals 0

    iput-object p1, p0, Lyads/ig5;->a:Lyads/lg5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/m4;)V
    .locals 1

    .line 21
    iget-object p0, p0, Lyads/ig5;->a:Lyads/lg5;

    .line 22
    iget-boolean v0, p0, Lyads/lg5;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lyads/lg5;->p:Lyads/d9;

    .line 24
    iput-object v0, p0, Lyads/lg5;->q:Lyads/pg4;

    .line 25
    iget-object p0, p0, Lyads/lg5;->a:Lyads/yn;

    .line 26
    invoke-virtual {p0, p1}, Lyads/yn;->b(Lyads/m4;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/pg4;)V
    .locals 2

    iget-object p0, p0, Lyads/ig5;->a:Lyads/lg5;

    iget-boolean v0, p0, Lyads/lg5;->r:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lyads/lg5;->q:Lyads/pg4;

    iget-object p1, p0, Lyads/lg5;->h:Ly22;

    new-instance v0, Lyads/hg5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyads/hg5;-><init>(Lyads/lg5;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method

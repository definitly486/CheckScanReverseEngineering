.class public final Lay3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li02;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li02<",
        "Lb57;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lfh8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lay3$a;->f:Lay3$a;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lay3;->a:Lfh8;

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lb57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lb57;->v()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lby3;

    invoke-direct {p1}, Lby3;-><init>()V

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lw36;

    invoke-direct {p0, p1}, Lw36;-><init>(Lby3;)V

    new-instance v1, Lorg/jsoup/nodes/f;

    invoke-direct {v1}, Lorg/jsoup/nodes/f;-><init>()V

    iput-object v1, p1, Lh39;->d:Lorg/jsoup/nodes/f;

    iput-object p0, v1, Lorg/jsoup/nodes/f;->l:Lw36;

    iput-object p0, p1, Lh39;->a:Lw36;

    iget-object v1, p0, Lw36;->c:Lq36;

    iput-object v1, p1, Lh39;->h:Lq36;

    new-instance v1, Lea1;

    invoke-direct {v1, v0}, Lea1;-><init>(Ljava/io/StringReader;)V

    iput-object v1, p1, Lh39;->b:Lea1;

    const/4 v0, 0x0

    iput-object v0, v1, Lea1;->k:Ljava/util/ArrayList;

    new-instance v1, Ljx8;

    invoke-direct {v1, p1}, Ljx8;-><init>(Lby3;)V

    iput-object v1, p1, Lh39;->c:Ljx8;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p1, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lw36;->e()Lbk8;

    move-result-object p0

    iput-object p0, p1, Lh39;->i:Lbk8;

    new-instance p0, Lgx8$g;

    invoke-direct {p0, p1}, Lgx8$g;-><init>(Lby3;)V

    iput-object p0, p1, Lh39;->j:Lgx8$g;

    iput-object p0, p1, Lh39;->g:Lgx8;

    const-string p0, ""

    iput-object p0, p1, Lh39;->f:Ljava/lang/String;

    sget-object p0, Lcy3;->Initial:Lcy3;

    iput-object p0, p1, Lby3;->l:Lcy3;

    iput-object v0, p1, Lby3;->m:Lcy3;

    const/4 p0, 0x0

    iput-boolean p0, p1, Lby3;->n:Z

    iput-object v0, p1, Lby3;->o:Lorg/jsoup/nodes/h;

    iput-object v0, p1, Lby3;->p:Lorg/jsoup/nodes/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lby3;->q:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lby3;->r:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lby3;->s:Ljava/util/ArrayList;

    new-instance v1, Lgx8$f;

    invoke-direct {v1, p1}, Lgx8$f;-><init>(Lh39;)V

    iput-object v1, p1, Lby3;->t:Lgx8$f;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lby3;->u:Z

    iput-boolean p0, p1, Lby3;->v:Z

    :goto_0
    iget-object v1, p1, Lh39;->g:Lgx8;

    iget-object v1, v1, Lgx8;->a:Lgx8$i;

    sget-object v2, Lgx8$i;->EOF:Lgx8$i;

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lh39;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iget-object p0, p1, Lh39;->b:Lea1;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lea1;->close()V

    iput-object v0, p1, Lh39;->b:Lea1;

    iput-object v0, p1, Lh39;->c:Ljx8;

    iput-object v0, p1, Lh39;->e:Ljava/util/ArrayList;

    :goto_1
    iget-object p0, p1, Lh39;->d:Lorg/jsoup/nodes/f;

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->J()Lorg/jsoup/nodes/h;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p1, Lh39;->e:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lh39;->d()Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lh39;->c:Ljx8;

    iget-object v2, v1, Ljx8;->k:Lgx8$b;

    :goto_2
    iget-boolean v3, v1, Ljx8;->e:Z

    if-nez v3, :cond_4

    iget-object v3, v1, Ljx8;->c:Lkx8;

    iget-object v4, v1, Ljx8;->a:Lea1;

    invoke-virtual {v3, v1, v4}, Lkx8;->f(Ljx8;Lea1;)V

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lgx8$b;->d:Lm54;

    invoke-virtual {v3}, Lm54;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean p0, v1, Ljx8;->e:Z

    iget-object v2, v1, Ljx8;->d:Lgx8;

    :goto_3
    iput-object v2, p1, Lh39;->g:Lgx8;

    invoke-virtual {p1, v2}, Lby3;->e(Lgx8;)Z

    invoke-virtual {v2}, Lgx8;->f()V

    goto :goto_0
.end method

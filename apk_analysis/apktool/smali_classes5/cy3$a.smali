.class public final enum Lcy3$a;
.super Lcy3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTableText"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 7

    iget-object v0, p1, Lgx8;->a:Lgx8$i;

    sget-object v1, Lgx8$i;->Character:Lgx8$i;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lgx8$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lgx8$b;

    invoke-direct {p0, p1}, Lgx8$b;-><init>(Lgx8$b;)V

    iget-object p1, p2, Lby3;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_0
    iget-object v0, p2, Lby3;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p2, Lh39;->g:Lgx8;

    iget-object v1, p2, Lby3;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgx8$b;

    iput-object v3, p2, Lh39;->g:Lgx8;

    invoke-static {v3}, Lcy3;->d(Lgx8;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v4

    iget-object v4, v4, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v4, v4, Ljj8;->d:Ljava/lang/String;

    sget-object v6, Lcy3$z;->z:[Ljava/lang/String;

    invoke-static {v4, v6}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v2, p2, Lby3;->v:Z

    sget-object v4, Lcy3;->InBody:Lcy3;

    invoke-virtual {v4, v3, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    iput-boolean v5, p2, Lby3;->v:Z

    goto :goto_0

    :cond_1
    sget-object v4, Lcy3;->InBody:Lcy3;

    invoke-virtual {v4, v3, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3, v5}, Lby3;->z(Lgx8$b;Z)V

    goto :goto_0

    :cond_3
    iput-object v0, p2, Lh39;->g:Lgx8;

    iget-object p0, p2, Lby3;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object p0, p2, Lby3;->m:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0
.end method

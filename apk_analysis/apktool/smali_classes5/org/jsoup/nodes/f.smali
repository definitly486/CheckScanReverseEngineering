.class public final Lorg/jsoup/nodes/f;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/f$a;,
        Lorg/jsoup/nodes/f$b;
    }
.end annotation


# instance fields
.field public k:Lorg/jsoup/nodes/f$a;

.field public l:Lw36;

.field public m:Lorg/jsoup/nodes/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly03$n0;

    const-string v1, "title"

    invoke-direct {v0, v1}, Ly03$n0;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    new-instance v0, Lw36;

    new-instance v1, Lby3;

    invoke-direct {v1}, Lby3;-><init>()V

    invoke-direct {v0, v1}, Lw36;-><init>(Lby3;)V

    .line 30
    const-string v1, "http://www.w3.org/1999/xhtml"

    const-string v2, ""

    invoke-direct {p0, v1, v2, v0}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lw36;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lw36;)V
    .locals 3

    new-instance v0, Ljj8;

    const-string v1, "#root"

    invoke-static {v1}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljj8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1}, Lorg/jsoup/nodes/h;-><init>(Ljj8;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    new-instance p1, Lorg/jsoup/nodes/f$a;

    invoke-direct {p1}, Lorg/jsoup/nodes/f$a;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    sget-object p1, Lorg/jsoup/nodes/f$b;->noQuirks:Lorg/jsoup/nodes/f$b;

    iput-object p1, p0, Lorg/jsoup/nodes/f;->m:Lorg/jsoup/nodes/f$b;

    iput-object p3, p0, Lorg/jsoup/nodes/f;->l:Lw36;

    return-void
.end method


# virtual methods
.method public final bridge synthetic G()Lorg/jsoup/nodes/h;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->K()Lorg/jsoup/nodes/f;

    move-result-object p0

    return-object p0
.end method

.method public final J()Lorg/jsoup/nodes/h;
    .locals 3

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->I()Lorg/jsoup/nodes/h;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const-string v2, "html"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/h;->F(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->I()Lorg/jsoup/nodes/h;

    move-result-object p0

    :goto_2
    const-string v2, "body"

    if-eqz p0, :cond_6

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "frameset"

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object p0

    if-eqz p0, :cond_4

    instance-of v2, p0, Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_3

    check-cast p0, Lorg/jsoup/nodes/h;

    goto :goto_2

    :cond_4
    move-object p0, v1

    goto :goto_2

    :cond_5
    :goto_3
    return-object p0

    :cond_6
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/h;->F(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object p0

    return-object p0
.end method

.method public final K()Lorg/jsoup/nodes/f;
    .locals 2

    invoke-super {p0}, Lorg/jsoup/nodes/h;->G()Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    iget-object v1, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/b;->h()Lorg/jsoup/nodes/b;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/b;

    :cond_0
    iget-object p0, p0, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    invoke-virtual {p0}, Lorg/jsoup/nodes/f$a;->e()Lorg/jsoup/nodes/f$a;

    move-result-object p0

    iput-object p0, v0, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->K()Lorg/jsoup/nodes/f;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic k()Lorg/jsoup/nodes/n;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/nodes/f;->K()Lorg/jsoup/nodes/f;

    move-result-object p0

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    const-string p0, "#document"

    return-object p0
.end method

.method public final x()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lja8;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->q()Lorg/jsoup/nodes/n;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lnw6;->d(Ljava/lang/StringBuilder;)Lnw6;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jsoup/nodes/n;->z()Lorg/jsoup/nodes/f;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/jsoup/nodes/f;

    invoke-direct {v3}, Lorg/jsoup/nodes/f;-><init>()V

    iget-object v3, v3, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v3, Lorg/jsoup/nodes/f$a;->d:Z

    if-eqz v4, :cond_2

    new-instance v4, Lorg/jsoup/nodes/p$a;

    invoke-direct {v4, v1, v2, v3}, Lorg/jsoup/nodes/p;-><init>(Lorg/jsoup/nodes/n;Lnw6;Lorg/jsoup/nodes/f$a;)V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lorg/jsoup/nodes/p$a;->d:Z

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    instance-of v3, v2, Lorg/jsoup/nodes/h;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/jsoup/nodes/h;

    iget-object v3, v3, Lorg/jsoup/nodes/h;->e:Ljj8;

    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Ljj8;->f(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v4, Lorg/jsoup/nodes/p$a;->d:Z

    goto :goto_2

    :cond_1
    iget-object v2, v2, Lorg/jsoup/nodes/n;->b:Lorg/jsoup/nodes/h;

    goto :goto_1

    :cond_2
    new-instance v4, Lorg/jsoup/nodes/p;

    invoke-direct {v4, v1, v2, v3}, Lorg/jsoup/nodes/p;-><init>(Lorg/jsoup/nodes/n;Lnw6;Lorg/jsoup/nodes/f$a;)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-static {v4, v1}, Lco5;->a(Lorg/jsoup/nodes/p;Lorg/jsoup/nodes/n;)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/n;->u()Lorg/jsoup/nodes/n;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lja8;->k(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->z()Lorg/jsoup/nodes/f;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    goto :goto_3

    :cond_5
    new-instance p0, Lorg/jsoup/nodes/f;

    invoke-direct {p0}, Lorg/jsoup/nodes/f;-><init>()V

    iget-object p0, p0, Lorg/jsoup/nodes/f;->k:Lorg/jsoup/nodes/f$a;

    :goto_3
    iget-boolean p0, p0, Lorg/jsoup/nodes/f$a;->d:Z

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

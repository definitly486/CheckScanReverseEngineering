.class public final enum Lcy3$k;
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

    const-string v0, "Initial"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 8

    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lgx8;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    return v0

    :cond_1
    invoke-virtual {p1}, Lgx8;->b()Z

    move-result p0

    if-eqz p0, :cond_b

    check-cast p1, Lgx8$d;

    new-instance p0, Lorg/jsoup/nodes/g;

    iget-object v1, p2, Lh39;->h:Lq36;

    iget-object v2, p1, Lgx8$d;->d:Lm54;

    invoke-virtual {v2}, Lm54;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, v1, Lq36;->a:Z

    if-nez v1, :cond_2

    invoke-static {v2}, Lmo5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v1, p1, Lgx8$d;->f:Lm54;

    invoke-virtual {v1}, Lm54;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lgx8$d;->g:Lm54;

    invoke-virtual {v3}, Lm54;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lorg/jsoup/nodes/m;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lyb9;->e(Ljava/lang/Object;)V

    invoke-static {v3}, Lyb9;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Lorg/jsoup/nodes/b;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "publicId"

    invoke-virtual {v4, v2, v1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "systemId"

    invoke-virtual {v4, v1, v3}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "pubSysKey"

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Lorg/jsoup/nodes/b;

    move-result-object v1

    const-string v3, "PUBLIC"

    invoke-virtual {v1, v4, v3}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/g;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Lorg/jsoup/nodes/b;

    move-result-object v1

    const-string v3, "SYSTEM"

    invoke-virtual {v1, v4, v3}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_4
    :goto_0
    iget-object v1, p1, Lgx8$d;->e:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->F()V

    invoke-virtual {p0}, Lorg/jsoup/nodes/n;->z()Lorg/jsoup/nodes/f;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v3, Lorg/jsoup/nodes/f;->l:Lw36;

    iget-object v3, v3, Lw36;->c:Lq36;

    goto :goto_1

    :cond_5
    sget-object v3, Lq36;->c:Lq36;

    :goto_1
    iget-boolean v3, v3, Lq36;->b:Z

    if-nez v3, :cond_6

    invoke-static {v4}, Lmo5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {p0}, Lorg/jsoup/nodes/m;->h()Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget-object v7, v3, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    aput-object v1, v7, v6

    iget-object v1, v3, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v3, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aput-object v4, v1, v6

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v4, v1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_8
    :goto_2
    iget-object v1, p2, Lh39;->d:Lorg/jsoup/nodes/f;

    invoke-virtual {v1, p0}, Lorg/jsoup/nodes/h;->E(Lorg/jsoup/nodes/n;)V

    iget-boolean p1, p1, Lgx8$d;->i:Z

    if-nez p1, :cond_9

    invoke-virtual {p0, v5}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "HTML"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    iget-object p0, p2, Lh39;->d:Lorg/jsoup/nodes/f;

    sget-object p1, Lorg/jsoup/nodes/f$b;->quirks:Lorg/jsoup/nodes/f$b;

    iput-object p1, p0, Lorg/jsoup/nodes/f;->m:Lorg/jsoup/nodes/f$b;

    :cond_a
    sget-object p0, Lcy3;->BeforeHtml:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v0

    :cond_b
    iget-object p0, p2, Lh39;->d:Lorg/jsoup/nodes/f;

    sget-object v0, Lorg/jsoup/nodes/f$b;->quirks:Lorg/jsoup/nodes/f$b;

    iput-object v0, p0, Lorg/jsoup/nodes/f;->m:Lorg/jsoup/nodes/f$b;

    sget-object p0, Lcy3;->BeforeHtml:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0
.end method

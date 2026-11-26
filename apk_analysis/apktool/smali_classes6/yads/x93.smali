.class public final Lyads/x93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n4;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/e4;

.field public final c:Lyads/bf5;

.field public final d:Lyads/qp;

.field public final e:Lyads/rq4;

.field public final f:Lyads/y45;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V
    .locals 2

    new-instance v0, Lyads/qp;

    invoke-direct {v0, p3}, Lyads/qp;-><init>(Lyads/t5;)V

    new-instance p3, Lyads/rq4;

    invoke-direct {p3}, Lyads/rq4;-><init>()V

    sget-object v1, Lyads/y45;->b:Lyads/x45;

    invoke-virtual {v1}, Lyads/x45;->a()Lyads/y45;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/x93;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/x93;->b:Lyads/e4;

    iput-object p4, p0, Lyads/x93;->c:Lyads/bf5;

    iput-object v0, p0, Lyads/x93;->d:Lyads/qp;

    iput-object p3, p0, Lyads/x93;->e:Lyads/rq4;

    iput-object v1, p0, Lyads/x93;->f:Lyads/y45;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lyads/ds;)Lyads/cp;
    .locals 8

    new-instance v0, Lyads/k4;

    iget-object v1, p0, Lyads/x93;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/x93;->b:Lyads/e4;

    iget-object v3, p0, Lyads/x93;->c:Lyads/bf5;

    check-cast v3, Lyads/do6;

    iget-object v3, v3, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v3, v3}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v3

    iget-object v6, p0, Lyads/x93;->d:Lyads/qp;

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lyads/k4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/q84;Ljava/lang/String;Ljava/lang/String;Lyads/qp;Lyads/ds;)V

    iget-object p1, p0, Lyads/x93;->b:Lyads/e4;

    iget-object p1, p1, Lyads/e4;->e:Lyads/n8;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lyads/n8;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iget-object p3, p0, Lyads/x93;->e:Lyads/rq4;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/rq4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lyads/x93;->b:Lyads/e4;

    iget-object p3, p3, Lyads/e4;->e:Lyads/n8;

    if-eqz p3, :cond_1

    iget-object p2, p3, Lyads/n8;->i:Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/x93;->f:Lyads/y45;

    invoke-virtual {p0, v0, p1}, Lyads/y45;->a(Lyads/cp;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

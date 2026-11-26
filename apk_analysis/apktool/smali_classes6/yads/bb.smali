.class public final Lyads/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vf6;


# instance fields
.field public final a:Lyads/dh4;

.field public final b:Lyads/g00;

.field public final c:Lyads/ot3;


# direct methods
.method public constructor <init>(Lyads/dh4;Lyads/g00;Lyads/ot3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bb;->a:Lyads/dh4;

    iput-object p2, p0, Lyads/bb;->b:Lyads/g00;

    iput-object p3, p0, Lyads/bb;->c:Lyads/ot3;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/ak;)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 36
    iget-object p0, p2, Lyads/ak;->a:Ljava/lang/String;

    .line 37
    invoke-static {p0}, Lyads/bh6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/ak;Lyads/f00;)V
    .locals 8

    iget-object v0, p1, Lyads/ak;->d:Lyads/ot3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/bb;->c:Lyads/ot3;

    :cond_0
    iget-object v1, p0, Lyads/bb;->b:Lyads/g00;

    iget-object v5, p0, Lyads/bb;->a:Lyads/dh4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p1, Lyads/ak;->e:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    new-instance v2, Lyads/h00;

    iget-object v4, v1, Lyads/g00;->a:Lyads/a4;

    iget-object v6, v1, Lyads/g00;->b:Lyads/l65;

    iget-object v7, v1, Lyads/g00;->c:Lyads/we3;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lyads/h00;-><init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/we3;)V

    invoke-interface {p2, v0, v2}, Lyads/f00;->a(Lyads/ot3;Lyads/h00;)V

    :cond_1
    return-void
.end method

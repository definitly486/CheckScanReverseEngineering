.class public final Lyads/ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vf6;


# instance fields
.field public final a:Lyads/dh4;

.field public final b:Lyads/g00;


# direct methods
.method public constructor <init>(Lyads/dh4;Lyads/g00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ta;->a:Lyads/dh4;

    iput-object p2, p0, Lyads/ta;->b:Lyads/g00;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/ak;)V
    .locals 0

    .line 31
    return-void
.end method

.method public final a(Lyads/ak;Lyads/f00;)V
    .locals 8

    iget-object v0, p1, Lyads/ak;->d:Lyads/ot3;

    iget-object v1, p0, Lyads/ta;->b:Lyads/g00;

    iget-object v5, p0, Lyads/ta;->a:Lyads/dh4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p1, Lyads/ak;->e:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Lyads/h00;

    iget-object v4, v1, Lyads/g00;->a:Lyads/a4;

    iget-object v6, v1, Lyads/g00;->b:Lyads/l65;

    iget-object v7, v1, Lyads/g00;->c:Lyads/we3;

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lyads/h00;-><init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/we3;)V

    invoke-interface {p2, v0, v2}, Lyads/f00;->a(Lyads/ot3;Lyads/h00;)V

    :cond_0
    return-void
.end method

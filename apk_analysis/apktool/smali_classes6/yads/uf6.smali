.class public final Lyads/uf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/f00;


# instance fields
.field public final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uf6;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ot3;Lyads/h00;)V
    .locals 8

    iget-object v0, p0, Lyads/uf6;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p2, Lyads/h00;->c:Lyads/dh4;

    iget-object v1, v4, Lyads/dh4;->a:Lyads/i00;

    iget-object v2, p2, Lyads/h00;->a:Lyads/ak;

    iget-object v3, p2, Lyads/h00;->b:Lyads/a4;

    iget-object v5, p2, Lyads/h00;->d:Lyads/l65;

    iget-object v7, p2, Lyads/h00;->e:Lyads/we3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/kf4;

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lyads/kf4;-><init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/ot3;Lyads/tz2;)V

    new-instance p1, Lyads/bh4;

    invoke-direct {p1, v0, v1}, Lyads/bh4;-><init>(Landroid/content/Context;Lyads/kf4;)V

    iget-object p2, p0, Lyads/uf6;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lyads/uf6;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

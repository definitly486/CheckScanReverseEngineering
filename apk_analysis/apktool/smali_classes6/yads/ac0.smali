.class public final Lyads/ac0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/ot3;

.field public final c:Lyads/h16;

.field public final d:Lyads/q84;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/ot3;)V
    .locals 1

    new-instance v0, Lyads/ea;

    invoke-direct {v0, p1, p2, p3}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    new-instance p1, Lyads/h16;

    invoke-direct {p1, v0, p2, p4}, Lyads/h16;-><init>(Lyads/ea;Lyads/e4;Lyads/d9;)V

    check-cast p3, Lyads/do6;

    iget-object p3, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p3, p3}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ac0;->a:Lyads/e4;

    iput-object p5, p0, Lyads/ac0;->b:Lyads/ot3;

    iput-object p1, p0, Lyads/ac0;->c:Lyads/h16;

    iput-object p3, p0, Lyads/ac0;->d:Lyads/q84;

    return-void
.end method

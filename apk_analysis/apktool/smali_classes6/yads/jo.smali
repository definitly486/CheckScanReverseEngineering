.class public final Lyads/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/fo1;

.field public final b:Lyads/e4;

.field public final c:Lyads/bf5;

.field public final d:Lyads/mn1;

.field public final e:Lyads/d81;

.field public final f:Lyads/pr3;


# direct methods
.method public constructor <init>(Lyads/fo1;Lyads/e4;Lyads/bf5;)V
    .locals 3

    new-instance v0, Lyads/mn1;

    invoke-direct {v0}, Lyads/mn1;-><init>()V

    new-instance v1, Lyads/d81;

    move-object v2, p3

    check-cast v2, Lyads/do6;

    iget-object v2, v2, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v2, v2}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v2

    invoke-direct {v1, v2}, Lyads/d81;-><init>(Lyads/q84;)V

    new-instance v2, Lyads/pr3;

    invoke-direct {v2}, Lyads/pr3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jo;->a:Lyads/fo1;

    iput-object p2, p0, Lyads/jo;->b:Lyads/e4;

    iput-object p3, p0, Lyads/jo;->c:Lyads/bf5;

    iput-object v0, p0, Lyads/jo;->d:Lyads/mn1;

    iput-object v1, p0, Lyads/jo;->e:Lyads/d81;

    iput-object v2, p0, Lyads/jo;->f:Lyads/pr3;

    return-void
.end method

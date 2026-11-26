.class public final Lyads/fe6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/cb6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p3, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p3}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    new-instance p3, Lyads/cb6;

    invoke-direct {p3, p2, p4}, Lyads/cb6;-><init>(Lyads/e4;Lyads/d9;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fe6;->a:Lyads/q84;

    iput-object p3, p0, Lyads/fe6;->b:Lyads/cb6;

    return-void
.end method

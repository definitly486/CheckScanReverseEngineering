.class public final Lyads/kr2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/sk;

.field public final c:Lyads/q84;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/n5;Lyads/n70;Lyads/d9;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyads/sk;

    invoke-direct {v0, p3, p4, p6}, Lyads/sk;-><init>(Lyads/n5;Lyads/n70;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lyads/do6;

    new-instance p3, Lyads/lm6;

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {p3, p2}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p3}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyads/kr2;->a:Lyads/d9;

    iput-object v0, p0, Lyads/kr2;->b:Lyads/sk;

    iput-object p1, p0, Lyads/kr2;->c:Lyads/q84;

    return-void
.end method

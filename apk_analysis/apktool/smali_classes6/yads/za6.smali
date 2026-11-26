.class public final Lyads/za6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cb6;

.field public final b:Lyads/q84;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/cb6;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p2}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/za6;->a:Lyads/cb6;

    iput-object p1, p0, Lyads/za6;->b:Lyads/q84;

    return-void
.end method

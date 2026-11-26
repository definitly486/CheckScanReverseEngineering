.class public final Lyads/j24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/k24;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V
    .locals 1

    new-instance v0, Lyads/k24;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lyads/k24;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/j24;->a:Lyads/e4;

    iput-object v0, p0, Lyads/j24;->b:Lyads/k24;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/j24;->c:Z

    return-void
.end method

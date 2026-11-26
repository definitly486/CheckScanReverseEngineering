.class public final Lyads/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/bm;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lyads/cm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/dm;->a:Landroid/content/Context;

    new-instance p1, Lyads/bm;

    invoke-direct {p1, p0, p2, p3}, Lyads/bm;-><init>(Lyads/dm;Landroid/os/Handler;Lyads/cm;)V

    iput-object p1, p0, Lyads/dm;->b:Lyads/bm;

    return-void
.end method

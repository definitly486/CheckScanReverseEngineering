.class public final Lyads/a66;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/m96;

.field public final b:Lyads/z56;

.field public final c:Lyads/b66;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lyads/m96;

    invoke-direct {v0}, Lyads/m96;-><init>()V

    new-instance v1, Lyads/z56;

    invoke-direct {v1}, Lyads/z56;-><init>()V

    new-instance v2, Lyads/b66;

    invoke-direct {v2}, Lyads/b66;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/a66;->a:Lyads/m96;

    iput-object v1, p0, Lyads/a66;->b:Lyads/z56;

    iput-object v2, p0, Lyads/a66;->c:Lyads/b66;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/a66;->d:Landroid/content/Context;

    return-void
.end method

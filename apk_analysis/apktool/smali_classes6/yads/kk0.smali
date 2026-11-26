.class public final Lyads/kk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/vc0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/vc0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/dl0;

    invoke-direct {v0}, Lyads/dl0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/kk0;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/kk0;->b:Lyads/vc0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/cf5;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/kk0;->a:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lyads/kk0;->b:Lyads/vc0;

    return-void
.end method


# virtual methods
.method public final a()Lyads/wc0;
    .locals 2

    new-instance v0, Lyads/lk0;

    iget-object v1, p0, Lyads/kk0;->a:Landroid/content/Context;

    iget-object p0, p0, Lyads/kk0;->b:Lyads/vc0;

    invoke-interface {p0}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/lk0;-><init>(Landroid/content/Context;Lyads/wc0;)V

    return-object v0
.end method

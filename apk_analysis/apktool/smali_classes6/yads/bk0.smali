.class public final Lyads/bk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut4;


# instance fields
.field public final a:Lyads/ph6;

.field public final b:Lyads/jd0;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/ph6;Lyads/jd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/bk0;->a:Lyads/ph6;

    iput-object p3, p0, Lyads/bk0;->b:Lyads/jd0;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/bk0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/bk0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/bk0;->a:Lyads/ph6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lyads/bk0;->b:Lyads/jd0;

    sget-object v0, Lyads/id0;->g:Lyads/id0;

    invoke-virtual {p0, v0}, Lyads/jd0;->a(Lyads/id0;)V

    :cond_0
    return-void
.end method

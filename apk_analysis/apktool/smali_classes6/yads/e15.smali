.class public final Lyads/e15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ut4;


# instance fields
.field public final a:Lyads/gn2;

.field public final b:Lyads/jd0;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/gn2;Lyads/jd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/e15;->a:Lyads/gn2;

    iput-object p3, p0, Lyads/e15;->b:Lyads/jd0;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/e15;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/e15;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/e15;->a:Lyads/gn2;

    invoke-virtual {v1, v0}, Lyads/gn2;->b(Landroid/view/View;)V

    iget-object p0, p0, Lyads/e15;->b:Lyads/jd0;

    sget-object v0, Lyads/id0;->g:Lyads/id0;

    invoke-virtual {p0, v0}, Lyads/jd0;->a(Lyads/id0;)V

    :cond_0
    return-void
.end method

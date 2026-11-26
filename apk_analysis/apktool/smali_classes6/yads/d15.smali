.class public final Lyads/d15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tx5;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;Lyads/k10;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lyads/d15;->a:J

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/d15;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    iget-object p3, p0, Lyads/d15;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lyads/d15;->a:J

    sub-long p0, v0, p1

    invoke-static {p3, v0, v1, p0, p1}, Lyads/ze;->a(Landroid/widget/ProgressBar;JJ)V

    :cond_0
    return-void
.end method

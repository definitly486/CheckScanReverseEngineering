.class public final Lyads/jk5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tp0;

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lyads/tp0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jk5;->a:Lyads/tp0;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lyads/jk5;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

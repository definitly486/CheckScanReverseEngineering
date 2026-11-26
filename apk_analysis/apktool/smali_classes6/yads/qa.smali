.class public final Lyads/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yi4;


# instance fields
.field public final a:Lyads/sz2;


# direct methods
.method public constructor <init>(Lyads/sz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qa;->a:Lyads/sz2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/we3;)V
    .locals 2

    iget-object p0, p0, Lyads/qa;->a:Lyads/sz2;

    iget-object p0, p0, Lyads/sz2;->a:Lyads/e55;

    sget-object v0, Lyads/sz2;->b:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

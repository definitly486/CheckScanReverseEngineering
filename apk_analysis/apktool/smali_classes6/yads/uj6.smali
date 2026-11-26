.class public final Lyads/uj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcy6;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lyads/cd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lyads/uj6;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/uj6;->a:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

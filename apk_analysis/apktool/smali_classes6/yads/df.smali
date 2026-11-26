.class public final Lyads/df;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr22;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lr22;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/df;->a:Lr22;

    iput-object v0, p0, Lyads/df;->b:Landroid/os/Handler;

    return-void
.end method

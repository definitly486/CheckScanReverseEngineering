.class public final Loo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# instance fields
.field public final synthetic a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loo2;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lf18$a;)V
    .locals 2

    new-instance v0, Lno2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lno2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Loo2;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

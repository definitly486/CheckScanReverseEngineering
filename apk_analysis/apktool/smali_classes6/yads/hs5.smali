.class public final Lyads/hs5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/is5;


# direct methods
.method public constructor <init>(Lyads/is5;)V
    .locals 0

    iput-object p1, p0, Lyads/hs5;->a:Lyads/is5;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lyads/is5;)V
    .locals 0

    invoke-virtual {p0}, Lyads/is5;->c()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lyads/hs5;->a:Lyads/is5;

    iget-object p1, p0, Lyads/is5;->b:Landroid/os/Handler;

    new-instance p2, Lom;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lom;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

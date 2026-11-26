.class public final Lyads/mn4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/nn4;


# direct methods
.method public constructor <init>(Lyads/nn4;)V
    .locals 0

    iput-object p1, p0, Lyads/mn4;->a:Lyads/nn4;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lyads/nn4;->b(Landroid/content/Context;)I

    move-result p2

    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lyads/mn4;->a:Lyads/nn4;

    invoke-static {p1, p0}, Lyads/kn4;->a(Landroid/content/Context;Lyads/nn4;)V

    return-void

    :cond_0
    iget-object p0, p0, Lyads/mn4;->a:Lyads/nn4;

    invoke-virtual {p0, p2}, Lyads/nn4;->a(I)V

    return-void
.end method

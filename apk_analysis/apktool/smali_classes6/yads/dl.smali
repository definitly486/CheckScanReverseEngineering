.class public final Lyads/dl;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/fl;


# direct methods
.method public constructor <init>(Lyads/fl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lyads/dl;->a:Lyads/fl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lyads/dl;->a:Lyads/fl;

    invoke-virtual {p0, p1}, Lyads/fl;->a(Landroid/os/Message;)V

    return-void
.end method

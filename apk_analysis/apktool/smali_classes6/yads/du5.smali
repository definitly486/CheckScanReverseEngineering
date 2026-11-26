.class public final Lyads/du5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/x00;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lyads/mq2;)Lyads/gu5;
    .locals 1

    new-instance p0, Lyads/gu5;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p0, v0}, Lyads/gu5;-><init>(Landroid/os/Handler;)V

    return-object p0
.end method

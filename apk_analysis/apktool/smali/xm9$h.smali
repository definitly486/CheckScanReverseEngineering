.class public final Lxm9$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxm9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lxm9;
    .locals 5

    const-class v0, Lxm9$h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxm9;->i:Lxm9;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lxm9;

    invoke-direct {v1, p0}, Lxm9;-><init>(Landroid/content/Context;)V

    sput-object v1, Lxm9;->i:Lxm9;

    iget-object p0, v1, Lxm9;->c:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Low9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SDKInfoNewImplementationTemporary"

    new-instance v3, Luz4;

    invoke-direct {v3}, Luz4;-><init>()V

    invoke-virtual {p0, v3}, Low9;->b(Luz4;)V

    sget-object v4, Lj59;->a:Lj59;

    invoke-virtual {v3}, Luz4;->b()Luz4;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Low9;->c(Ljava/lang/String;Luz4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

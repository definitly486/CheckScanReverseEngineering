.class public final Lwv1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lwv1;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvv1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lwv1;->a:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a()Lwv1;
    .locals 2

    const-class v0, Lwv1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwv1;->b:Lwv1;

    if-nez v1, :cond_0

    new-instance v1, Lwv1;

    invoke-direct {v1}, Lwv1;-><init>()V

    sput-object v1, Lwv1;->b:Lwv1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

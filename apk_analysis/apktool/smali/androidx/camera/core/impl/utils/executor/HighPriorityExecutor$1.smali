.class Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "CameraX-camerax_high_priority"


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor$1;->this$0:Landroidx/camera/core/impl/utils/executor/HighPriorityExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    const-string p1, "CameraX-camerax_high_priority"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p0
.end method

.class public final synthetic Landroidx/media3/common/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/c;->b:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/c;->b:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    invoke-static {p0}, Landroidx/media3/common/util/WakeLockManager;->c(Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;)V

    return-void
.end method

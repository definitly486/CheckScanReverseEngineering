.class public final synthetic Lfi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/WifiLockManager;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/WifiLockManager;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfi9;->b:Landroidx/media3/common/util/WifiLockManager;

    iput-boolean p2, p0, Lfi9;->c:Z

    iput-boolean p3, p0, Lfi9;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lfi9;->c:Z

    iget-boolean v1, p0, Lfi9;->d:Z

    iget-object p0, p0, Lfi9;->b:Landroidx/media3/common/util/WifiLockManager;

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/WifiLockManager;->b(Landroidx/media3/common/util/WifiLockManager;ZZ)V

    return-void
.end method

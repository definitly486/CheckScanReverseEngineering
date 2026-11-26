.class public final synthetic Lgi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/util/WifiLockManager;

.field public final synthetic c:Landroidx/media3/common/util/d;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/WifiLockManager;Landroidx/media3/common/util/d;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgi9;->b:Landroidx/media3/common/util/WifiLockManager;

    iput-object p2, p0, Lgi9;->c:Landroidx/media3/common/util/d;

    iput-boolean p3, p0, Lgi9;->d:Z

    iput-boolean p4, p0, Lgi9;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lgi9;->d:Z

    iget-boolean v1, p0, Lgi9;->e:Z

    iget-object v2, p0, Lgi9;->b:Landroidx/media3/common/util/WifiLockManager;

    iget-object p0, p0, Lgi9;->c:Landroidx/media3/common/util/d;

    invoke-static {v2, p0, v0, v1}, Landroidx/media3/common/util/WifiLockManager;->c(Landroidx/media3/common/util/WifiLockManager;Landroidx/media3/common/util/d;ZZ)V

    return-void
.end method

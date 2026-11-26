.class public final synthetic Lw6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Landroidx/camera/camera2/pipe/compat/ActiveCamera;


# direct methods
.method public synthetic constructor <init>(Lnl3;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw6;->b:Lnl3;

    iput-object p2, p0, Lw6;->c:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw6;->b:Lnl3;

    iget-object p0, p0, Lw6;->c:Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->a(Lnl3;Landroidx/camera/camera2/pipe/compat/ActiveCamera;)Lj59;

    move-result-object p0

    return-object p0
.end method

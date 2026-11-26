.class public final synthetic Landroidx/window/embedding/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/window/embedding/OverlayController;

.field public final synthetic c:Landroidx/window/embedding/h;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/OverlayController;Landroidx/window/embedding/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/i;->b:Landroidx/window/embedding/OverlayController;

    iput-object p2, p0, Landroidx/window/embedding/i;->c:Landroidx/window/embedding/h;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/window/embedding/i;->b:Landroidx/window/embedding/OverlayController;

    iget-object p0, p0, Landroidx/window/embedding/i;->c:Landroidx/window/embedding/h;

    invoke-static {v0, p0}, Landroidx/window/embedding/OverlayController$overlayInfo$1;->i(Landroidx/window/embedding/OverlayController;Landroidx/window/embedding/h;)Lj59;

    move-result-object p0

    return-object p0
.end method

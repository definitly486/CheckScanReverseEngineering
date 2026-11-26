.class public final synthetic Landroidx/window/layout/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/window/layout/WindowInfoTrackerImpl;

.field public final synthetic c:Landroidx/window/layout/c;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroidx/window/layout/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/d;->b:Landroidx/window/layout/WindowInfoTrackerImpl;

    iput-object p2, p0, Landroidx/window/layout/d;->c:Landroidx/window/layout/c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/d;->b:Landroidx/window/layout/WindowInfoTrackerImpl;

    iget-object p0, p0, Landroidx/window/layout/d;->c:Landroidx/window/layout/c;

    invoke-static {v0, p0}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$2;->g(Landroidx/window/layout/WindowInfoTrackerImpl;Landroidx/window/layout/c;)Lj59;

    move-result-object p0

    return-object p0
.end method

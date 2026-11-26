.class public final synthetic Landroidx/window/embedding/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic b:Lug6;


# direct methods
.method public synthetic constructor <init>(Lug6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/h;->b:Lug6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/window/embedding/h;->b:Lug6;

    check-cast p1, Landroidx/window/embedding/OverlayInfo;

    invoke-static {p0, p1}, Landroidx/window/embedding/OverlayController$overlayInfo$1;->g(Lug6;Landroidx/window/embedding/OverlayInfo;)V

    return-void
.end method

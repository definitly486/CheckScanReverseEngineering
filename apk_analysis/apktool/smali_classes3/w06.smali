.class public final synthetic Lw06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/reflection/Consumer2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/window/embedding/OverlayControllerImpl;

.field public final synthetic d:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw06;->b:Ljava/lang/String;

    iput-object p2, p0, Lw06;->c:Landroidx/window/embedding/OverlayControllerImpl;

    iput-object p3, p0, Lw06;->d:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lw06;->b:Ljava/lang/String;

    iget-object v1, p0, Lw06;->c:Landroidx/window/embedding/OverlayControllerImpl;

    iget-object p0, p0, Lw06;->d:Landroidx/core/util/Consumer;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->a(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;Ljava/util/List;)V

    return-void
.end method

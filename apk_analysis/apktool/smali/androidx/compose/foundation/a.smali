.class public final synthetic Landroidx/compose/foundation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Landroidx/compose/foundation/AndroidExternalSurfaceState;


# direct methods
.method public synthetic constructor <init>(Lnl3;Landroidx/compose/foundation/AndroidExternalSurfaceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/a;->b:Lnl3;

    iput-object p2, p0, Landroidx/compose/foundation/a;->c:Landroidx/compose/foundation/AndroidExternalSurfaceState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/a;->c:Landroidx/compose/foundation/AndroidExternalSurfaceState;

    check-cast p1, Landroid/content/Context;

    iget-object p0, p0, Landroidx/compose/foundation/a;->b:Lnl3;

    invoke-static {p0, v0, p1}, Landroidx/compose/foundation/AndroidExternalSurface_androidKt;->b(Lnl3;Landroidx/compose/foundation/AndroidExternalSurfaceState;Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

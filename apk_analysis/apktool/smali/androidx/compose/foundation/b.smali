.class public final synthetic Landroidx/compose/foundation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Z

.field public final synthetic f:[F


# direct methods
.method public synthetic constructor <init>(JLandroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;Lnl3;Z[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/b;->b:J

    iput-object p3, p0, Landroidx/compose/foundation/b;->c:Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;

    iput-object p4, p0, Landroidx/compose/foundation/b;->d:Lnl3;

    iput-boolean p5, p0, Landroidx/compose/foundation/b;->e:Z

    iput-object p6, p0, Landroidx/compose/foundation/b;->f:[F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Landroidx/compose/foundation/b;->f:[F

    move-object v6, p1

    check-cast v6, Landroid/view/TextureView;

    iget-wide v0, p0, Landroidx/compose/foundation/b;->b:J

    iget-object v2, p0, Landroidx/compose/foundation/b;->c:Landroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;

    iget-object v3, p0, Landroidx/compose/foundation/b;->d:Lnl3;

    iget-boolean v4, p0, Landroidx/compose/foundation/b;->e:Z

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/AndroidExternalSurface_androidKt;->h(JLandroidx/compose/foundation/AndroidEmbeddedExternalSurfaceState;Lnl3;Z[FLandroid/view/TextureView;)Lj59;

    move-result-object p0

    return-object p0
.end method

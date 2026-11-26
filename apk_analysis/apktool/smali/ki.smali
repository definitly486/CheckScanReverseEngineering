.class public final synthetic Lki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(ZZIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p4, p0, Lki;->b:J

    iput-boolean p1, p0, Lki;->c:Z

    iput p3, p0, Lki;->d:I

    iput-boolean p2, p0, Lki;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-boolean v4, p0, Lki;->e:Z

    move-object v5, p1

    check-cast v5, Landroid/view/SurfaceView;

    iget-wide v0, p0, Lki;->b:J

    iget-boolean v2, p0, Lki;->c:Z

    iget v3, p0, Lki;->d:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/AndroidExternalSurface_androidKt;->g(JZIZLandroid/view/SurfaceView;)Lj59;

    move-result-object p0

    return-object p0
.end method

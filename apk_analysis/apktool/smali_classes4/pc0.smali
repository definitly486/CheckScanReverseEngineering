.class public final Lpc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Luc0;


# direct methods
.method public constructor <init>(Luc0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luc0;

    iput-object v0, p0, Lpc0;->a:Luc0;

    invoke-interface {p1}, Luc0;->b()Landroid/graphics/Rect;

    invoke-interface {p1}, Luc0;->d()[Landroid/graphics/Point;

    return-void
.end method

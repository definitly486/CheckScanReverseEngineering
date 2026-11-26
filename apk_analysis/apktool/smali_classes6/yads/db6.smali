.class public final Lyads/db6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/jf6;

.field public b:Z


# direct methods
.method public constructor <init>(Lyads/eb6;Lyads/jf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/db6;->a:Lyads/jf6;

    invoke-interface {p1}, Lyads/eb6;->getVolume()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/db6;->b:Z

    return-void
.end method

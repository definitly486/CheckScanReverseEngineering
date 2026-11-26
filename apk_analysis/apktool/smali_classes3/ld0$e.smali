.class public final Lld0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lld0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lld0$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lvf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lvf4<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lld0$e;->b:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvf4;

    iput-object p1, p0, Lld0$e;->a:Lvf4;

    return-void
.end method


# virtual methods
.method public final a()Lvf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvf4<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lld0$e;->a:Lvf4;

    return-object p0
.end method

.method public final b()F
    .locals 0

    iget-object p0, p0, Lld0$e;->a:Lvf4;

    invoke-virtual {p0}, Lvf4;->b()F

    move-result p0

    return p0
.end method

.method public final c(F)Z
    .locals 1

    iget v0, p0, Lld0$e;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Lld0$e;->b:F

    const/4 p0, 0x0

    return p0
.end method

.method public final d(F)Z
    .locals 0

    iget-object p0, p0, Lld0$e;->a:Lvf4;

    invoke-virtual {p0}, Lvf4;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e()F
    .locals 0

    iget-object p0, p0, Lld0$e;->a:Lvf4;

    invoke-virtual {p0}, Lvf4;->a()F

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

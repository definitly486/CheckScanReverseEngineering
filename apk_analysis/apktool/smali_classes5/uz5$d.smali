.class public final Luz5$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luz5;->b()La46;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "TT;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Luz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luz5<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Luz5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luz5<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Luz5$d;->f:Luz5;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Luz5$d;->f:Luz5;

    iget-object p0, p0, Luz5;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz5$a;

    iget-object v1, v0, Luz5$a;->a:Ld3;

    iget-object v0, v0, Luz5$a;->b:Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Lhs;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

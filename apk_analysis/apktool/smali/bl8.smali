.class public final Lbl8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lkk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkk2;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkk2;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkk2;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lbl8;->f:Lkk2;

    iput-object p2, p0, Lbl8;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbl8;->f:Lkk2;

    iget-object v0, v0, Lkk2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;

    iget-object p0, p0, Lbl8;->g:Ljava/lang/Object;

    check-cast p0, La64;

    iget-object p0, p0, La64;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity$e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

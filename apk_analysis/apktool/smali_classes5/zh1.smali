.class public final Lzh1;
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;I)V
    .locals 0

    iput-object p1, p0, Lzh1;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    iput p2, p0, Lzh1;->g:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzh1;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object v0

    iget p0, p0, Lzh1;->g:I

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->onDeleteCheque(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.class public final Lea8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lda8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lda8<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/lang/CharSequence;

.field public final synthetic h:I

.field public final synthetic i:Lp07;


# direct methods
.method public constructor <init>(Lda8;Ljava/lang/CharSequence;ILp07;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda8<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lp07;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lea8;->f:Lda8;

    iput-object p2, p0, Lea8;->g:Ljava/lang/CharSequence;

    iput p3, p0, Lea8;->h:I

    iput-object p4, p0, Lea8;->i:Lp07;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lea8;->f:Lda8;

    iget-object v1, v1, Lda8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lea8;->i:Lp07;

    iget v1, v1, Lp07;->b:I

    iget-object v2, p0, Lea8;->g:Ljava/lang/CharSequence;

    iget p0, p0, Lea8;->h:I

    invoke-interface {v2, p0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

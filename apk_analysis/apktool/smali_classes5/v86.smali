.class public final Lv86;
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
.field public final synthetic f:Lw86;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw86<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/lang/CharSequence;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Lw86;Ljava/lang/CharSequence;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw86<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lv86;->f:Lw86;

    iput-object p2, p0, Lv86;->g:Ljava/lang/CharSequence;

    iput p3, p0, Lv86;->h:I

    iput p4, p0, Lv86;->i:I

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

    iget-object v1, p0, Lv86;->f:Lw86;

    iget-object v1, v1, Lw86;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lv86;->i:I

    iget v2, p0, Lv86;->h:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lv86;->g:Ljava/lang/CharSequence;

    invoke-interface {p0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

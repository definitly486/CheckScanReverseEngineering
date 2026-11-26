.class public final Ljx7;
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
.field public final synthetic f:Lkx7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkx7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:C


# direct methods
.method public constructor <init>(Lkx7;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkx7<",
            "Ljava/lang/Object;",
            ">;C)V"
        }
    .end annotation

    iput-object p1, p0, Ljx7;->f:Lkx7;

    iput-char p2, p0, Ljx7;->g:C

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljx7;->f:Lkx7;

    iget-object v1, v1, Lkx7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Ljx7;->g:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

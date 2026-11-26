.class public abstract Lf57;
.super Le57;
.source "SourceFile"

# interfaces
.implements Lnm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le57;",
        "Lnm3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lf57;-><init>(ILe02;)V

    return-void
.end method

.method public constructor <init>(ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Le57;-><init>(Le02;)V

    iput p1, p0, Lf57;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    iget p0, p0, Lf57;->arity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcd0;->getCompletion()Le02;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lx07;->a:La17;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, La17;->a(Lnm3;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcd0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

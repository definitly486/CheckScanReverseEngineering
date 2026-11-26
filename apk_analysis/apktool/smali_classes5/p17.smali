.class public final Lp17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo17;


# instance fields
.field public final a:Ln17;


# direct methods
.method public constructor <init>(Ln17;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp17;->a:Ln17;

    return-void
.end method


# virtual methods
.method public final a()Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ll17;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lp17;->a:Ln17;

    invoke-interface {p0}, Ln17;->a()Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ldu4;I)Lmz7;
    .locals 1

    new-instance v0, Lm17;

    invoke-direct {v0, p2, p1}, Lm17;-><init>(Ldu4;Ljava/lang/String;)V

    const-string p1, "ru_RU"

    iget-object p0, p0, Lp17;->a:Ln17;

    const/4 p2, 0x0

    invoke-interface {p0, v0, p3, p2, p1}, Ln17;->b(Lm17;IILjava/lang/String;)Lmz7;

    move-result-object p0

    return-object p0
.end method

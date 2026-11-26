.class public final Lyx0;
.super Lwu1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwu1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lvi3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvi3<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:La46;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La46<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lwu1;-><init>(Ljava/util/ArrayList;)V

    invoke-super {p0}, Lwu1;->a()Lvi3;

    move-result-object p1

    iput-object p1, p0, Lyx0;->b:Lvi3;

    invoke-super {p0}, Lwu1;->b()La46;

    move-result-object p1

    iput-object p1, p0, Lyx0;->c:La46;

    return-void
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lyx0;->b:Lvi3;

    return-object p0
.end method

.method public final b()La46;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lyx0;->c:La46;

    return-object p0
.end method

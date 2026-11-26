.class public final Lcom/google/common/collect/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/o$b;->b:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/collect/o$b;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/o$a;

    iget-object v1, p0, Lcom/google/common/collect/o$b;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/o$a;-><init>(Ljava/util/Comparator;)V

    iget-object p0, p0, Lcom/google/common/collect/o$b;->c:[Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/i$a;->d([Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/o$a;->i()Lcom/google/common/collect/a0;

    move-result-object p0

    return-object p0
.end method

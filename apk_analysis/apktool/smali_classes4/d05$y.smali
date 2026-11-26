.class public final Ld05$y;
.super Ld05$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld05$m<",
        "TK;TV;",
        "Ld05$x<",
        "TK;TV;>;",
        "Ld05$y<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final j:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld05;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld05<",
            "TK;TV;",
            "Ld05$x<",
            "TK;TV;>;",
            "Ld05$y<",
            "TK;TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ld05$m;-><init>(Ld05;I)V

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Ld05$y;->i:Ljava/lang/ref/ReferenceQueue;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Ld05$y;->j:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    :goto_0
    iget-object v0, p0, Ld05$y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ld05$y;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Ld05$m;->a(Ljava/lang/ref/ReferenceQueue;)V

    iget-object v0, p0, Ld05$y;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Ld05$m;->b(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public final n()Ld05$m;
    .locals 0

    return-object p0
.end method

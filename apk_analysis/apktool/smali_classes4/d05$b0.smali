.class public final Ld05$b0;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Ld05$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Ld05$i<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;",
        "Ld05$a0<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Ld05$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ld05$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;TE;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Ld05$b0;->a:Ld05$i;

    return-void
.end method


# virtual methods
.method public final a()Ld05$i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Ld05$b0;->a:Ld05$i;

    return-object p0
.end method

.method public final b(Ljava/lang/ref/ReferenceQueue;Ld05$z;)Ld05$a0;
    .locals 1

    new-instance v0, Ld05$b0;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Ld05$b0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ld05$i;)V

    return-object v0
.end method

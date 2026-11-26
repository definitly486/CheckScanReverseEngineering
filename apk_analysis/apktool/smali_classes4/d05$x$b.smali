.class public final Ld05$x$b;
.super Ld05$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld05$x<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final c:Ld05$x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$x<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILd05$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Ld05$x<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ld05$x;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    iput-object p4, p0, Ld05$x$b;->c:Ld05$x;

    return-void
.end method


# virtual methods
.method public final getNext()Ld05$i;
    .locals 0

    iget-object p0, p0, Ld05$x$b;->c:Ld05$x;

    return-object p0
.end method

.class public final Ld05$v$b;
.super Ld05$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$v;
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
        "Ld05$v<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final c:Ld05$v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$v<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILd05$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Ld05$v<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ld05$v;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;I)V

    iput-object p4, p0, Ld05$v$b;->c:Ld05$v;

    return-void
.end method


# virtual methods
.method public final getNext()Ld05$i;
    .locals 0

    iget-object p0, p0, Ld05$v$b;->c:Ld05$v;

    return-object p0
.end method

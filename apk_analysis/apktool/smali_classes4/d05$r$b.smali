.class public final Ld05$r$b;
.super Ld05$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$r;
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
        "Ld05$r<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final d:Ld05$r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$r<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILd05$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ld05$r<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ld05$r;-><init>(Ljava/lang/Object;I)V

    iput-object p3, p0, Ld05$r$b;->d:Ld05$r;

    return-void
.end method


# virtual methods
.method public final getNext()Ld05$i;
    .locals 0

    iget-object p0, p0, Ld05$r$b;->d:Ld05$r;

    return-object p0
.end method

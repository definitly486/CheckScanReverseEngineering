.class public final Ld05$p$b;
.super Ld05$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05$p;
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
        "Ld05$p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final d:Ld05$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$p<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILd05$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ld05$p<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ld05$p;-><init>(Ljava/lang/Object;I)V

    iput-object p3, p0, Ld05$p$b;->d:Ld05$p;

    return-void
.end method


# virtual methods
.method public final getNext()Ld05$i;
    .locals 0

    iget-object p0, p0, Ld05$p$b;->d:Ld05$p;

    return-object p0
.end method

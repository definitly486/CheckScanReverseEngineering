.class public Ld05$r;
.super Ld05$c;
.source "SourceFile"

# interfaces
.implements Ld05$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld05$r$a;,
        Ld05$r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ld05$c<",
        "TK;TV;",
        "Ld05$r<",
        "TK;TV;>;>;",
        "Ld05$z<",
        "TK;TV;",
        "Ld05$r<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile c:Ld05$a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$a0<",
            "TK;TV;",
            "Ld05$r<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ld05$c;-><init>(Ljava/lang/Object;I)V

    sget-object p1, Ld05;->k:Ld05$a;

    iput-object p1, p0, Ld05$r;->c:Ld05$a0;

    return-void
.end method


# virtual methods
.method public final a()Ld05$a0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld05$a0<",
            "TK;TV;",
            "Ld05$r<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object p0, p0, Ld05$r;->c:Ld05$a0;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object p0, p0, Ld05$r;->c:Ld05$a0;

    invoke-interface {p0}, Ld05$a0;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

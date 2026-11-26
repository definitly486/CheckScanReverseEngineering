.class public interface abstract Lwm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhd3<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static synthetic d(Lwm3;Lo22;ILcu0;I)Lhd3;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lgx2;->b:Lgx2;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 p2, -0x3

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcu0;->SUSPEND:Lcu0;

    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lwm3;->c(Lo22;ILcu0;)Lhd3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c(Lo22;ILcu0;)Lhd3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo22;",
            "I",
            "Lcu0;",
            ")",
            "Lhd3<",
            "TT;>;"
        }
    .end annotation
.end method

.class public final Lfy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lys7;
.implements Lhd3;
.implements Lwm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lys7<",
        "TT;>;",
        "Lhd3;",
        "Lwm3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lys7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lys7<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final job:Lmb4;


# direct methods
.method public constructor <init>(Lvg5;Ls68;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfy6;->b:Lys7;

    iput-object p2, p0, Lfy6;->job:Lmb4;

    return-void
.end method


# virtual methods
.method public final c(Lo22;ILcu0;)Lhd3;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lbt7;->d(Lys7;Lo22;ILcu0;)Lhd3;

    move-result-object p0

    return-object p0
.end method

.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid3<",
            "-TT;>;",
            "Le02<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lfy6;->b:Lys7;

    invoke-interface {p0, p1, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

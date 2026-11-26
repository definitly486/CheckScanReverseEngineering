.class public final Lgy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly68;
.implements Lhd3;
.implements Lwm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly68<",
        "TT;>;",
        "Lhd3;",
        "Lwm3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final job:Lmb4;


# direct methods
.method public constructor <init>(Lxg5;Ls68;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgy6;->b:Ly68;

    iput-object p2, p0, Lgy6;->job:Lmb4;

    return-void
.end method


# virtual methods
.method public final c(Lo22;ILcu0;)Lhd3;
    .locals 1
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

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, Lcu0;->DROP_OLDEST:Lcu0;

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lbt7;->d(Lys7;Lo22;ILcu0;)Lhd3;

    move-result-object p0

    :goto_1
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

    iget-object p0, p0, Lgy6;->b:Ly68;

    invoke-interface {p0, p1, p2}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lgy6;->b:Ly68;

    invoke-interface {p0}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

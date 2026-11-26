.class public final Lp61$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp61;-><init>(Lo17;Lwk7;Ljf6;Lhu4;Lon2;Lqe;Lcf1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ltq5<",
        "Ldu4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lp61;


# direct methods
.method public constructor <init>(Lp61;)V
    .locals 0

    iput-object p1, p0, Lp61$b;->f:Lp61;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp61$b;->f:Lp61;

    iget-object p0, p0, Lp61;->d:Lhu4;

    invoke-interface {p0}, Lhu4;->a()Lhi0;

    move-result-object p0

    return-object p0
.end method

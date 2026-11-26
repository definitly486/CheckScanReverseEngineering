.class public final Lpa5$a;
.super Lyi3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lyi3$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lpa5;


# direct methods
.method public constructor <init>(Lpa5;Lrl1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpa5$a;->b:Lpa5;

    invoke-direct {p0, p2}, Lyi3$a;-><init>(Lrl1;)V

    return-void
.end method


# virtual methods
.method public final e(Lrl1$a;Lla5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;",
            "Lla5;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lpa5$a;->b:Lpa5;

    iget-object v0, v0, Lpa5;->a:Lla5;

    invoke-virtual {p2, v0}, Lla5;->d(Lla5;)V

    iget-object p0, p0, Lyi3$a;->a:Lrl1;

    invoke-virtual {p0, p1, p2}, Lrl1;->e(Lrl1$a;Lla5;)V

    return-void
.end method

.class public abstract Lyi3$a;
.super Lyi3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lyi3<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lrl1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrl1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lrl1;-><init>()V

    iput-object p1, p0, Lyi3$a;->a:Lrl1;

    return-void
.end method


# virtual methods
.method public final f()Lrl1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object p0, p0, Lyi3$a;->a:Lrl1;

    return-object p0
.end method

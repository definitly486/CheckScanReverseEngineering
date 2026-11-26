.class public final Lb85$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxl3<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb85;


# direct methods
.method public constructor <init>(Lb85;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb85$a;->b:Lb85;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lb85$a;->b:Lb85;

    iget-object p0, p0, Lb85;->c:Lrm3$a;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrm3$a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The zipper returned a null value"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
